package com.document.controller;


import com.document.entity.Result;
import com.document.entity.UserInfo;
import com.document.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
@Controller
@RequestMapping("/user")
public class UserInfoController {


    @Autowired
    private UserInfoService userInfoService;

    /**
     * 用户登录
     *
     * @param user
     * @param request
     * @return
     */
    @RequestMapping(value = "/login")
    @ResponseBody
    public Result login(UserInfo user, HttpServletRequest request) {
        Result result = new Result();
        UserInfo login = userInfoService.login(user);
        if (login != null) {
            request.getSession().setAttribute("userInfo", login);
            result.setData(login);
            result.setSuccessMsg("登录成功");
        } else {
            result.setErrorMsg("登录失败,用户名或密码错误");
        }
        return result;
    }

    /**
     * 修改密码
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/updatePwd")
    @ResponseBody
    public Result updatePwd(HttpServletRequest request, HttpServletResponse response, UserInfo userInfo) throws Exception {
        Result result = new Result();
        UserInfo user = (UserInfo) request.getSession().getAttribute("userInfo");
        userInfo.setId(user.getId());
        if (userInfo.getPassword().equals(user.getPassword())){
            user.setPassword(userInfo.getNewPassword());
            boolean updateById = userInfoService.updateById(user);
            if (updateById){
                result.setSuccessMsg("修改密码成功");
                request.getSession().setAttribute("userInfo",userInfo);
            }else {
             result.setErrorMsg("修改密码失败");
            }
        }else {
            result.setErrorMsg("原密码不正确");
        }
        return result;
    }

    /**
     * 退出登录
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/logout")
    @ResponseBody
    public Result logout(HttpSession session)throws Exception{
        session.invalidate();
        Result result = new Result();
        result.setSuccessMsg("成功");
        return result;
    }


}


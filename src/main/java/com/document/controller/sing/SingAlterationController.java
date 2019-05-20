package com.document.controller.sing;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.BaseEntity;
import com.document.dto.SingAlterationDto;
import com.document.entity.Alteration;
import com.document.entity.Result;
import com.document.entity.SingAlteration;
import com.document.entity.UserInfo;
import com.document.service.AlterationService;
import com.document.service.SingAlterationService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author heylhh
 * @since 2019-05-16
 */
@Controller
@RequestMapping("/document/singAlteration")
public class SingAlterationController {
    @Autowired
    SingAlterationService singAlterationService;

    /**
     * 获取列表
     * @param singAlterationDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result documentList(SingAlterationDto singAlterationDto, BaseEntity baseEntity){
        Result result = new Result();
        Page singlterationList = singAlterationService.singlterationList(singAlterationDto, baseEntity);
        if (singlterationList.getRecords().size()>0){
            result.setData(singlterationList.getRecords());
            result.setCount((int) singlterationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 获取列表
     * @param singAlterationDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/listUser")
    @ResponseBody
    public Result documentListUser(SingAlterationDto singAlterationDto, BaseEntity baseEntity, HttpServletRequest request){
        Result result = new Result();
        UserInfo info = (UserInfo) request.getSession().getAttribute("userInfo");
        singAlterationDto.setUser(String.valueOf(info.getId()));
        Page singlterationList = singAlterationService.singlterationList(singAlterationDto, baseEntity);
        if (singlterationList.getRecords().size()>0){
            result.setData(singlterationList.getRecords());
            result.setCount((int) singlterationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param singAlteration
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(SingAlteration singAlteration, HttpServletRequest request){
        Result result = new Result();
        if (singAlteration.getId() != null && !singAlteration.getId().equals("")){
            //修改
            SingAlteration singAlterationInfo = singAlterationService.selectById(singAlteration.getId());
            BeanUtils.copyProperties(singAlteration,singAlterationInfo);
            boolean b = singAlterationService.updateById(singAlterationInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            UserInfo info = (UserInfo) request.getSession().getAttribute("userInfo");
            singAlteration.setUser(String.valueOf(info.getId()));
            boolean insert = singAlterationService.insert(singAlteration);
            if (insert){
                result.setSuccessMsg("新增成功");
            }else {
                result.setSuccessMsg("新增失败");
            }
        }
        return result;
    }

    /**
     * 删除
     * @param singAlterationId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String singAlterationId){
        SingAlteration singAlteration = new SingAlteration();
        singAlteration.setId(Integer.valueOf(singAlterationId));
        singAlteration.setStatus(1);
        Result result = new Result();
        boolean b = singAlterationService.updateById(singAlteration);
        if (b){
            result.setSuccessMsg("删除成功");
        }else {
            result.setErrorMsg("删除失败");
        }
        return result;
    }

    /**
     * 审核
     * @param id
     * @param type
     * @return
     */
    @RequestMapping(value = "/examine")
    @ResponseBody
    public Result examine(String id,String type){
        SingAlteration singAlteration = new SingAlteration();
        singAlteration.setId(Integer.valueOf(id));
        singAlteration.setType(Integer.valueOf(type));
        Result result = new Result();
        boolean b = singAlterationService.updateById(singAlteration);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }
}


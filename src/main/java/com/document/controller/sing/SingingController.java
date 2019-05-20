package com.document.controller.sing;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SingingDto;
import com.document.dto.SituationDto;
import com.document.entity.Result;
import com.document.entity.Singing;
import com.document.entity.Situation;
import com.document.entity.UserInfo;
import com.document.service.SingingService;
import com.document.service.SituationService;
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
@RequestMapping("/document/singing")
public class SingingController {

    @Autowired
    SingingService singingService;


    /**
     * 获取单位基本情况列表
     * @param singingDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result situationList(SingingDto singingDto, BaseEntity baseEntity){
        Result result = new Result();
        Page singingList = singingService.singingList(singingDto, baseEntity);
        if (singingList.getRecords().size()>0){
            result.setData(singingList.getRecords());
            result.setCount((int) singingList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 获取单位基本情况列表
     * @param singingDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/listUser")
    @ResponseBody
    public Result situationListByUser(SingingDto singingDto, BaseEntity baseEntity,HttpServletRequest request){
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        Result result = new Result();
        singingDto.setUser(String.valueOf(userInfo.getId()));
        Page singingList = singingService.singingList(singingDto, baseEntity);
        if (singingList.getRecords().size()>0){
            result.setData(singingList.getRecords());
            result.setCount((int) singingList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改单位基本情况
     * @param singing
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Singing singing, HttpServletRequest request){
        Result result = new Result();
        if (singing.getId() != null && !singing.getId().equals("")){
            //修改
            Singing singingInfo = singingService.selectById(singing.getId());
            BeanUtils.copyProperties(singing,singingInfo);
            boolean b = singingService.updateById(singingInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            UserInfo info = (UserInfo) request.getSession().getAttribute("userInfo");
            singing.setUser(String.valueOf(info.getId()));
            boolean insert = singingService.insert(singing);
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
     * @param singingId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String singingId){
        Singing singing = new Singing();
        singing.setId(Integer.valueOf(singingId));
        singing.setStatus(1);
        Result result = new Result();
        boolean b = singingService.updateById(singing);
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
        Singing situation = new Singing();
        situation.setId(Integer.valueOf(id));
        situation.setType(Integer.valueOf(type));
        Result result = new Result();
        boolean b = singingService.updateById(situation);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }

}


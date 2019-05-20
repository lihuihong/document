package com.document.controller.netba;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.BaseEntity;
import com.document.dto.DocumentDto;
import com.document.entity.Alteration;
import com.document.entity.Document;
import com.document.entity.Result;
import com.document.entity.UserInfo;
import com.document.service.AlterationService;
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
 * @since 2019-05-11
 */
@Controller
@RequestMapping("/document/netba/alteration")
public class AlterationController {

    @Autowired
    AlterationService alterationService;

    /**
     * 获取列表
     * @param alterationDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result documentList(AlterationDto alterationDto, BaseEntity baseEntity){
        Result result = new Result();
        Page alterationList = alterationService.alterationList(alterationDto, baseEntity);
        if (alterationList.getRecords().size()>0){
            result.setData(alterationList.getRecords());
            result.setCount((int) alterationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 获取列表
     * @param alterationDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/listUser")
    @ResponseBody
    public Result listUser(AlterationDto alterationDto, BaseEntity baseEntity, HttpServletRequest request){
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        Result result = new Result();
        alterationDto.setUser(String.valueOf(userInfo.getId()));
        Page alterationList = alterationService.alterationList(alterationDto, baseEntity);
        if (alterationList.getRecords().size()>0){
            result.setData(alterationList.getRecords());
            result.setCount((int) alterationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param alteration
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Alteration alteration, HttpServletRequest request){
        Result result = new Result();
        if (alteration.getId() != null && !alteration.getId().equals("")){
            //修改
            Alteration alterationInfo = alterationService.selectById(alteration.getId());
            BeanUtils.copyProperties(alteration,alterationInfo);
            boolean b = alterationService.updateById(alterationInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
            alteration.setUser(String.valueOf(userInfo.getId()));
            alteration.setTypeInfoId(userInfo.getTypeInfoId());
            boolean insert = alterationService.insert(alteration);
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
     * @param alterationId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String alterationId){
        Alteration alteration = new Alteration();
        alteration.setId(alterationId);
        alteration.setStatus("1");
        Result result = new Result();
        boolean b = alterationService.updateById(alteration);
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
        Alteration alteration = new Alteration();
        alteration.setId(id);
        alteration.setType(type);
        Result result = new Result();
        boolean b = alterationService.updateById(alteration);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }

}


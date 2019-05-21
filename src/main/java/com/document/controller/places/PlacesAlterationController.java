package com.document.controller.places;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PlacesAlterationDto;
import com.document.dto.SingAlterationDto;
import com.document.entity.PlacesAlteration;
import com.document.entity.Result;
import com.document.entity.SingAlteration;
import com.document.entity.UserInfo;
import com.document.service.PlacesAlterationService;
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
 * @since 2019-05-17
 */
@Controller
@RequestMapping("/document/placesAlteration")
public class PlacesAlterationController {

    @Autowired
    PlacesAlterationService placesAlterationService;

    /**
     * 获取列表
     * @param placesAlterationDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result documentList(PlacesAlterationDto placesAlterationDto, BaseEntity baseEntity){
        Result result = new Result();
        Page placesAlterationList = placesAlterationService.placesAlterationList(placesAlterationDto, baseEntity);
        if (placesAlterationList.getRecords().size()>0){
            result.setData(placesAlterationList.getRecords());
            result.setCount((int) placesAlterationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 获取列表
     * @param placesAlterationDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/listUser")
    @ResponseBody
    public Result listUser(PlacesAlterationDto placesAlterationDto, BaseEntity baseEntity, HttpServletRequest request){
        Result result = new Result();
        UserInfo info = (UserInfo) request.getSession().getAttribute("userInfo");
        placesAlterationDto.setUser(String.valueOf(info.getId()));
        Page placesAlterationList = placesAlterationService.placesAlterationList(placesAlterationDto, baseEntity);
        if (placesAlterationList.getRecords().size()>0){
            result.setData(placesAlterationList.getRecords());
            result.setCount((int) placesAlterationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param placesAlteration
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(PlacesAlteration placesAlteration, HttpServletRequest request){
        Result result = new Result();
        if (placesAlteration.getId() != null && !placesAlteration.getId().equals("")){
            //修改
            PlacesAlteration placesAlterationInfo = placesAlterationService.selectById(placesAlteration.getId());
            BeanUtils.copyProperties(placesAlteration,placesAlterationInfo);
            boolean b = placesAlterationService.updateById(placesAlterationInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            UserInfo info = (UserInfo) request.getSession().getAttribute("userInfo");
            placesAlteration.setUser(String.valueOf(info.getId()));
            boolean insert = placesAlterationService.insert(placesAlteration);
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
     * @param placesAlterationId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String placesAlterationId){
        PlacesAlteration placesAlteration = new PlacesAlteration();
        placesAlteration.setId(Integer.valueOf(placesAlterationId));
        placesAlteration.setStatus(1);
        Result result = new Result();
        boolean b = placesAlterationService.updateById(placesAlteration);
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
        PlacesAlteration placesAlteration = new PlacesAlteration();
        placesAlteration.setId(Integer.valueOf(id));
        placesAlteration.setType(Integer.valueOf(type));
        Result result = new Result();
        boolean b = placesAlterationService.updateById(placesAlteration);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }

}


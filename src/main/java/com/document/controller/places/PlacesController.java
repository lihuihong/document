package com.document.controller.places;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PlacesAlterationDto;
import com.document.dto.PlacesDto;
import com.document.entity.Places;
import com.document.entity.PlacesAlteration;
import com.document.entity.Result;
import com.document.entity.UserInfo;
import com.document.service.PlacesAlterationService;
import com.document.service.PlacesService;
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
@RequestMapping("/document/places")
public class PlacesController {

    @Autowired
    PlacesService placesService;

    /**
     * 获取列表
     * @param placesDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result documentList(PlacesDto placesDto, BaseEntity baseEntity){
        Result result = new Result();
        Page placesList = placesService.placesList(placesDto, baseEntity);
        if (placesList.getRecords().size()>0){
            result.setData(placesList.getRecords());
            result.setCount((int) placesList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 获取列表
     * @param placesDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/listUser")
    @ResponseBody
    public Result listUser(PlacesDto placesDto, BaseEntity baseEntity, HttpServletRequest request){
        Result result = new Result();
        UserInfo info = (UserInfo) request.getSession().getAttribute("userInfo");
        placesDto.setUser(String.valueOf(info.getId()));
        Page placesList = placesService.placesList(placesDto, baseEntity);
        if (placesList.getRecords().size()>0){
            result.setData(placesList.getRecords());
            result.setCount((int) placesList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param places
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Places places, HttpServletRequest request){
        Result result = new Result();
        if (places.getId() != null && !places.getId().equals("")){
            //修改
            Places placesInfo = placesService.selectById(places.getId());
            BeanUtils.copyProperties(places,placesInfo);
            boolean b = placesService.updateById(placesInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            //新增
            UserInfo info = (UserInfo) request.getSession().getAttribute("userInfo");
            places.setUser(String.valueOf(info.getId()));
            boolean insert = placesService.insert(places);
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
     * @param placesId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String placesId){
        Places placesAlteration = new Places();
        placesAlteration.setId(Integer.valueOf(placesId));
        placesAlteration.setStatus(1);
        Result result = new Result();
        boolean b = placesService.updateById(placesAlteration);
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
        Places placesAlteration = new Places();
        placesAlteration.setId(Integer.valueOf(id));
        placesAlteration.setType(Integer.valueOf(type));
        Result result = new Result();
        boolean b = placesService.updateById(placesAlteration);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }

}


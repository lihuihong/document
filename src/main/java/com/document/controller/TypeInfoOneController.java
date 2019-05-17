package com.document.controller;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.TypeInfoOneDto;
import com.document.entity.Result;
import com.document.entity.TypeInfoOne;
import com.document.service.TypeInfoOneService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author heylhh
 * @since 2019-05-17
 */
@Controller
@RequestMapping("/document/typeInfoOne")
public class TypeInfoOneController {

    @Autowired
    TypeInfoOneService typeInfoOneService;


    /**
     * 获取列表
     * @param typeInfoOneDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result typeInfoOneList(TypeInfoOneDto typeInfoOneDto, BaseEntity baseEntity){
        Result result = new Result();
        Page typeInfoOneList = typeInfoOneService.typeInfoOneList(typeInfoOneDto, baseEntity);
        if (typeInfoOneList.getRecords().size()>0){
            result.setData(typeInfoOneList.getRecords());
            result.setCount((int) typeInfoOneList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param typeInfoOne
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(TypeInfoOne typeInfoOne){
        Result result = new Result();
        if (typeInfoOne.getId() != null && !typeInfoOne.getId().equals("")){
            //修改
            TypeInfoOne typeInfoOneInfo = typeInfoOneService.selectById(typeInfoOne.getId());
            BeanUtils.copyProperties(typeInfoOne,typeInfoOneInfo);
            boolean b = typeInfoOneService.updateById(typeInfoOneInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            boolean insert = typeInfoOneService.insert(typeInfoOne);
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
     * @param typeInfoOneId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String typeInfoOneId){
        TypeInfoOne typeInfoOne = new TypeInfoOne();
        typeInfoOne.setId(Integer.valueOf(typeInfoOneId));
        typeInfoOne.setStatus("1");
        Result result = new Result();
        boolean b = typeInfoOneService.updateById(typeInfoOne);
        if (b){
            result.setSuccessMsg("删除成功");
        }else {
            result.setErrorMsg("删除失败");
        }
        return result;
    }

}


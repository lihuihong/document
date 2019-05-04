package com.document.controller;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.entity.Result;
import com.document.entity.TypeInfo;
import com.document.service.TypeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
@Controller
@RequestMapping("/typeInfo")
public class TypeInfoController {

    @Autowired
    TypeInfoService typeInfoService;


    /**
     * 获取分类列表
     *
     * @param typeInfo
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/typeList")
    @ResponseBody
    public Result typeList(TypeInfo typeInfo, BaseEntity baseEntity) {
        Result result = new Result();
        Wrapper<TypeInfo> entity = new EntityWrapper<TypeInfo>();
        if (typeInfo.getName() != null) {
            entity.like("name", "%" + typeInfo.getName() + "%");
        }
        if (typeInfo.getId() != null) {
            entity.eq("id", typeInfo.getId());
        }
        entity.eq("status", 0);
        int selectCount = typeInfoService.selectCount(entity);
        if (selectCount > 0) {
            Page<TypeInfo> page = new Page<TypeInfo>(baseEntity.getPage(), baseEntity.getLimit());
            //分页查询
            Page<TypeInfo> typeInfoPage = typeInfoService.selectPage(page, entity);
            if (typeInfoPage != null) {
                result.setData(typeInfoPage.getRecords());
                result.setSuccessMsg("获取分类列表成功");
                result.setCount(selectCount);
            } else {
                result.setErrorMsg("获取分类列表失败");
            }
        } else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改分类
     *
     * @param typeInfo
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(TypeInfo typeInfo) {
        Result result = new Result();
        if (typeInfo.getId() != null && !typeInfo.getId().equals("")) {
            //修改
            TypeInfo typeInfo1 = typeInfoService.selectById(typeInfo.getId());
            typeInfo1.setName(typeInfo.getName());
            boolean b = typeInfoService.updateById(typeInfo1);
            if (b) {
                result.setSuccessMsg("修改成功");
            } else {
                result.setSuccessMsg("修改失败");
            }
        } else {
            //新增
            boolean insert = typeInfoService.insert(typeInfo);
            if (insert) {
                result.setSuccessMsg("新增成功");
            } else {
                result.setSuccessMsg("新增失败");
            }
        }
        return result;
    }

    /**
     * 删除分类
     *
     * @param typeId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String typeId) {
        TypeInfo typeInfo = new TypeInfo();
        typeInfo.setId(typeId);
        typeInfo.setStatus("1");
        Result result = new Result();
        boolean b = typeInfoService.updateById(typeInfo);
        if (b) {
            result.setSuccessMsg("删除成功");
        } else {
            result.setErrorMsg("删除失败");
        }
        return result;
    }


}


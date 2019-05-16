package com.document.controller;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.DocumentDto;
import com.document.dto.PunishmentDto;
import com.document.entity.Document;
import com.document.entity.Punishment;
import com.document.entity.Result;
import com.document.service.DocumentService;
import com.document.service.PunishmentService;
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
 * @since 2019-05-11
 */
@Controller
@RequestMapping("/document/document")
public class DocumentController {

    @Autowired
    DocumentService documentService;

    /**
     * 获取列表
     * @param documentDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result documentList(DocumentDto documentDto, BaseEntity baseEntity){
        Result result = new Result();
        Page documentList = documentService.documentList(documentDto, baseEntity);
        if (documentList.getRecords().size()>0){
            result.setData(documentList.getRecords());
            result.setCount((int) documentList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param document
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Document document){
        Result result = new Result();
        if (document.getId() != null && !document.getId().equals("")){
            //修改
            Document documentInfo = documentService.selectById(document.getId());
            BeanUtils.copyProperties(document,documentInfo);
            boolean b = documentService.updateById(documentInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            boolean insert = documentService.insert(document);
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
     * @param documentId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String documentId){
        Document document = new Document();
        document.setId(documentId);
        document.setStatus("1");
        Result result = new Result();
        boolean b = documentService.updateById(document);
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
        Document document = new Document();
        document.setId(id);
        document.setType(type);
        Result result = new Result();
        boolean b = documentService.updateById(document);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }

}


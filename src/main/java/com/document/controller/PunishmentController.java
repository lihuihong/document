package com.document.controller;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PunishmentDto;
import com.document.dto.RepresentativeDto;
import com.document.entity.Punishment;
import com.document.entity.Representative;
import com.document.entity.Result;
import com.document.entity.Situation;
import com.document.service.PunishmentService;
import com.document.service.RepresentativeService;
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
@RequestMapping("/document/punishment")
public class PunishmentController {

    @Autowired
    PunishmentService punishmentService;

    /**
     * 获取列表
     * @param punishmentDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result punishmentList(PunishmentDto punishmentDto, BaseEntity baseEntity){
        Result result = new Result();
        Page punishmentList = punishmentService.punishmentList(punishmentDto, baseEntity);
        if (punishmentList.getRecords().size()>0){
            result.setData(punishmentList.getRecords());
            result.setCount((int) punishmentList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param punishment
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Punishment punishment){
        Result result = new Result();
        if (punishment.getId() != null && !punishment.getId().equals("")){
            //修改
            Punishment punishmentInfo = punishmentService.selectById(punishment.getId());
            BeanUtils.copyProperties(punishment,punishmentInfo);
            boolean b = punishmentService.updateById(punishmentInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            boolean insert = punishmentService.insert(punishment);
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
     * @param punishmentId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String punishmentId){
        Punishment punishment = new Punishment();
        punishment.setId(punishmentId);
        punishment.setStatus("1");
        Result result = new Result();
        boolean b = punishmentService.updateById(punishment);
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
        Punishment punishment = new Punishment();
        punishment.setId(id);
        punishment.setType(type);
        Result result = new Result();
        boolean b = punishmentService.updateById(punishment);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }

}


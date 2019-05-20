package com.document.controller;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.RepresentativeDto;
import com.document.dto.SituationDto;
import com.document.entity.Representative;
import com.document.entity.Result;
import com.document.entity.Situation;
import com.document.entity.UserInfo;
import com.document.service.RepresentativeService;
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
@RequestMapping("/document/representative")
public class RepresentativeController {

    @Autowired
    RepresentativeService representativeService;

    /**
     * 获取列表
     * @param representativeDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Result situationList(RepresentativeDto representativeDto, BaseEntity baseEntity){
        Result result = new Result();
        Page representativeList = representativeService.representativeList(representativeDto, baseEntity);
        if (representativeList.getRecords().size()>0){
            result.setData(representativeList.getRecords());
            result.setCount((int) representativeList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 获取列表
     * @param representativeDto
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/listUser")
    @ResponseBody
    public Result situationListByUser(RepresentativeDto representativeDto, BaseEntity baseEntity,HttpServletRequest request){
        Result result = new Result();
        representativeDto.setUser(String.valueOf(((UserInfo)request.getSession().getAttribute("userInfo")).getId()));
        Page representativeList = representativeService.representativeList(representativeDto, baseEntity);
        if (representativeList.getRecords().size()>0){
            result.setData(representativeList.getRecords());
            result.setCount((int) representativeList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改信息
     * @param representative
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Representative representative, HttpServletRequest request){
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        Result result = new Result();
        if (representative.getId() != null && !representative.getId().equals("")){
            //修改
            Representative representativeInfo = representativeService.selectById(representative.getId());
            BeanUtils.copyProperties(representative,representativeInfo);
            boolean b = representativeService.updateById(representativeInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            representative.setUser(String.valueOf(userInfo.getId()));
            if (representative.getTypeInfoId() == 0 && representative.getTypeInfoId() == null){
                representative.setTypeInfoId(userInfo.getTypeInfoId());
            }
            boolean insert = representativeService.insert(representative);
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
     * @param representativeId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String representativeId){
        Representative representative = new Representative();
        representative.setId(representativeId);
        representative.setStatus("1");
        Result result = new Result();
        boolean b = representativeService.updateById(representative);
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
        Representative representative = new Representative();
        representative.setId(id);
        representative.setType(type);
        Result result = new Result();
        boolean b = representativeService.updateById(representative);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }

}


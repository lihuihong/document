package com.document.controller.netba;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SituationDto;
import com.document.entity.Representative;
import com.document.entity.Result;
import com.document.entity.Situation;
import com.document.entity.UserInfo;
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
 * @since 2019-05-11
 */
@Controller
@RequestMapping("/document/netba/situation")
public class NetbaSituationController {

    @Autowired
    SituationService situationService;


    /**
     * 获取单位基本情况列表
     * @param situation
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/situationList")
    @ResponseBody
    public Result situationList(SituationDto situation, BaseEntity baseEntity){
        Result result = new Result();
        Page situationList = situationService.situationList(situation, baseEntity);
        if (situationList.getRecords().size()>0){
            result.setData(situationList.getRecords());
            result.setCount((int) situationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 获取单位基本情况列表
     * @param situation
     * @param baseEntity
     * @return
     */
    @RequestMapping(value = "/listUser")
    @ResponseBody
    public Result listUser(SituationDto situation, BaseEntity baseEntity, HttpServletRequest request){
        Result result = new Result();
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        situation.setUser(String.valueOf(userInfo.getId()));
        Page situationList = situationService.situationList(situation, baseEntity);
        if (situationList.getRecords().size()>0){
            result.setData(situationList.getRecords());
            result.setCount((int) situationList.getTotal());
            result.setSuccessMsg("获取数据成功");
        }else {
            result.setErrorMsg("无数据");
        }
        return result;
    }

    /**
     * 新增或者修改单位基本情况
     * @param situation
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Situation situation, HttpServletRequest request){
        UserInfo userInfo = (UserInfo) request.getSession().getAttribute("userInfo");
        Result result = new Result();
        if (situation.getId() != null && !situation.getId().equals("")){
            //修改
            Situation situationInfo = situationService.selectById(situation.getId());
            BeanUtils.copyProperties(situation,situationInfo);
            boolean b = situationService.updateById(situationInfo);
            if (b){
                result.setSuccessMsg("修改成功");
            }else {
                result.setSuccessMsg("修改失败");
            }
        }else {
            //新增
            situation.setUser(String.valueOf(userInfo.getId()));
            boolean insert = situationService.insert(situation);
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
     * @param situationId
     * @return
     */
    @RequestMapping(value = "/del")
    @ResponseBody
    public Result del(String situationId){
        Situation situation = new Situation();
        situation.setId(situationId);
        situation.setStatus("1");
        Result result = new Result();
        boolean b = situationService.updateById(situation);
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
        Situation situation = new Situation();
        situation.setId(id);
        situation.setType(type);
        Result result = new Result();
        boolean b = situationService.updateById(situation);
        if (b){
            result.setSuccessMsg("审核成功");
        }else {
            result.setErrorMsg("审核失败");
        }
        return result;
    }
}


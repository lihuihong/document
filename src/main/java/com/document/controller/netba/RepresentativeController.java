package com.document.controller.netba;


import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.RepresentativeDto;
import com.document.dto.SituationDto;
import com.document.entity.Representative;
import com.document.entity.Result;
import com.document.entity.Situation;
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
@RequestMapping("/document/netba/representative")
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
     * 新增或者修改信息
     * @param representative
     * @return
     */
    @RequestMapping(value = "/saveOrEdit")
    @ResponseBody
    public Result saveOrEdit(Representative representative){
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


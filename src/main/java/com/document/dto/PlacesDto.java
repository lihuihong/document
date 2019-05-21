package com.document.dto;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author heylhh
 * @since 2019-05-17
 */
@Data
public class PlacesDto {
    private static final long serialVersionUID = 1L;

    private Integer id;
    /**
     * 分类id
     */
    private Integer typeInfoId;
    /**
     * 子分类
     */
    private Integer child;
    /**
     * 单位名称
     */
    private String unitName;
    /**
     * 经营地址
     */
    private String businessAddress;
    /**
     * 经营性质
     */
    private String management;
    /**
     * 单位电话
     */
    private String workTelephone;
    /**
     * 经营面积（m2）
     */
    private String operatingArea;
    /**
     * 包厢数量
     */
    private String boxQuantity;
    /**
     * 备案号
     */
    private String performanceArea;
    /**
     * 设备台数
     */
    private String numberEquipment;
    /**
     * 总投资额（万元）
     */
    private String totalInvestment;
    /**
     * 许可证号
     */
    private String licenseKey;
    /**
     * 发证时间
     */
    private String issuingTime;
    /**
     * 发证机关
     */
    private String certificationAuthority;
    /**
     * 年检时间
     */
    private String inspectionTime;
    /**
     * 规章制度
     */
    private String rules;
    /**
     * 从业人员数
     */
    private String numberPeopleEmployed;
    /**
     * 核定人数
     */
    private String authorizedNumber;
    /**
     * 是否删除 0正常 1删除
     */
    private Integer status;
    /**
     * 审核状态 0通过 1未通过 2未审核
     */
    private Integer type;

    private String user;
    private String username;


}

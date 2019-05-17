package com.document.dto;

import lombok.Data;

import java.util.Date;

@Data
public class SituationDto {

    private Integer id;
    /**
     * 分类id
     */
    private Integer typeInfoId;
    private String typeInfoName;
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
     * 服务器台数(音像管理 设备台数)(电影管理 包厢数量)（营业性演出 包厢数量）
     */
    private String numberofServers;
    /**
     * 终端台数(音像管理 不用)（电影管理 设备台数）（营业性演出 设备台数）(印刷企业 设备台数)
     */
    private String terminalNumber;
    /**
     * 网络接入商(音像管理 备案号)（电影管理 备案号）（卫星地面接收 是否境外）
     */
    private String networkAccess;
    /**
     * 从业人员数
     */
    private String peopleEmployed;
    /**
     * 许可证号
     */
    private String licenseKey;
    /**
     * 发证时间
     */
    private String issuingTime;
    private String status;
    private String type;
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
     * 地区(音像管理 不用)（电影管理 核定人数）（营业性演出 核定人数）（ 出版物 出版方式）（卫星地面接收 接收卫星）
     */
    private String address;
    /**
     * 总投资额（万元）
     */
    private String totalInvestment;

    private String ipaddress;
    private String ipnumber;
    private String service;
    private String program;
}

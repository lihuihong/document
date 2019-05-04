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
     * 服务器台数
     */
    private String numberofServers;
    /**
     * 终端台数
     */
    private String terminalNumber;
    /**
     * 网络接入商
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
     * 地区
     */
    private String address;
    /**
     * 总投资额（万元）
     */
    private String totalInvestment;
}

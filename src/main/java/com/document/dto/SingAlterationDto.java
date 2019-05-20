package com.document.dto;

import lombok.Data;

import java.util.Date;

@Data
public class SingAlterationDto {

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
     * 单位名称时间
     */
    private String unitNameTime;
    /**
     * 法定代表人
     */
    private String legalRepresentative;
    /**
     * 法定代表人时间
     */
    private String representativeTime;
    /**
     * 地址
     */
    private String address;
    /**
     * 地址时间
     */
    private String addressTime;
    /**
     * 面积
     */
    private String area;
    /**
     * 面积时间
     */
    private String areaTime;
    /**
     * 包厢数量
     */
    private String boxQuantity;
    /**
     * 包厢数量时间
     */
    private String boxQuantityTime;
    private Integer status;
    private Integer type;
    private String user;
    private String username;
}

package com.document.dto;

import lombok.Data;

import java.util.Date;

@Data
public class PunishmentDto {

    private Integer id;
    /**
     * 分类id
     */
    private Integer typeInfoId;
    private String typeInfoName;
    /**
     * 警告
     */
    private String warning;
    /**
     * 警告时间
     */
    private String warningTime;
    /**
     * 罚款
     */
    private String fine;
    /**
     * 罚款时间
     */
    private String fineTime;
    /**
     * 责令停业整顿
     */
    private String rectify;
    /**
     * 责令停业整顿时间
     */
    private String rectifyTime;
    /**
     * 吊销许可证
     */
    private String revocationPermit;
    /**
     * 吊销许可证时间
     */
    private String revocationPermitTime;
    /**
     * 没收违法所得
     */
    private String confiscationIncome;
    /**
     * 没收违法所得时间
     */
    private String confiscationIncomeTime;
    /**
     * 没收非法财物
     */
    private String confiscationProperty;
    /**
     * 没收非法财物时间
     */
    private String confiscationPropertyTime;

    private String status;
    private String type;
    private String user;
    private String username;
}

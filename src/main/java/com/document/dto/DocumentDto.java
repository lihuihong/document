package com.document.dto;

import lombok.Data;

@Data
public class DocumentDto {

    private Integer id;
    /**
     * 分类id
     */
    private Integer typeInfoId;
    private String typeInfoName;
    /**
     * 消防
     */
    private Integer fireControl;
    /**
     * 环保
     */
    private String environmentalProtection;
    /**
     * 卫生
     */
    private String hygiene;
    /**
     * 工商
     */
    private String businessCircles;
    private String status;
    private String type;

}

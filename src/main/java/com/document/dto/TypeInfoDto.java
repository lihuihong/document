package com.document.dto;


import lombok.Data;

@Data
public class TypeInfoDto extends BaseEntity {

    private Integer id;
    /**
     * 分类名称
     */
    private Integer name;
    private String status;
    private String type;
    private String url;
}

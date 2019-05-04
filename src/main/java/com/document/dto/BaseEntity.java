package com.document.dto;

import lombok.Data;

@Data
public class BaseEntity {

    private Integer limit;
    private Integer page;
    //排序字段
    private String sort;
    //排序方式 asc/desc
    private String order;
}

package com.document.dto;

import lombok.Data;


/**
 * <p>
 * 
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
@Data
public class TypeInfoOneDto  {


    private Long id;
    /**
     * 父分类id
     */
    private Integer typeInfoId;
    /**
     * 子分类名称
     */
    private String name;
    private String typeInfoName;
    private String status;
    private String type;

}

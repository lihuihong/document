package com.document.dto;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author heylhh
 * @since 2019-05-17
 */
@Data
public class PlacesAlterationDto {

    private static final long serialVersionUID = 1L;

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

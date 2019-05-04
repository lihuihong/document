package com.document.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
@TableName("document")
public class Document extends Model<Document> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id",type = IdType.AUTO)
    private String id;
    /**
     * 分类id
     */
    @TableField("type_info_id")
    private Integer typeInfoId;
    /**
     * 消防
     */
    @TableField("Fire_control")
    private Integer fireControl;
    /**
     * 环保
     */
    @TableField("environmental_protection")
    private String environmentalProtection;
    /**
     * 卫生
     */
    private String hygiene;
    /**
     * 工商
     */
    @TableField("business_circles")
    private String businessCircles;

    private String status;
    private String type;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getTypeInfoId() {
        return typeInfoId;
    }

    public void setTypeInfoId(Integer typeInfoId) {
        this.typeInfoId = typeInfoId;
    }

    public Integer getFireControl() {
        return fireControl;
    }

    public void setFireControl(Integer fireControl) {
        this.fireControl = fireControl;
    }

    public String getEnvironmentalProtection() {
        return environmentalProtection;
    }

    public void setEnvironmentalProtection(String environmentalProtection) {
        this.environmentalProtection = environmentalProtection;
    }

    public String getHygiene() {
        return hygiene;
    }

    public void setHygiene(String hygiene) {
        this.hygiene = hygiene;
    }

    public String getBusinessCircles() {
        return businessCircles;
    }

    public void setBusinessCircles(String businessCircles) {
        this.businessCircles = businessCircles;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Document{" +
        "id=" + id +
        ", typeInfoId=" + typeInfoId +
        ", fireControl=" + fireControl +
        ", environmentalProtection=" + environmentalProtection +
        ", hygiene=" + hygiene +
        ", businessCircles=" + businessCircles +
        "}";
    }
}

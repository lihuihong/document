package com.document.entity;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author heylhh
 * @since 2019-05-16
 */
@TableName("sing_alteration")
public class SingAlteration extends Model<SingAlteration> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 分类id
     */
    @TableField("type_info_id")
    private Integer typeInfoId;
    /**
     * 单位名称
     */
    @TableField("unit_name")
    private String unitName;
    /**
     * 单位名称时间
     */
    @TableField("unit_name_time")
    private String unitNameTime;
    /**
     * 法定代表人
     */
    @TableField("legal_representative")
    private String legalRepresentative;
    /**
     * 法定代表人时间
     */
    @TableField("representative_time")
    private String representativeTime;
    /**
     * 地址
     */
    private String address;
    /**
     * 地址时间
     */
    @TableField("address_time")
    private String addressTime;
    /**
     * 面积
     */
    private String area;
    /**
     * 面积时间
     */
    @TableField("area_time")
    private String areaTime;
    /**
     * 包厢数量
     */
    @TableField("box_quantity")
    private String boxQuantity;
    /**
     * 包厢数量时间
     */
    @TableField("box_quantity_time")
    private String boxQuantityTime;
    private Integer status;
    private Integer type;
    private String user;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypeInfoId() {
        return typeInfoId;
    }

    public void setTypeInfoId(Integer typeInfoId) {
        this.typeInfoId = typeInfoId;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getUnitNameTime() {
        return unitNameTime;
    }

    public void setUnitNameTime(String unitNameTime) {
        this.unitNameTime = unitNameTime;
    }

    public String getLegalRepresentative() {
        return legalRepresentative;
    }

    public void setLegalRepresentative(String legalRepresentative) {
        this.legalRepresentative = legalRepresentative;
    }

    public String getRepresentativeTime() {
        return representativeTime;
    }

    public void setRepresentativeTime(String representativeTime) {
        this.representativeTime = representativeTime;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddressTime() {
        return addressTime;
    }

    public void setAddressTime(String addressTime) {
        this.addressTime = addressTime;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getAreaTime() {
        return areaTime;
    }

    public void setAreaTime(String areaTime) {
        this.areaTime = areaTime;
    }

    public String getBoxQuantity() {
        return boxQuantity;
    }

    public void setBoxQuantity(String boxQuantity) {
        this.boxQuantity = boxQuantity;
    }

    public String getBoxQuantityTime() {
        return boxQuantityTime;
    }

    public void setBoxQuantityTime(String boxQuantityTime) {
        this.boxQuantityTime = boxQuantityTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "SingAlteration{" +
        "id=" + id +
        ", typeInfoId=" + typeInfoId +
        ", unitName=" + unitName +
        ", unitNameTime=" + unitNameTime +
        ", legalRepresentative=" + legalRepresentative +
        ", representativeTime=" + representativeTime +
        ", address=" + address +
        ", addressTime=" + addressTime +
        ", area=" + area +
        ", areaTime=" + areaTime +
        ", boxQuantity=" + boxQuantity +
        ", boxQuantityTime=" + boxQuantityTime +
        ", status=" + status +
        ", type=" + type +
        "}";
    }
}

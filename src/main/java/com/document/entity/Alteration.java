package com.document.entity;

import java.util.Date;
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
@TableName("alteration")
public class Alteration extends Model<Alteration> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id",type = IdType.AUTO)
    private String id;
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
     * 终端台数(电影管理 包厢数量)（音像管理 设备数量）
     */
    @TableField("terminal_numbe")
    private String terminalNumbe;
    /**
     * 终端台数时间(电影管理 包厢数量时间)（音像管理 设备数量时间）
     */
    @TableField("terminal_numbe_time")
    private String terminalNumbeTime;

    private String service;
    private String servicetime;

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getServicetime() {
        return servicetime;
    }

    public void setServicetime(String servicetime) {
        this.servicetime = servicetime;
    }

    private String status;
    private String type;
    private String number;//电影管理（设备数量）
    private String numbertime;//电影管理（设备数量时间）

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getNumbertime() {
        return numbertime;
    }

    public void setNumbertime(String numbertime) {
        this.numbertime = numbertime;
    }

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

    public String getTerminalNumbe() {
        return terminalNumbe;
    }

    public void setTerminalNumbe(String terminalNumbe) {
        this.terminalNumbe = terminalNumbe;
    }

    public String getTerminalNumbeTime() {
        return terminalNumbeTime;
    }

    public void setTerminalNumbeTime(String terminalNumbeTime) {
        this.terminalNumbeTime = terminalNumbeTime;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Alteration{" +
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
        ", terminalNumbe=" + terminalNumbe +
        ", terminalNumbeTime=" + terminalNumbeTime +
        "}";
    }
}

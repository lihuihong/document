package com.document.entity;

import com.baomidou.mybatisplus.enums.IdType;
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
 * @since 2019-05-17
 */
@TableName("places")
public class Places extends Model<Places> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 分类id
     */
    @TableField("type_info_id")
    private Integer typeInfoId;
    /**
     * 子分类
     */
    private Integer child;
    /**
     * 单位名称
     */
    @TableField("unit_name")
    private String unitName;
    /**
     * 经营地址
     */
    @TableField("business_address")
    private String businessAddress;
    /**
     * 经营性质
     */
    private String management;
    /**
     * 单位电话
     */
    @TableField("work_telephone")
    private String workTelephone;
    /**
     * 经营面积（m2）
     */
    @TableField("operating_area")
    private String operatingArea;
    /**
     * 包厢数量
     */
    @TableField("box_quantity")
    private String boxQuantity;
    /**
     * 备案号
     */
    @TableField("performance_area")
    private String performanceArea;
    /**
     * 设备台数
     */
    @TableField("number_equipment")
    private String numberEquipment;
    /**
     * 总投资额（万元）
     */
    @TableField("total_investment")
    private String totalInvestment;
    /**
     * 许可证号
     */
    @TableField("license_key")
    private String licenseKey;
    /**
     * 发证时间
     */
    @TableField("Issuing_time")
    private String issuingTime;
    /**
     * 发证机关
     */
    @TableField("certification_authority")
    private String certificationAuthority;
    /**
     * 年检时间
     */
    @TableField("inspection_time")
    private String inspectionTime;
    /**
     * 规章制度
     */
    private String rules;
    /**
     * 从业人员数
     */
    @TableField("number_people_employed")
    private String numberPeopleEmployed;
    /**
     * 核定人数
     */
    @TableField("authorized_number")
    private String authorizedNumber;
    /**
     * 是否删除 0正常 1删除
     */
    private Integer status;
    /**
     * 审核状态 0通过 1未通过 2未审核
     */
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

    public Integer getChild() {
        return child;
    }

    public void setChild(Integer child) {
        this.child = child;
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName;
    }

    public String getBusinessAddress() {
        return businessAddress;
    }

    public void setBusinessAddress(String businessAddress) {
        this.businessAddress = businessAddress;
    }

    public String getManagement() {
        return management;
    }

    public void setManagement(String management) {
        this.management = management;
    }

    public String getWorkTelephone() {
        return workTelephone;
    }

    public void setWorkTelephone(String workTelephone) {
        this.workTelephone = workTelephone;
    }

    public String getOperatingArea() {
        return operatingArea;
    }

    public void setOperatingArea(String operatingArea) {
        this.operatingArea = operatingArea;
    }

    public String getBoxQuantity() {
        return boxQuantity;
    }

    public void setBoxQuantity(String boxQuantity) {
        this.boxQuantity = boxQuantity;
    }

    public String getPerformanceArea() {
        return performanceArea;
    }

    public void setPerformanceArea(String performanceArea) {
        this.performanceArea = performanceArea;
    }

    public String getNumberEquipment() {
        return numberEquipment;
    }

    public void setNumberEquipment(String numberEquipment) {
        this.numberEquipment = numberEquipment;
    }

    public String getTotalInvestment() {
        return totalInvestment;
    }

    public void setTotalInvestment(String totalInvestment) {
        this.totalInvestment = totalInvestment;
    }

    public String getLicenseKey() {
        return licenseKey;
    }

    public void setLicenseKey(String licenseKey) {
        this.licenseKey = licenseKey;
    }

    public String getIssuingTime() {
        return issuingTime;
    }

    public void setIssuingTime(String issuingTime) {
        this.issuingTime = issuingTime;
    }

    public String getCertificationAuthority() {
        return certificationAuthority;
    }

    public void setCertificationAuthority(String certificationAuthority) {
        this.certificationAuthority = certificationAuthority;
    }

    public String getInspectionTime() {
        return inspectionTime;
    }

    public void setInspectionTime(String inspectionTime) {
        this.inspectionTime = inspectionTime;
    }

    public String getRules() {
        return rules;
    }

    public void setRules(String rules) {
        this.rules = rules;
    }

    public String getNumberPeopleEmployed() {
        return numberPeopleEmployed;
    }

    public void setNumberPeopleEmployed(String numberPeopleEmployed) {
        this.numberPeopleEmployed = numberPeopleEmployed;
    }

    public String getAuthorizedNumber() {
        return authorizedNumber;
    }

    public void setAuthorizedNumber(String authorizedNumber) {
        this.authorizedNumber = authorizedNumber;
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
        return "Places{" +
        "id=" + id +
        ", typeInfoId=" + typeInfoId +
        ", child=" + child +
        ", unitName=" + unitName +
        ", businessAddress=" + businessAddress +
        ", management=" + management +
        ", workTelephone=" + workTelephone +
        ", operatingArea=" + operatingArea +
        ", boxQuantity=" + boxQuantity +
        ", performanceArea=" + performanceArea +
        ", numberEquipment=" + numberEquipment +
        ", totalInvestment=" + totalInvestment +
        ", licenseKey=" + licenseKey +
        ", issuingTime=" + issuingTime +
        ", certificationAuthority=" + certificationAuthority +
        ", inspectionTime=" + inspectionTime +
        ", rules=" + rules +
        ", numberPeopleEmployed=" + numberPeopleEmployed +
        ", authorizedNumber=" + authorizedNumber +
        ", status=" + status +
        ", type=" + type +
        "}";
    }
}

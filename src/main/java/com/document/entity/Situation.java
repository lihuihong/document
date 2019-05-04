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
@TableName("situation")
public class Situation extends Model<Situation> {

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
     * 经营地址
     */
    @TableField("business_address")
    private String businessAddress;
    /**
     * 经营性质
     */
    private String management;
    private String status;
    private String type;
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
     * 服务器台数
     */
    @TableField("numberof_servers")
    private String numberofServers;
    /**
     * 终端台数
     */
    @TableField("terminal_number")
    private String terminalNumber;
    /**
     * 网络接入商
     */
    @TableField("network_access")
    private String networkAccess;
    /**
     * 从业人员数
     */
    @TableField("people_employed")
    private String peopleEmployed;
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
     * 地区
     */
    private String address;
    /**
     * 总投资额（万元）
     */
    @TableField("total_investment")
    private String totalInvestment;



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

    public String getNumberofServers() {
        return numberofServers;
    }

    public void setNumberofServers(String numberofServers) {
        this.numberofServers = numberofServers;
    }

    public String getTerminalNumber() {
        return terminalNumber;
    }

    public void setTerminalNumber(String terminalNumber) {
        this.terminalNumber = terminalNumber;
    }

    public String getNetworkAccess() {
        return networkAccess;
    }

    public void setNetworkAccess(String networkAccess) {
        this.networkAccess = networkAccess;
    }

    public String getPeopleEmployed() {
        return peopleEmployed;
    }

    public void setPeopleEmployed(String peopleEmployed) {
        this.peopleEmployed = peopleEmployed;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTotalInvestment() {
        return totalInvestment;
    }

    public void setTotalInvestment(String totalInvestment) {
        this.totalInvestment = totalInvestment;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Situation{" +
        "id=" + id +
        ", typeInfoId=" + typeInfoId +
        ", unitName=" + unitName +
        ", businessAddress=" + businessAddress +
        ", management=" + management +
        ", workTelephone=" + workTelephone +
        ", operatingArea=" + operatingArea +
        ", numberofServers=" + numberofServers +
        ", terminalNumber=" + terminalNumber +
        ", networkAccess=" + networkAccess +
        ", peopleEmployed=" + peopleEmployed +
        ", licenseKey=" + licenseKey +
        ", issuingTime=" + issuingTime +
        ", certificationAuthority=" + certificationAuthority +
        ", inspectionTime=" + inspectionTime +
        ", rules=" + rules +
        ", address=" + address +
        ", totalInvestment=" + totalInvestment +
        "}";
    }
}

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
@TableName("punishment")
public class Punishment extends Model<Punishment> {

    private static final long serialVersionUID = 1L;
    @TableId(value = "id",type = IdType.AUTO)
    private String id;
    /**
     * 分类id
     */
    @TableField("type_info_id")
    private Integer typeInfoId;
    /**
     * 警告
     */
    private String warning;
    /**
     * 警告时间
     */
    @TableField("warning_time")
    private String warningTime;
    /**
     * 罚款
     */
    private String fine;
    /**
     * 罚款时间
     */
    @TableField("fine_time")
    private String fineTime;
    /**
     * 责令停业整顿
     */
    private String rectify;
    /**
     * 责令停业整顿时间
     */
    @TableField("rectify_time")
    private String rectifyTime;
    /**
     * 吊销许可证
     */
    @TableField("revocation_permit")
    private String revocationPermit;
    /**
     * 吊销许可证时间
     */
    @TableField("revocation_permit_time")
    private String revocationPermitTime;
    /**
     * 没收违法所得
     */
    @TableField("confiscation_income")
    private String confiscationIncome;
    /**
     * 没收违法所得时间
     */
    @TableField("confiscation_income_time")
    private String confiscationIncomeTime;
    /**
     * 没收非法财物
     */
    @TableField("confiscation_property")
    private String confiscationProperty;
    /**
     * 没收非法财物时间
     */
    @TableField("confiscation_property_time")
    private String confiscationPropertyTime;

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

    public String getWarning() {
        return warning;
    }

    public void setWarning(String warning) {
        this.warning = warning;
    }

    public String getWarningTime() {
        return warningTime;
    }

    public void setWarningTime(String warningTime) {
        this.warningTime = warningTime;
    }

    public String getFine() {
        return fine;
    }

    public void setFine(String fine) {
        this.fine = fine;
    }

    public String getFineTime() {
        return fineTime;
    }

    public void setFineTime(String fineTime) {
        this.fineTime = fineTime;
    }

    public String getRectify() {
        return rectify;
    }

    public void setRectify(String rectify) {
        this.rectify = rectify;
    }

    public String getRectifyTime() {
        return rectifyTime;
    }

    public void setRectifyTime(String rectifyTime) {
        this.rectifyTime = rectifyTime;
    }

    public String getRevocationPermit() {
        return revocationPermit;
    }

    public void setRevocationPermit(String revocationPermit) {
        this.revocationPermit = revocationPermit;
    }

    public String getRevocationPermitTime() {
        return revocationPermitTime;
    }

    public void setRevocationPermitTime(String revocationPermitTime) {
        this.revocationPermitTime = revocationPermitTime;
    }

    public String getConfiscationIncome() {
        return confiscationIncome;
    }

    public void setConfiscationIncome(String confiscationIncome) {
        this.confiscationIncome = confiscationIncome;
    }

    public String getConfiscationIncomeTime() {
        return confiscationIncomeTime;
    }

    public void setConfiscationIncomeTime(String confiscationIncomeTime) {
        this.confiscationIncomeTime = confiscationIncomeTime;
    }

    public String getConfiscationProperty() {
        return confiscationProperty;
    }

    public void setConfiscationProperty(String confiscationProperty) {
        this.confiscationProperty = confiscationProperty;
    }

    public String getConfiscationPropertyTime() {
        return confiscationPropertyTime;
    }

    public void setConfiscationPropertyTime(String confiscationPropertyTime) {
        this.confiscationPropertyTime = confiscationPropertyTime;
    }

    @Override
    protected Serializable pkVal() {
        return null;
    }

    @Override
    public String toString() {
        return "Punishment{" +
        "id=" + id +
        ", typeInfoId=" + typeInfoId +
        ", warning=" + warning +
        ", warningTime=" + warningTime +
        ", fine=" + fine +
        ", fineTime=" + fineTime +
        ", rectify=" + rectify +
        ", rectifyTime=" + rectifyTime +
        ", revocationPermit=" + revocationPermit +
        ", revocationPermitTime=" + revocationPermitTime +
        ", confiscationIncome=" + confiscationIncome +
        ", confiscationIncomeTime=" + confiscationIncomeTime +
        ", confiscationProperty=" + confiscationProperty +
        ", confiscationPropertyTime=" + confiscationPropertyTime +
        "}";
    }
}

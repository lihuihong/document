package com.document.entity;

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
 * @since 2019-05-11
 */
@TableName("user_info")
public class UserInfo extends Model<UserInfo> {

    private static final long serialVersionUID = 1L;

    private Integer id;
    /**
     * 用户名称
     */
    private String name;
    /**
     * 用户密码
     */
    private String password;
    /**
     * 用户新密码
     */
    private String newPassword;
    /**
     * 用户类型（0管理员 1普通用户）
     */
    private String type;
    /**
     * 分类id
     */
    @TableField("type_info_id")
    private Integer typeInfoId;

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getTypeInfoId() {
        return typeInfoId;
    }

    public void setTypeInfoId(Integer typeInfoId) {
        this.typeInfoId = typeInfoId;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
        "id=" + id +
        ", name=" + name +
        ", password=" + password +
        ", type=" + type +
        ", typeInfoId=" + typeInfoId +
        "}";
    }
}

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
@TableName("type_info_one")
public class TypeInfoOne extends Model<TypeInfoOne> {

    private static final long serialVersionUID = 1L;

    private Long id;
    /**
     * 父分类id
     */
    @TableField("type_info_id")
    private Integer typeInfoId;
    /**
     * 子分类名称
     */
    private String name;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getTypeInfoId() {
        return typeInfoId;
    }

    public void setTypeInfoId(Integer typeInfoId) {
        this.typeInfoId = typeInfoId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    protected Serializable pkVal() {
        return null;
    }

    @Override
    public String toString() {
        return "TypeInfoOne{" +
        "id=" + id +
        ", typeInfoId=" + typeInfoId +
        ", name=" + name +
        "}";
    }
}

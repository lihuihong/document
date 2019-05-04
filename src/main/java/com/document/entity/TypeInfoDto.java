package com.document.entity;

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
@TableName("type_info")
public class TypeInfoDto extends Model<TypeInfoDto> {

    private static final long serialVersionUID = 1L;

    private String id;
    /**
     * 分类名称
     */
    private String name;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "TypeInfo{" +
        "id=" + id +
        ", name=" + name +
        "}";
    }
}

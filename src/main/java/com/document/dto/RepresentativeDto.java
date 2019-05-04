package com.document.dto;

import com.baomidou.mybatisplus.annotations.TableField;
import lombok.Data;

@Data
public class RepresentativeDto {


    private String id;
    /**
     * 分类id
     */
    private Integer typeInfoId;
    private String typeInfoName;
    /**
     * 姓名
     */
    private String name;
    /**
     * 性别
     */
    private String sex;
    /**
     * 出生年月
     */
    private String birth;
    /**
     * 民族（手填 默认 汉）
     */
    private String translate;
    /**
     * 照片
     */
    private String photo;
    /**
     * 政治面貌
     */
    @TableField("political_outlook")
    private String politicalOutlook;
    /**
     * 学历
     */
    private String degree;
    /**
     * 住址
     */
    private String address;
    /**
     * 身份证号码
     */
    private String idcard;
    /**
     * 座机
     */
    private String landline;
    private String alias;
    /**
     * 联系电话
     */
    private String phone;
    private String status;
    private String type;

}

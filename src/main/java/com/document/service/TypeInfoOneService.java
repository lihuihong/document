package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SituationDto;
import com.document.dto.TypeInfoOneDto;
import com.document.entity.TypeInfoOne;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface TypeInfoOneService extends IService<TypeInfoOne> {

    Page typeInfoOneList(TypeInfoOneDto typeInfoOneDto, BaseEntity baseEntity);
}

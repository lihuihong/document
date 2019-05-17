package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SituationDto;
import com.document.dto.TypeInfoOneDto;
import com.document.entity.TypeInfoOne;
import com.document.mapper.SituationMapper;
import com.document.mapper.TypeInfoOneMapper;
import com.document.service.TypeInfoOneService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
@Service
public class TypeInfoOneServiceImpl extends ServiceImpl<TypeInfoOneMapper, TypeInfoOne> implements TypeInfoOneService {

    @Autowired
    TypeInfoOneMapper typeInfoOneMapper;

    public Page typeInfoOneList(TypeInfoOneDto typeInfoOneDto, BaseEntity baseEntity) {
        Wrapper<TypeInfoOneDto> entity = new EntityWrapper<TypeInfoOneDto>(typeInfoOneDto);
        Page<TypeInfoOneDto> page = new Page<TypeInfoOneDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<TypeInfoOneDto> situationList = typeInfoOneMapper.typeInfoOneList(page, typeInfoOneDto);
        return page.setRecords(situationList);
    }
}

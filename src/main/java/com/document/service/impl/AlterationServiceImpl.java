package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.BaseEntity;
import com.document.dto.DocumentDto;
import com.document.entity.Alteration;
import com.document.mapper.AlterationMapper;
import com.document.mapper.DocumentMapper;
import com.document.service.AlterationService;
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
public class AlterationServiceImpl extends ServiceImpl<AlterationMapper, Alteration> implements AlterationService {

    @Autowired
    AlterationMapper alterationMapper;

    public Page alterationList(AlterationDto alterationDto, BaseEntity baseEntity) {
        Wrapper<AlterationDto> entity = new EntityWrapper<AlterationDto>(alterationDto);
        Page<AlterationDto> page = new Page<AlterationDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<AlterationDto> representativeDtos = alterationMapper.alterationList(page, alterationDto);
        return page.setRecords(representativeDtos);
    }
}

package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SingAlterationDto;
import com.document.dto.SingingDto;
import com.document.entity.Singing;
import com.document.mapper.SingAlterationMapper;
import com.document.mapper.SingingMapper;
import com.document.service.SingingService;
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
 * @since 2019-05-16
 */
@Service
public class SingingServiceImpl extends ServiceImpl<SingingMapper, Singing> implements SingingService {

    @Autowired
    SingingMapper singingMapper;

    public Page singingList(SingingDto singingDto, BaseEntity baseEntity) {
        Wrapper<SingingDto> entity = new EntityWrapper<SingingDto>(singingDto);
        Page<SingingDto> page = new Page<SingingDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<SingingDto> representativeDtos = singingMapper.singingList(page, singingDto);
        return page.setRecords(representativeDtos);
    }
}

package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.BaseEntity;
import com.document.dto.SingAlterationDto;
import com.document.entity.SingAlteration;
import com.document.mapper.AlterationMapper;
import com.document.mapper.SingAlterationMapper;
import com.document.service.SingAlterationService;
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
public class SingAlterationServiceImpl extends ServiceImpl<SingAlterationMapper, SingAlteration> implements SingAlterationService {
    @Autowired
    SingAlterationMapper singAlterationMapper;

    public Page singlterationList(SingAlterationDto singAlterationDto, BaseEntity baseEntity) {
        Wrapper<SingAlterationDto> entity = new EntityWrapper<SingAlterationDto>(singAlterationDto);
        Page<SingAlterationDto> page = new Page<SingAlterationDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<SingAlterationDto> representativeDtos = singAlterationMapper.singlterationList(page, singAlterationDto);
        return page.setRecords(representativeDtos);
    }
}

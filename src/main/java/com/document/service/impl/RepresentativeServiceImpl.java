package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.RepresentativeDto;
import com.document.dto.SituationDto;
import com.document.entity.Representative;
import com.document.mapper.RepresentativeMapper;
import com.document.mapper.SituationMapper;
import com.document.service.RepresentativeService;
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
public class RepresentativeServiceImpl extends ServiceImpl<RepresentativeMapper, Representative> implements RepresentativeService {


    @Autowired
    RepresentativeMapper representativeMapper;

    public Page representativeList(RepresentativeDto representativeDto, BaseEntity baseEntity) {
        Wrapper<RepresentativeDto> entity = new EntityWrapper<RepresentativeDto>(representativeDto);
        Page<RepresentativeDto> page = new Page<RepresentativeDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<RepresentativeDto> representativeDtos = representativeMapper.representativeList(page, representativeDto);
        return page.setRecords(representativeDtos);
    }
}

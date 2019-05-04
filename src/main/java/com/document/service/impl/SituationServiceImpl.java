package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SituationDto;
import com.document.entity.Situation;
import com.document.mapper.SituationMapper;
import com.document.service.SituationService;
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
public class SituationServiceImpl extends ServiceImpl<SituationMapper, Situation> implements SituationService {

    @Autowired
    SituationMapper situationMapper;

    public Page situationList(SituationDto situation, BaseEntity baseEntity) {
        Wrapper<SituationDto> entity = new EntityWrapper<SituationDto>(situation);
        Page<SituationDto> page = new Page<SituationDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<SituationDto> situationList = situationMapper.situationList(page, situation);
        return page.setRecords(situationList);
    }
}

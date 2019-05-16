package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PlacesAlterationDto;
import com.document.dto.SingAlterationDto;
import com.document.entity.PlacesAlteration;
import com.document.mapper.PlacesAlterationMapper;
import com.document.mapper.SingAlterationMapper;
import com.document.service.PlacesAlterationService;
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
 * @since 2019-05-17
 */
@Service
public class PlacesAlterationServiceImpl extends ServiceImpl<PlacesAlterationMapper, PlacesAlteration> implements PlacesAlterationService {

    @Autowired
    PlacesAlterationMapper placesAlterationMapper;

    public Page placesAlterationList(PlacesAlterationDto placesAlterationDto, BaseEntity baseEntity) {
        Wrapper<PlacesAlterationDto> entity = new EntityWrapper<PlacesAlterationDto>(placesAlterationDto);
        Page<PlacesAlterationDto> page = new Page<PlacesAlterationDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<PlacesAlterationDto> representativeDtos = placesAlterationMapper.placesAlterationList(page, placesAlterationDto);
        return page.setRecords(representativeDtos);
    }
}

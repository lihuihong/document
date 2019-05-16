package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PlacesDto;
import com.document.dto.SingAlterationDto;
import com.document.entity.Places;
import com.document.mapper.PlacesMapper;
import com.document.mapper.SingAlterationMapper;
import com.document.service.PlacesService;
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
public class PlacesServiceImpl extends ServiceImpl<PlacesMapper, Places> implements PlacesService {

    @Autowired
    PlacesMapper placesMapper;

    public Page placesList(PlacesDto placesDto, BaseEntity baseEntity) {
        Wrapper<PlacesDto> entity = new EntityWrapper<PlacesDto>(placesDto);
        Page<PlacesDto> page = new Page<PlacesDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<PlacesDto> representativeDtos = placesMapper.placesList(page, placesDto);
        return page.setRecords(representativeDtos);
    }
}

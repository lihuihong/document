package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.PlacesAlterationDto;
import com.document.dto.PlacesDto;
import com.document.entity.Places;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author heylhh
 * @since 2019-05-17
 */
public interface PlacesMapper extends BaseMapper<Places> {

    List<PlacesDto> placesList(Page page, PlacesDto placesDto);
}

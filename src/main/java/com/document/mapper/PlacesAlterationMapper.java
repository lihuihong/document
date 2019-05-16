package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.PlacesAlterationDto;
import com.document.dto.SingAlterationDto;
import com.document.entity.PlacesAlteration;
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
public interface PlacesAlterationMapper extends BaseMapper<PlacesAlteration> {
    List<PlacesAlterationDto> placesAlterationList(Page page, PlacesAlterationDto placesAlterationDto);
}

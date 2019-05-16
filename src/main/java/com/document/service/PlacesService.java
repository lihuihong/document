package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PlacesAlterationDto;
import com.document.dto.PlacesDto;
import com.document.entity.Places;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-17
 */
public interface PlacesService extends IService<Places> {

    Page placesList(PlacesDto placesDto, BaseEntity baseEntity);
}

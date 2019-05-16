package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PlacesAlterationDto;
import com.document.dto.SingAlterationDto;
import com.document.entity.PlacesAlteration;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-17
 */
public interface PlacesAlterationService extends IService<PlacesAlteration> {

    Page placesAlterationList(PlacesAlterationDto placesAlterationDto, BaseEntity baseEntity);
}

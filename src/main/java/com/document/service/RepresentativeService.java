package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.RepresentativeDto;
import com.document.dto.SituationDto;
import com.document.entity.Representative;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface RepresentativeService extends IService<Representative> {
    Page representativeList(RepresentativeDto representativeDto, BaseEntity baseEntity);
}

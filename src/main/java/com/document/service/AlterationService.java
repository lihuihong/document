package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.BaseEntity;
import com.document.dto.DocumentDto;
import com.document.entity.Alteration;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface AlterationService extends IService<Alteration> {
    Page alterationList(AlterationDto alterationDto, BaseEntity baseEntity);
}

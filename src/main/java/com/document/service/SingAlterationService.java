package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.BaseEntity;
import com.document.dto.SingAlterationDto;
import com.document.entity.SingAlteration;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-16
 */
public interface SingAlterationService extends IService<SingAlteration> {
    Page singlterationList(SingAlterationDto singAlterationDto, BaseEntity baseEntity);

}

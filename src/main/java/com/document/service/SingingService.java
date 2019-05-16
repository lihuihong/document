package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SingAlterationDto;
import com.document.dto.SingingDto;
import com.document.entity.Singing;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-16
 */
public interface SingingService extends IService<Singing> {
    Page singingList(SingingDto singingDto, BaseEntity baseEntity);

}

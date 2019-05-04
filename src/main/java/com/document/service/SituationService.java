package com.document.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.SituationDto;
import com.document.entity.Situation;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface SituationService extends IService<Situation> {

    Page situationList(SituationDto situation, BaseEntity baseEntity);

}

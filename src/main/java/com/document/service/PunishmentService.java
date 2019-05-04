package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PunishmentDto;
import com.document.dto.RepresentativeDto;
import com.document.entity.Punishment;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface PunishmentService extends IService<Punishment> {

    Page punishmentList(PunishmentDto punishmentDto, BaseEntity baseEntity);

}

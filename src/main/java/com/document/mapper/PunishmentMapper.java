package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.PunishmentDto;
import com.document.dto.RepresentativeDto;
import com.document.entity.Punishment;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface PunishmentMapper extends BaseMapper<Punishment> {
    /*获取单位信息列表*/
    List<PunishmentDto> punishmentList(Page page, PunishmentDto punishmentDto);
}

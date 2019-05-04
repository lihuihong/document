package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.PunishmentDto;
import com.document.dto.RepresentativeDto;
import com.document.entity.Punishment;
import com.document.mapper.PunishmentMapper;
import com.document.mapper.RepresentativeMapper;
import com.document.service.PunishmentService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
@Service
public class PunishmentServiceImpl extends ServiceImpl<PunishmentMapper, Punishment> implements PunishmentService {

    @Autowired
    PunishmentMapper punishmentMapper;

    public Page punishmentList(PunishmentDto punishmentDto, BaseEntity baseEntity) {
        Wrapper<PunishmentDto> entity = new EntityWrapper<PunishmentDto>(punishmentDto);
        Page<PunishmentDto> page = new Page<PunishmentDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<PunishmentDto> representativeDtos = punishmentMapper.punishmentList(page, punishmentDto);
        return page.setRecords(representativeDtos);
    }
}

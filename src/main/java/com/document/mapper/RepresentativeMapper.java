package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.RepresentativeDto;
import com.document.dto.SituationDto;
import com.document.entity.Representative;
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
public interface RepresentativeMapper extends BaseMapper<Representative> {
    /*获取单位信息列表*/
    List<RepresentativeDto> representativeList(Page page, RepresentativeDto representativeDto);
}

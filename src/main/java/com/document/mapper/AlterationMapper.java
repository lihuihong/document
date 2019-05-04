package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.DocumentDto;
import com.document.entity.Alteration;
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
public interface AlterationMapper extends BaseMapper<Alteration> {
    List<AlterationDto> alterationList(Page page, AlterationDto alterationDto);
}

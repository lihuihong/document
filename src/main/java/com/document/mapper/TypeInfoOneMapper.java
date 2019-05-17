package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.SituationDto;
import com.document.dto.TypeInfoOneDto;
import com.document.entity.TypeInfoOne;
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
public interface TypeInfoOneMapper extends BaseMapper<TypeInfoOne> {

    List<TypeInfoOneDto> typeInfoOneList(Page page, TypeInfoOneDto typeInfoOneDto);
}

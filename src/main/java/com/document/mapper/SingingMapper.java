package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.SingAlterationDto;
import com.document.dto.SingingDto;
import com.document.entity.Singing;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author heylhh
 * @since 2019-05-16
 */
public interface SingingMapper extends BaseMapper<Singing> {
    List<SingingDto> singingList(Page page, SingingDto singingDto);
}

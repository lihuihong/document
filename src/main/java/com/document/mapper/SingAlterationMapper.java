package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.AlterationDto;
import com.document.dto.SingAlterationDto;
import com.document.entity.SingAlteration;
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
public interface SingAlterationMapper extends BaseMapper<SingAlteration> {
    List<SingAlterationDto> singlterationList(Page page, SingAlterationDto singAlterationDto);
}

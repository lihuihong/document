package com.document.mapper;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.SituationDto;
import com.document.entity.Situation;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface SituationMapper extends BaseMapper<Situation> {
    /*获取单位信息列表*/
    List<SituationDto> situationList(Page page, SituationDto situation);
}

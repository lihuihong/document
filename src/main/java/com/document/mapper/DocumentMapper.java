package com.document.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.DocumentDto;
import com.document.dto.PunishmentDto;
import com.document.entity.Document;
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
public interface DocumentMapper extends BaseMapper<Document> {
    List<DocumentDto> documentList(Page page, DocumentDto documentDto);
}

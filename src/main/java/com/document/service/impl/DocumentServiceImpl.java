package com.document.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.DocumentDto;
import com.document.dto.PunishmentDto;
import com.document.entity.Document;
import com.document.mapper.DocumentMapper;
import com.document.mapper.PunishmentMapper;
import com.document.service.DocumentService;
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
public class DocumentServiceImpl extends ServiceImpl<DocumentMapper, Document> implements DocumentService {


    @Autowired
    DocumentMapper documentMapper;

    public Page documentList(DocumentDto documentDto, BaseEntity baseEntity) {
        Wrapper<DocumentDto> entity = new EntityWrapper<DocumentDto>(documentDto);
        Page<DocumentDto> page = new Page<DocumentDto>(baseEntity.getPage(), baseEntity.getLimit());
        List<DocumentDto> representativeDtos = documentMapper.documentList(page, documentDto);
        return page.setRecords(representativeDtos);
    }
}

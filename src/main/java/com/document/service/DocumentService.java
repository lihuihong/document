package com.document.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.document.dto.BaseEntity;
import com.document.dto.DocumentDto;
import com.document.dto.PunishmentDto;
import com.document.entity.Document;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface DocumentService extends IService<Document> {
    Page documentList(DocumentDto documentDto, BaseEntity baseEntity);
}

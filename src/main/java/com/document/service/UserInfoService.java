package com.document.service;

import com.document.entity.UserInfo;
import com.baomidou.mybatisplus.service.IService;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface UserInfoService extends IService<UserInfo> {

    /**
     * 用户登录
     * @param user
     * @return
     */
    public UserInfo login(UserInfo user);
}

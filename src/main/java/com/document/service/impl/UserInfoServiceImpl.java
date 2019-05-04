package com.document.service.impl;

import com.document.entity.UserInfo;
import com.document.mapper.UserInfoMapper;
import com.document.service.UserInfoService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {

    @Autowired
    UserInfoMapper userInfoMapper;

    /**
     * 用户登陆
     * @param user
     * @return
     */
    public UserInfo login(UserInfo user) {
        return userInfoMapper.login(user);
    }
}

package com.document.mapper;

import com.document.entity.UserInfo;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Select;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author heylhh
 * @since 2019-05-11
 */
public interface UserInfoMapper extends BaseMapper<UserInfo> {

    UserInfo login(UserInfo userInfo);
}

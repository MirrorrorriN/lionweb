package com.lion.dao.ext;

import com.lion.dao.gen.UserMapper;
import com.lion.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author DJ
 * @date 2017/9/26.
 */
//不添加@Repository如何注入到bean?
@Repository
public interface UserDao extends UserMapper{

    List<User> selectAllUser();

    List<User> selectUserByRole(@Param("role") Integer role);

    User selectByUserName(@Param("username") String username);

    User selectByEmail(@Param("email") String email);

    User selectFormer(@Param("role") Integer role,@Param("rank") Long rank);

    User selectLatter(@Param("role") Integer role,@Param("rank") Long rank);
}


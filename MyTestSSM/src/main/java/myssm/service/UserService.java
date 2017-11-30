package myssm.service;

import myssm.bo.PageBean;
import myssm.entity.User;
import myssm.vo.TiaoJian;

import org.apache.ibatis.annotations.Param;

/*
 * @service业务层
 * @author chen
 */

public interface UserService {
	// 注册
	Integer addUser(User user);

	User getCardId(String cardId);

	// 登陆
	User getUserByCardIdAndPwd(@Param("cardId") String cardId,
			@Param("password") String password);

	// 返回pageBean
	PageBean showBean(TiaoJian tiaoJian);
}

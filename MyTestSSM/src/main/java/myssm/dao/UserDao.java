package myssm.dao;
import java.util.List;

import myssm.entity.Real;
import myssm.entity.User;
import myssm.vo.TiaoJian;

import org.apache.ibatis.annotations.Param;
/*
 * @dao接口
 * @author chen
 */

public interface UserDao {
	//注册
	Integer addUser(User user);	
	//验证注册
	User getCardId(String cardId);
	//登陆
	User getUserByCardIdAndPwd(@Param("cardId")String cardId,@Param("password")String password);	
	//获取分页所有的数据
	List<Real> getByTiaoJian(TiaoJian tiaoJian );	
	//获取分页的总数量
	Integer getTotalCounts(TiaoJian tiaoJian);
	
}

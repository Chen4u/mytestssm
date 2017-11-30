package myssm.service;
import myssm.bo.PageBean;
import myssm.dao.UserDao;
import myssm.entity.Real;
import myssm.entity.User;
import myssm.vo.TiaoJian;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
/*
 * @业务实现类
 * @author chen
 */
@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	public Integer addUser(User user) {
		
		return userDao.addUser(user);
	}

	public User getUserByCardIdAndPwd(String cardId, String password) {
		
		return userDao.getUserByCardIdAndPwd(cardId, password);
	}

	public PageBean showBean(TiaoJian tiaoJian) {
		PageBean<Real> pb=new PageBean<Real>();
			
		//先把个数算出来
		Integer totalCounts=userDao.getTotalCounts(tiaoJian);
		
		//算总页数
		Integer totalPages=
	totalCounts%tiaoJian.getLimit()==0?totalCounts/tiaoJian.getLimit():totalCounts/tiaoJian.getLimit()+1;
		
		pb.setFirstPage(1);
		pb.setLastPage(totalPages);//姹傛湯椤�
		pb.setTotalPages(totalPages);
		
		pb.setPageNo(tiaoJian.getPageNo());
		
		//设置上一页 和 下一页的时候 需要边界检查
		pb.setPrePage(tiaoJian.getPageNo()==1?1:tiaoJian.getPageNo()-1);
		pb.setNextPage(tiaoJian.getPageNo()>=totalPages?totalPages:tiaoJian.getPageNo()+1);
		
//		//璁＄畻 璧峰椤�
//		tiaoJian.setStartNum((tiaoJian.getPageNo()-1)*tiaoJian.getLimit());
//		
		
		pb.setList(userDao.getByTiaoJian(tiaoJian));
		
		
		
		pb.setContent(tiaoJian.getContent());
		pb.setType(tiaoJian.getType());
		
		
		return pb;
	}

	public User getCardId(String cardId) {
		// TODO Auto-generated method stub
		return userDao.getCardId(cardId);
	}

	
	
}

package com.dao;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dao.impl.IUserDao;
import com.pojo.User;
/**
 * 
 *  * @author hy
 *
 */
public class UserDao implements IUserDao{
	SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public void addUser(User user) {
		SqlSession sqlSession =sqlSessionFactory.openSession();
		sqlSession.insert(User.class.getName()+".addUser", user);
		sqlSession.close();
	}

	
	public void deleteUser(int id) {
		SqlSession sqlSession =sqlSessionFactory.openSession();
		sqlSession.delete(User.class.getName()+".deleteUser", id);
		sqlSession.close();
	}

	
	public void deleteManyUser(Integer[] ids) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		sqlSession.delete(User.class.getName()+".deleteManyUser",ids);
		sqlSession.close();
		
	}

	
	public void updateUserById(User user) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String, Object>();	
		map.put("userId", user.getUserId());
		map.put("userName", user.getUserName());
		map.put("loginPwd", user.getLoginPwd());
		map.put("trueName", user.getTrueName());
		map.put("userPhoto", user.getUserPhoto());
		map.put("userQQ", user.getUserQQ());
		map.put("lastIP", user.getLastIP());
		map.put("userEmail", user.getUserEmail());
		map.put("payPwd", user.getPayPwd());
		map.put("userType", user.getUserType());
		map.put("userSex", user.getUserSex());
		map.put("userFrom", user.getUserFrom());
		map.put("userStatus", user.getUserStatus());
		map.put("isvalid", user.getIsvalid());
		map.put("brithday", user.getBrithday());
		map.put("lastTime", user.getLastTime());
		map.put("createTime", user.getCreateTime());
		map.put("userScore", user.getUserScore());
		map.put("userTotalScore", user.getUserTotalScore());
		map.put("userMoney", user.getLockMoney());
		map.put("lockMoney", user.getUserId());	
		sqlSession.update(User.class.getName()+".updateUserById", map);
		sqlSession.close();
	}

	
	public User findUserByID(int id) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		User user = sqlSession.selectOne(User.class.getName()+".findUserByID", id);
		sqlSession.close();
		return user;
	}

	public List<User> findAllUser() {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<User> userList = sqlSession.selectList(User.class.getName()+".findAllUser");
		sqlSession.close();
		return userList;
	}

	
	public List<User> userExist(String name) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<User> userList = sqlSession.selectList(User.class.getName()+".userExist",name);
		sqlSession.close();
		return userList;
	}

	
	public User login(String username, String password) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Map<String, Object> map =new HashMap<String, Object>();
		map.put("name", username);
		map.put("pwd", password);
		User user=sqlSession.selectOne(User.class.getName()+".login",map);
		sqlSession.close();
		return user;
	}

	
	public List<User> findAllUser(int start, int end) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Map<String, Object> map =new LinkedHashMap<String, Object>();
		map.put("pstart", start);
		map.put("pend", end);
		List<User> userliList=sqlSession.selectList(User.class.getName()+".findAllUser", map);
		System.out.println(">>>>>>>>>>>>>>>>"+userliList.get(0).getBrithday());
		sqlSession.close();
		return userliList;
	}

	
	public int allRecords() {
		SqlSession sqlSession =sqlSessionFactory.openSession();
		int records=sqlSession.selectOne(User.class.getName()+".allRecords");
		sqlSession.close();
		return records;
	}


}

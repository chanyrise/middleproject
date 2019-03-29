package com.pet;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;
@Repository
public class PetDaoImpl implements PetDao {
	static SqlSessionFactory factory;
	static {
		String resource = "conf/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			factory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch (IOException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<PetVo> getPetAll() {
		SqlSession session = factory.openSession();
		List<PetVo> all = null;
		try {
			all = session.selectList("memberMapper.PetView");
			System.out.println(all.size());
		}finally {
			session.close();
		}
		return all;
	}

	@Override
	public int getPetInsert(PetVo petVo) {
		SqlSession session = factory.openSession();
		int all = 0;
		try {
			all = session.insert("memberMapper.PetInsert");
			if (all > 0) {
				session.commit();
			}
		}catch (Exception e) {
			e.fillInStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		return all;
	}

	@Override
	public int getPetDelete(String p_name) {
		SqlSession session = factory.openSession();
		int all = 0;
		try {
			all = session.delete("memberMapper.PetDelete",p_name);
			if (all>0) {
				session.commit();
			}
		}catch (Exception e) {
				session.rollback();
				e.fillInStackTrace();
		}finally {
			session.close();
		}
		return all;
	}

	@Override
	public int getPetUpdate(PetVo petVo) {
		SqlSession session = factory.openSession();
		int all = 0;
		try {
			all = session.update("memberMapper.memberUpdate",petVo);
			if(all > 0) {
				session.commit();
			}
		}catch(Exception e) {
			session.rollback();
		}finally {
			session.close();
		}
		return all;
	}
}

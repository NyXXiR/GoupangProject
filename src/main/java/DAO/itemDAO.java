package DAO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import mybatis.Mybatis;

public class itemDAO {


  SqlSessionFactory sqlSessionFactory = Mybatis.getSqlSessionFactory();
  SqlSession session;

  public itemDAO() {
    session = sqlSessionFactory.openSession(true);
  }

  public String findAll() {
    return session.selectOne("Mapper.fineAll");
  }
}

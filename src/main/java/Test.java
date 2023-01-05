import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import DAO.itemDAO;
import model.itemVO;
import mybatis.Mybatis;

public class Test {

  public static void main(String[] args) {
    // TODO Auto-generated method stub

    SqlSessionFactory sqlSessionFactory = Mybatis.getSqlSessionFactory();
    SqlSession session;
    session = sqlSessionFactory.openSession(true);

    itemVO vo = new itemVO("name",3000,0,"lgh0334","toy");
    int n=session.insert("add", vo);
    
    if(n>0) {
      session.commit();
      System.out.println("추가 성공");
    }else {
      session.rollback();
      System.out.println("추가 실패");
      
    }
    
    
//    int n=  session.insert("add", vo);
    
  }

}

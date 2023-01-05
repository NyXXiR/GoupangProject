import DAO.itemDAO;

public class Test {

  public static void main(String[] args) {
    // TODO Auto-generated method stub

    itemDAO dao = new itemDAO();
    String name = dao.findAll();
    System.out.println(name);
  }

}

package gogoinfoDAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cartVO.CartVO;
import gogoDBConn.GogoDBConn;
import reviewVO.ReviewVO;




public class GogoInfoDAO {

   private Connection con;//
   PreparedStatement ps = null;// 
   PreparedStatement ps1 = null;
   ResultSet rs = null;//
   
   //************
   public GogoInfoDAO() throws ClassNotFoundException, SQLException{
      con = new GogoDBConn().getConnection();// 
   }
   
   public boolean insert_customer(String id1, String pw1, String name1, String birth1, String gender1, 
         String address1, String phone1, HttpServletRequest request, 
         HttpServletResponse response)throws SQLException, ServletException, IOException {
      
      String sql = "insert into customer values(?,?,?,?,?,?,?)";
      String sql1 = "select * from customer";
      int year = Integer.parseInt(birth1.substring(0,4));
      int month = Integer.parseInt(birth1.substring(4,6));//
      int day = Integer.parseInt(birth1.substring(6,8));//
      Date d = new Date(year, month, day);
      
      if(year >= 2002) {
         request.getRequestDispatcher("joinfail.jsp").forward(request, response);
         con.close();
         ps.close();
         rs.close();
      }
      ps = con.prepareStatement(sql1);
      rs = ps.executeQuery();
      
      String id = null;
      while(rs.next()) {
         
         id = rs.getString("id");
         if(id1.equals(id)) {
            request.getRequestDispatcher("confirm.jsp").forward(request, response);
            con.close();
            ps.close();
            rs.close();
         }
      }
      
      try {
         ps = con.prepareStatement(sql);
         ps.setString(1, id1);
         ps.setString(2, pw1);
         ps.setString(3, name1);
         ps.setDate(4,d);
         ps.setString(5, gender1);
         ps.setString(6, address1);
         ps.setString(7, phone1);
         
         ps.executeUpdate();
         
         request.getRequestDispatcher("joinsuccess.jsp").forward(request, response);
      } catch (SQLException e) {
         System.out.println("insert Exception");
         return false;
      }
      
      return true;
   }
   
   public boolean login_customer(String id, String pw, HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
      
      String sql = "select * from customer";
      String id1 = null;
      String pw1 = null;
      try {
         ps = con.prepareStatement(sql);
         rs = ps.executeQuery();
         while(rs.next()) {
             id1 = rs.getString("id");
             pw1 = rs.getString("pw");
         if(id.equals(id1) && pw.equals(pw1)) {
            request.getRequestDispatcher("loginsuccess.jsp").forward(request, response);   
         }
      }
         request.getRequestDispatcher("loginfail.jsp").forward(request, response);
         
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
         return false;
      }
      
      return true;
   }
   
   public boolean insert_cart(String sesid, String product, int count, int price, 
         HttpServletRequest request, HttpServletResponse response) 
               throws ServletException, IOException, SQLException {
      
      String sql ="insert into cart values(?,?,?,?)";
      String sql1 = "select * from cart where product = ?";
      String sql2 = "update cart set id = ?, product = ?, count = ?, price = ?";
      
      
      ps1 = con.prepareStatement(sql1);
      
      ps1.setString(1, product);
      rs = ps1.executeQuery();
      
      if(rs.next()) {
         ps = con.prepareStatement(sql2);
         int count1 = rs.getInt("count");
         //int price1 = rs.getInt("price");
         ps.setString(1, sesid);
         ps.setString(2, product);
         ps.setInt(3, (count + count1));
         ps.setInt(4, price);
         
         ps.executeUpdate();
      }else {
      
         ps = con.prepareStatement(sql);
         ps.setString(1, sesid);
         ps.setString(2, product);
         ps.setInt(3, count);
         ps.setInt(4, price);
         
         ps.executeUpdate();
      }   
         
         
         //request.getRequestDispatcher("cartsuccess.jsp").forward(request, response);
      
      
      return true;
   }
   
   public ArrayList<CartVO> getcart(HttpServletRequest request, HttpServletResponse response) 
         throws SQLException, ServletException, IOException{
      ArrayList<CartVO> carray = new ArrayList<CartVO>();
      String sql = "select * from cart where id=?";
      
      HttpSession session = request.getSession();
      String sesid = (String)session.getAttribute("sid");
      
      ps = con.prepareStatement(sql);
      ps.setString(1, sesid);
      rs = ps.executeQuery();
      
      while(rs.next()) {
         String id = rs.getString("id");
         String product = rs.getString("product");
         int count = rs.getInt("count");
         int price = rs.getInt("price");
         
         
         CartVO cvo = new CartVO(id,product,count,price);
         carray.add(cvo);
         
      }
      //request.getRequestDispatcher("cart.jsp").forward(request, response);
      
      return carray;
   }
   
   public boolean deletecart(String product) {
      String sql = "delete from cart where product = ?";
      try {
         ps = con.prepareStatement(sql);
         ps.setString(1, product);
         ps.executeUpdate();
   } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
   }
      
      return true;
   }
   
   
   public boolean insert_review(String id, String product, String star, String text) throws SQLException {
      String sql = "insert into review values(?,?,?,?)";
      
      ps = con.prepareStatement(sql);
      ps.setString(1, id);
      ps.setString(2, product);
      ps.setString(3, text);
//      ps.setString(3, d);
      ps.setString(4, star);
      ps.executeUpdate();
      
     
      return true;
      
     
   }//insert_review - end
   
   public ArrayList<ReviewVO> getreview(HttpServletRequest request, HttpServletResponse response) throws SQLException{
      ArrayList<ReviewVO> rarray = new ArrayList<ReviewVO>();
      
      String sql = "select * from review";
         
         /*HttpSession session = request.getSession();
         String sesid = (String)session.getAttribute("sid");*/
         
         ps = con.prepareStatement(sql);
        // ps.setString(1, product);
         rs = ps.executeQuery();
         
         while(rs.next()) {
            String id = rs.getString("id");
            String product2 = rs.getString("product");
            String text = rs.getString("text");
            String star = rs.getString("star");
            
            
            ReviewVO rvo = new ReviewVO(id,product2,text,star);
            rarray.add(rvo);
      
         }
         return rarray;
     }
    
   





}







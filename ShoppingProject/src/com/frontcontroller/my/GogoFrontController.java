package com.frontcontroller.my;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cartVO.CartVO;
import gogoinfoDAO.GogoInfoDAO;
import reviewVO.ReviewVO;

/**
 * Servlet implementation class GogoFrontController
 */
@WebServlet("*.do")
public class GogoFrontController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GogoFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @param session 
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) 
         throws ServletException, IOException {
      // TODO Auto-generated method stub
      //response.getWriter().append("Served at: ").append(request.getContextPath());
      
      request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
      
      String c = request.getRequestURI().substring(request.getContextPath().length());
      
      String str = null;
      
      switch(c) {
      case  "/gogoInsert.do":
         String id1 = request.getParameter("id");
         String pw1 = request.getParameter("pw");
         String name1 = request.getParameter("name");
         String birth1 = request.getParameter("birth");
         String gender1 = request.getParameter("gender");
         String address1 = request.getParameter("address");
         String phone1 = request.getParameter("phone");
         
         GogoInfoDAO godao = null;
         try {
            godao = new GogoInfoDAO();
         } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         
         try {
            godao.insert_customer(id1, pw1, name1, birth1, gender1, address1, phone1, request, response);
         } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         //str="";
         break;
      
         
      case "/gogoUpdate.do":
      
         
      case "/gogoLogin.do":
         String id2 = request.getParameter("id");
         String pw2 = request.getParameter("pwd");
         
         //GogoInfoVO govo = new GogoInfoVO();
         GogoInfoDAO godao1 = null;
         try {
            godao1 = new GogoInfoDAO();
         } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         godao1.login_customer(id2, pw2, request, response);
         //str="";
         break;
      
         
      case "/insertCart.do":
         int count = Integer.parseInt(request.getParameter("count"));
         int price = Integer.parseInt(request.getParameter("price"));
         String product = request.getParameter("product");
         
         HttpSession session = request.getSession();
         String sesid = (String)session.getAttribute("sid");
         
         
         GogoInfoDAO gogodao2 = null;
         try {
            gogodao2 = new GogoInfoDAO();
            gogodao2.insert_cart(sesid, product, count, price, request, response);
         } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         str="cartsuccess.jsp";
         break;
         
      case "/getCart.do":
         GogoInfoDAO godao3 = null;
         try {
            godao3 = new GogoInfoDAO();
         } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         
         ArrayList<CartVO> arrcart = null;
         /*HttpSession session1 = request.getSession();
         String sesid1 = (String)session1.getAttribute("sid");*/
         
         try {
            arrcart = godao3.getcart(request, response);
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         
         request.setAttribute("clist", arrcart);
         str = "cart.jsp";
         break;
         
      case "/delete.do":
         GogoInfoDAO godao4 = null;
         String product1 = request.getParameter("product");
         try {
            godao4 = new GogoInfoDAO();
         } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         try {
            godao4.deletecart(product1);
         } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         str="deletesuccess.jsp";
         break;
         
         
         
      case "/review.do":
         GogoInfoDAO godao5 = null;
         String star = request.getParameter("point");
         String review1 = request.getParameter("review");
         String product2 = request.getParameter("product");
//          Date d = new Date();
//          String d1 = d.toLocaleString();
         HttpSession session1 = request.getSession();
          String sesid1 = (String)session1.getAttribute("sid");
          
         try {
         godao5 = new GogoInfoDAO();
         
         godao5.insert_review(sesid1, product2, star, review1);
      } catch (ClassNotFoundException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } 
         
         /*HttpSession session2 = request.getSession();
         session2.setAttribute("cproduct", product2);*/
         
         ArrayList<ReviewVO> rvo = null;
        
           try {
         rvo = godao5.getreview(request, response);
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
         
         
          
         
         str = "reviewsuccess.jsp";
          
         break;
         
         
     
          
      }//switch case -end 
      
      
      
      
      RequestDispatcher rd1 = request.getRequestDispatcher(str);
      rd1.forward(request, response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}
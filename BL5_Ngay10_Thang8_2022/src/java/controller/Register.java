/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.AccountDAO;
import dal.GroupDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Account;
import model.Group;

/**
 *
 * @author Admin
 */
@WebServlet(name="Register", urlPatterns={"/register"})
public class Register extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        GroupDAO d = new GroupDAO();
        ArrayList<Group> groups = d.getGroups();
        request.setAttribute("groups", groups);
        request.getRequestDispatcher("register.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String[] gids = request.getParameterValues("gid");
//        ArrayList<Group> groups = new ArrayList<>();
//        if(gids !=null)
//        {
//            for (String gid : gids) {
//                int id = Integer.parseInt(gid);
//                Group g = new Group();
//                g.setId(id);
//                groups.add(g);
//            }
//        }
//        Account account = new Account();
//        account.setUsername(username);
//        account.setPassword(password);
//        account.setGroups(groups);
//        AccountDBContext db = new AccountDBContext();
//        db.insert(account);
//        response.getWriter().println("inserted successful!");
//    }
          String username = request.getParameter("username");
          String password = request.getParameter("password");
          String[] gids = request.getParameterValues("gid");
          ArrayList<Group> group = new ArrayList<>();
          if(gids != null){
              for (String gid : gids){
                  int id = Integer.parseInt(gid);
                  Group g = new Group();
                  g.setId(id);
                  group.add(g);
              }
          }
          Account account = new Account();
          account.setUsername(username);
          account.setPassword(password);
          account.setGroups(group);
          AccountDAO d = new AccountDAO();
          d.insert(account);
          response.getWriter().println("created successfull!");
          
          
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

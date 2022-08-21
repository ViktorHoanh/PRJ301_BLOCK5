/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.EmployeeDB;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Employee;

/**
 *
 * @author Admin
 */
@WebServlet(name="GetTimesheet", urlPatterns={"/gettimesheet"})
public class GetTimesheet extends HttpServlet {
   
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
            out.println("<title>Servlet GetTimesheet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GetTimesheet at " + request.getContextPath () + "</h1>");
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
//        Date today = new Date();
//        today = DateTimeHelper.removeTime(today);
//        int dayOfMonth = DateTimeHelper.getDayOfMonth(today);
//        Date begin = DateTimeHelper.addDays(today, -1*(dayOfMonth-1));
//        Date end = DateTimeHelper.addDays(DateTimeHelper.addMonths(begin, 1),-1);
//        ArrayList<Date> dates = DateTimeHelper.getDates(begin, end);
//        EmployeeDBContext db = new EmployeeDBContext();
//        ArrayList<Employee> employees = db.getEmployees(begin, DateTimeHelper.addDays(end,1));
//        request.setAttribute("dates", dates);
//        request.setAttribute("dates", dates);
//        request.setAttribute("employees", employees);
//        request.getRequestDispatcher("view/report.jsp").forward(request, response);
          EmployeeDB db = new EmployeeDB();
          ArrayList<Employee> employees = db.getAllEmployee();
          request.setAttribute("employees", employees);
          request.getRequestDispatcher("Home.jsp").forward(request, response);
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
        processRequest(request, response);
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

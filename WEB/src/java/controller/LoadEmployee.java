/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.EmployeeDB;
import dal.TimeSheet;
import helper.DateTimeHelper;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Employee;
import model.Timesheet;
import model.Working;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoadEmployee", urlPatterns = {"/loademployees"})
public class LoadEmployee extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadEmployee</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadEmployee at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Home.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String m = request.getParameter("months");
        String[] list = m.split("-");
        int year = Integer.parseInt(list[0]);
        int month = Integer.parseInt(list[1]);
        Date today = DateTimeHelper.removeTime(year, month - 1);
        int dayOfMonth = DateTimeHelper.getDayOfMonth(today);
        Date begin = DateTimeHelper.addDays(today, -1 * (dayOfMonth - 1));
        Date end = DateTimeHelper.addDays(DateTimeHelper.addMonths(begin, 1), -1);
        ArrayList<Date> dates = DateTimeHelper.getDates(begin, end); 
        request.setAttribute("dates", dates);
        EmployeeDB db = new EmployeeDB();
        TimeSheet ts = new TimeSheet();
        ArrayList<Employee> employees = db.getAllEmployee();
        List<Timesheet> timesheet = ts.getTimeSheet(month+"");
//        HttpSession session = request.getSession();     
        request.setAttribute("timesheets", timesheet);
        request.setAttribute("employees", employees);
//        List<Timesheet> timesheets2 = ts.getTimeTotalWorkingById(month+"");
//        request.setAttribute("time2", timesheets2);
        List<Working> work = new ArrayList<>();
        for (Employee e: employees) {
            int count = 0;
            int count1 = 0;
            int count2 = 0;
            int count3 = 0;
            double count4 = 0;
            Working working = new Working();
                 working.setEid(e.getEid());
            for (Timesheet t: timesheet){
               if( e.getEid() == t.getEid() && t.getStatus()== 1 ){
                    count = count+1;
                }
               if(e.getEid() == t.getEid() && t.getStatus()== 5){
                   count1 = count1+1;
               }
               if(e.getEid() == t.getEid() && t.getStatus()== 2){
                   count2 = count2+1;
               }
               if(e.getEid() == t.getEid() && t.getStatus()== 3){
                   count3 = count3+1;
               }
            }
           count4 = count + count1 + count2 + count3/2;
           working.setNgaycong(count);
           working.setCongchunhat(count1);
           working.setHuongluong100(count2);
           working.setHuongluong50(count3);
           working.setTongcong(count4);
           work.add(working);
        }
//        PrintWriter out = response.getWriter();
//        for(Working w: work){
//            out.println(w);
//        }
//        HttpSession session1 = request.getSession();
        request.setAttribute("working", work);
        YearMonth yearMonthObject = YearMonth.of(year, month);
        int daysInMonth = yearMonthObject.lengthOfMonth();
        request.setAttribute("daymonth", daysInMonth);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

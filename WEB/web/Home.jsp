<%-- 
    Document   : newjsp
    Created on : Aug 9, 2022, 1:26:24 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Hoanh's website</title>
    </head>
    <body>
        <style>
            body {
                background-image: url(https://img2.thuthuatphanmem.vn/uploads/2018/11/30/hinh-nen-dep-mau-trang_104324637.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                font-size: 13px;
                padding-bottom: 100px;
            }

            h3 {
                margin: 10px;
            }

            h1 {
                text-align: center;
                background-color: darkcyan;
                padding: 10px;
                margin: 10px;
            }

            table {
                margin: 10px;
                border-spacing: 0;
                margin-bottom: 50px;
            }

            th,
            td {
                height: 30px;
                padding: 3px 2px;
                text-align: center;
                border: 1px solid #000;
            }
            .content p {
                transform: rotate(270deg);
                padding: 20px 0px;
            }

            .sunday {
                background-color: aquamarine;
                color: red;
            }

            .button {
                text-decoration: none;
                color: #000;
                background-color: darkseagreen;
                padding: 20px;
                border-radius: 10px;
                font-size: 18px;
                border: 1px solid darkseagreen;
            }

            .button:hover {
                background-color: #fff;
            }

            .function {
                display: flex;
                justify-content: space-between;
            }

            .signature--area {
                display: flex;
                flex-direction: column;
                gap: 10px;
            }

            .signature--form {
                display: flex;
                gap: 10px;
            }

            .signature--input {
                display: flex;
                flex-direction: column;
                border: 1px solid orange;
                padding: 10px;
                border-radius: 10px;
                gap: 10px;
                font-size: 16px;
            }

            .signature--input label {
                text-align: center;
            }

            .signature--input input {
                height: 100px;
                text-align: center;
                border: transparent;
            }

            .submit {
                background-color: orchid;
                color: #000;
                text-decoration: none;
                padding: 20px;
                font-size: 17px;
                border-radius: 10px;
                cursor: pointer;
            }

            .time {
                display: flex;
                gap : 10px;
                margin: 10px;
                font-size: 16px;
                align-items: center;
            }

            .time select {
                height: 40px;
                border-radius: 10px;
                cursor: pointer;
            }

            #month {
                width: 50px;
                text-align: center;
            }

            .time button {
                background-color:palegreen;
                border: none;
                width: 60px;
                border-radius: 10px;
                font-size: 16px;
                cursor: pointer;
                height: 40px;
                

            }
        </style>
        <jsp:useBean id="dt" class="helper.DateTimeHelper"/>

        <h3>Công ty TNHH MTV</h3>

        <h1>Bảng chấm công</h1>

        <form class="time" action="loademployees" method="post">
            <p>Tháng</p>
            <input type="month" id="months" name="months">
            <button type="submit">Go</button>
        </form>

        <table class="table">
            <tr>
                <th rowspan="3">TT</th>
                <th rowspan="3">Họ và tên</th>
                <th rowspan="3">Chức vụ</th>
                <th colspan="${daymonth}">Ngày trong tháng/Thứ trong tuần</th>
                <th colspan="4" >Quy ra công</th>
                <th rowspan="3" >Tổng cộng</th>
            </tr>
            <tr>
                <c:forEach items="${requestScope.dates}" var="d">
                    <th
                        <c:if test="${ dt.getDayOfWeek(d) eq 7}">
                            style="background-color: #f2f2c0;"
                        </c:if>
                        >
                        <fmt:formatDate pattern = "dd" 
                                        value = "${d}" /> <br/>
                    </th>
                </c:forEach>
                <th rowspan="2">công ngày</th>
                <th rowspan="2">công chủ nhật</th>
                <th rowspan="2">hưởng lương 100%</th>
                <th rowspan="2">hưởng lương 50%</th>
            </tr>
            <tr>
                <c:forEach items="${requestScope.dates}" var="d">
                    <td
                        <c:if test="${ dt.getDayOfWeek(d) eq 7 }">
                            style="background-color: #f2f2c0;"
                        </c:if>
                        >

                        <fmt:formatDate pattern = "EEE" 
                                        value = "${d}" />
                    </td>
                </c:forEach>
            </tr>

            <c:forEach items="${requestScope.employees}" var="e">
                <tr>
                    <td>${e.eid}</td>
                    <td>${e.ename}</td>
                    <td>${e.pid}</td>
                    <c:forEach items="${requestScope.dates}" var="d">
                        <td 
                            <c:if test="${ dt.getDayOfWeek(d) eq 7}">
                                style="background-color: #f2f2c0;"
                            </c:if>
                            >
                           <c:forEach items="${sessionScope.timesheets}" var="t">
                               <c:if test="${dt.getDayOfMonth(dt.addDays(t.date, 0)) eq dt.getDayOfMonth(d) && e.eid eq t.eid}">
                                   ${t.status}
                               </c:if>
                                    
                            </c:forEach>                          
                        </td>
                    </c:forEach>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                 
                </tr>
            </c:forEach>


        </table>
        <br>
        <div id = "main">
            <div id="kyhieu">
                <h2>Ký Hiệu Chấm Công</h2>
                <table class="table">
                    <tr style="background-color: #f2f2c0">
                            <th>Đi Làm</th>
                            <th style="font-size: 150%">  1  </th>
                        </tr>
                        <tr>
                            <th>Nghỉ hưởng lương 100%</th>
                            <th style="font-size: 150%">          2            </th>
                        </tr>
                        <tr style="background-color: #f2f2c0">
                            <th>Nghỉ hưởng lương 50%</th>
                            <th style="font-size: 150%">3</th>
                        </tr>
                        <tr>
                            <th>Không đi làm</th>
                            <th style="font-size: 150%">4</th>
                        </tr>
                </table>
            </div>
        </div>

            <div class="function">
                <div class="button--area">
                    <a href="loadsalary" class="button">Đến trang tính lương</a>
                    <a href="AbsentStatus.jsp" class="button">Đến trang chấm nghỉ</a>
                </div>
                <form class="signature--area">
                    <div class="signature--form">
                        <div class="signature--input">
                            <label for="">Người chấm công</label>
                            <input type="text" placeholder="(Ký họ tên)" />
                        </div>
                        <div class="signature--input">
                            <label for="">Giám đốc</label>
                            <input type="text" placeholder="(Ký họ tên)" />
                        </div>
                    </div>
                </form>
            </div>
    </body>
</html>

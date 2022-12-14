<%-- 
    Document   : Salary
    Created on : Aug 19, 2022, 12:45:20 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Salary</title>
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
                background-color: #FFFFCC;
                padding: 10px;
                margin: 10px;
                border: 3px doule #66CCFF;
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
                background-color: #EEEEE;
                padding: 20px;
                border-radius: 10px;
                font-size: 18px;
                border: 3px solid #66CCFF;
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

            .submit--area {
                display: flex;
                justify-content: center;
            }

            /*      .submit {
                    background-color: orchid;
                    color: #000;
                    text-decoration: none;
                    padding: 20px;
                    font-size: 17px;
                    border-radius: 10px;
                    cursor: pointer;
                  }*/

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
            .heading {
                background-color: #d4eeee;
            }
            .data {
                background-color: #edeef1;
            }
        </style>

        <h3>C??ng ty TNHH MTV Chinh Thao</h3>

        <h1>B???ng ti??nh l????ng</h1>

        <form class="time" action="loadsalary" method="post">
            <p>Th??ng</p>
            <input type="month" id="months" name="months">
            <button type="submit">Go</button>
        </form>
        <table class="table">
            <tr class="heading">
                <th rowspan="2">TT</th>
                <th rowspan="2">H??? v?? t??n</th>
                <th rowspan="2">Ch???c v???</th>
                <th rowspan="2">L????ng c?? ba??n</th>
                <th colspan="4" >Quy ra c??ng</th>
                <th rowspan="2" >T????ng c????ng</th>
                <th rowspan="2">Phu?? c????p </th>
                <th rowspan="2">T????ng thu nh????p</th>
                <th colspan="1">Ca??c khoa??n kh????u tr????</th>      
                <th rowspan="2">Th????c li??nh</th>
                <th rowspan="2">Ky?? nh????n</th>
            </tr>
            <tr class="heading    ">
                <th>c??ng nga??y</th>
                <th>c??ng chu?? nh????t</th>
                <th>h??????ng l????ng 100%</th>
                <th>h??????ng l????ng 50%</th>
                <th>BHXH</th>
            </tr>


            <c:forEach items="${requestScope.employees}" var="e" >
                <tr>
                    <td>${e.eid}</td>
                    <td>${e.ename}</td>
                    <c:forEach items="${requestScope.positions}" var="p">
                        <c:if test="${p.pid eq e.pid}">
                            <td>${p.pname}</td>
                            <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${p.basesalary}"/></td>
                            <c:forEach items="${requestScope.working}" var="w">
                                <c:if test="${e.eid == w.eid}">
                                    <td>${w.ngaycong}</td>
                                    <td>${w.congchunhat}</td>
                                    <td>${w.huongluong100}</td>
                                    <td>${w.huongluong50}</td>
                                    <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${w.tongcong}"/></td>
                                </c:if>
                            </c:forEach>

                            <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${p.allowancesalary}"/></td>
                            <c:forEach items="${requestScope.salary}" var="s">
                                <c:if test="${e.eid == s.eid}">
                                    <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${s.tongthunhap}"/></td>
                                </c:if>
                            </c:forEach>
                            <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${p.insurance}"/></td>
                            <c:forEach items="${requestScope.salary}" var="s">
                                <c:if test="${e.eid == s.eid}">
                                    <td><fmt:formatNumber type="number" maxFractionDigits="0" value="${s.thuclinh}"/></td>
                                </c:if>
                            </c:forEach>
                            <td>${e.ename}</td>
                        </c:if>
                    </c:forEach>
                </tr>
            </c:forEach>


        </table>

        <div class="function">
            <div class="button--area">
                <a href="loademployees" class="button">Tr???? v???? trang ch???m c??ng</a>
                <a href="AbsentStatus.jsp" class="button">?????n trang ch???m ngh???</a>
            </div>
            <form class="signature--area">
                <div class="signature--form">
                    <div class="signature--input">
                        <label for="">K???? toa??n</label>
                        <input type="text" placeholder="(K?? h??? t??n)" />
                    </div>
                    <div class="signature--input">
                        <label for="">Gi??m ?????c</label>
                        <input type="text" placeholder="(K?? h??? t??n)" />
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>

<%-- 
    Document   : AbsentStatus
    Created on : Aug 19, 2022, 12:46:23 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>AbsentStatus</title>
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
                background-color: #d4eeee;
                padding: 10px;
                margin: 10px;
                border: 3px doule #66CCFF;
            }

            table {
                font-size: 200%;
                margin-top: 80px;
                margin-left: 200px;
                border-spacing: 3;
                border: double #d4eeee;
                margin-bottom: 50px;
                align-content: center;
                align-self: center;
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
                margin-left: 200px;
                text-decoration: none;
                color: #000;
                background-color: #d4eeee;
                padding: 20px;
                border-radius: 10px;
                font-size: 18px;
                border: 3px solid #66CCFF;
            }
            .button1 {
                margin-left: 25px;
                text-decoration: none;
                color: #000;
                background-color: #d4eeee;
                padding: 20px;
                border-radius: 10px;
                font-size: 18px;
                border: 3px solid #66CCFF;
            }

            .button:hover {
                background-color: #fff;
            }
            .button1:hover {
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
            .data {
                background-color: #edeef1;
            }
        </style>
        <h3>Công ty TNHH MTV</h3>

        <h1>Bảng chấm nghỉ</h1>
        <table class="table">
            <tr>
                <th>EmployeeID</th>
                <th>EmployeeName</th>
                <th>FromDate</th>
                <th>ToDate</th>
                <th>Reason</th>
                <th>Response</th>
            </tr>
            <tr class="data">
                <td>2</td>
                <td>Nguyễn Thị Năm</td>
                <td>2022-02-01</td>
                <td>2022-02-05</td>
                <td>Cúm nặng</td>
                <td>accepted</td>
            </tr>
            <tr class="data">
                <td>5</td>
                <td>Nguyễn Ngọc Quý</td>
                <td>2022-03-10</td>
                <td>2022-03-11</td>
                <td>Có việc riêng cần giải quyết </td>
                <td>denied</td>
            </tr>
            <tr class="data">
                <td>2</td>
                <td>Nguyễn Thị Năm</td>
                <td>2022-02-01</td>
                <td>2022-02-05</td>
                <td>Cúm nặng</td>
                <td>accepted</td>
            </tr>
            <tr class="data">
                <td>5</td>
                <td>Nguyễn Ngọc Quý</td>
                <td>2022-03-10</td>
                <td>2022-03-11</td>
                <td>Có việc riêng cần giải quyết </td>
                <td>denied</td>
            </tr>
            <tr class="data">
                <td>5</td>
                <td>Nguyễn Ngọc Quý</td>
                <td>2022-03-10</td>
                <td>2022-03-11</td>
                <td>Có việc riêng cần giải quyết </td>
                <td>denied</td>
            <tr class="data">
                <td>2</td>
                <td>Nguyễn Thị Năm</td>
                <td>2022-02-01</td>
                <td>2022-02-05</td>
                <td>Cúm nặng</td>
                <td>accepted</td>
            </tr>
            <tr class="data">
                <td>2</td>
                <td>Nguyễn Thị Năm</td>
                <td>2022-02-01</td>
                <td>2022-02-05</td>
                <td>Cúm nặng</td>
                <td>accepted</td>
            </tr>
            <tr class="data">
                <td>2</td>
                <td>Nguyễn Thị Năm</td>
                <td>2022-02-01</td>
                <td>2022-02-05</td>
                <td>Cúm nặng</td>
                <td>accepted</td>
            </tr>
            <tr class="data">
                <td>2</td>
                <td>Nguyễn Thị Năm</td>
                <td>2022-02-01</td>
                <td>2022-02-05</td>
                <td>Cúm nặng</td>
                <td>accepted</td>
            </tr>
        </tr>
    </table>
    <div class="function">
        <div class="button--area">
            <a href="Salary.jsp" class="button">Đến trang tính lương</a>
            <a href="Home.jsp" class="button1">Đến trang chấm công</a>
        </div> 
    </div>
</body>
</html>

<%-- 
    Document   : Salary
    Created on : Aug 19, 2022, 12:45:20 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <h3>Công ty TNHH MTV</h3>

    <h1>Bảng tính lương</h1>

    <form class="time">
      <p>Tháng</p>
      <select name="month" id="month">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
      </select>
      <button type="submit">Go</button>
    </form>

    <table class="table">
      <tr>
        <th rowspan="3">TT</th>
        <th rowspan="3">Họ và tên</th>
        <th rowspan="3">Chức vụ</th>
        <th rowspan="3">Lương cơ bản</th>
        <th colspan="2" >Quy ra công</th>
        <th colspan="3" >Tiền lương</th>
        <th colspan="1">Tổng thu nhập</th>
        <th colspan="2">Các khoản khấu trừ</th>      
        <th rowspan="3">Thực lĩnh</th>
        <th rowspan="3">Ký nhận</th>
      </tr>
      <tr>
        <th>công ngày</th>
        <th>công chủ nhật</th>
        <th>hưởng lương 100%</th>
        <th>hưởng lương 50%</th>
        <th>hưởng phụ cấp</th>
        <th></th>
        <th>BHXH</th>
        <th>Thuế</th>
      </tr>
      <tr>
        <th class="content"><p></p></th>
        <th class="content"><p></p></th>
        <th class="content"><p></p></th>
        <th class="content"><p></p></th>
        <th class="content"><p></p></th>
        <th class="content"><p></p></th>
        <th class="content"><p></p></th>
        <th class="content"><p></p></th>
      </tr>
      <tr>
        <th>I</th>
        <th>Bộ phận quản lý</th>
        <td></td>
        <td></td>
        <td ></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>

      </tr>
      <tr>
        <td>1</td>
        <td>Đào Văn Chỉnh</td>
        <td>Giám đốc</td>
        <td></td>
        <td></td>
        <td ></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Nguyễn Thị Năm</td>
        <td>Kế toán</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <th>II</th>
        <th>Bộ phận bán hàng</th>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>1</td>
        <td>Đào Đình Cử</td>
        <td>Lái xe</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Bùi Thị chi</td>
        <td>Bán hàng</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>3</td>
        <td>Nguyễn Ngọc Quý</td>
        <td>Kinh doanh</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>4</td>
        <td>Nguyễn Thị Hải Ánh</td>
        <td>Nhân viên</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>5</td>
        <td>Nguyễn Thị Ngọc Ánh</td>
        <td>Nhân viên</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </table>

    <div class="function">
      <div class="button--area">
        <a href="Home.jsp" class="button">Trở về trang tính lương</a>
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
    </div>
    </body>
</html>

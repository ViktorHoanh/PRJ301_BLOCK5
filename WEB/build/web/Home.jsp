<%-- 
    Document   : newjsp
    Created on : Aug 9, 2022, 1:26:24 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <h3>Công ty TNHH MTV</h3>

    <h1>Bảng chấm công</h1>

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
        <th colspan="31">Ngày trong tháng/Thứ trong tuần</th>
      </tr>
      <tr>
        <th>01</th>
        <th class="sunday">02</th>
        <th>03</th>
        <th>04</th>
        <th>05</th>
        <th>06</th>
        <th>07</th>
        <th>08</th>
        <th class="sunday">09</th>
        <th>10</th>
        <th>11</th>
        <th>12</th>
        <th>13</th>
        <th>14</th>
        <th>15</th>
        <th class="sunday">16</th>
        <th>17</th>
        <th>18</th>
        <th>19</th>
        <th>20</th>
        <th>21</th>
        <th>22</th>
        <th class="sunday">23</th>
        <th>24</th>
        <th>25</th>
        <th>26</th>
        <th>27</th>
        <th>28</th>
        <th>29</th>
        <th class="sunday">30</th>
        <th>31</th>
      </tr>
      <tr>
        <th class="content"><p>T.Bảy</p></th>
        <th class="content sunday"><p>C.Nhật</p></th>
        <th class="content"><p>T.Hai</p></th>
        <th class="content"><p>T.Ba</p></th>
        <th class="content"><p>T.Tư</p></th>
        <th class="content"><p>T.Năm</p></th>
        <th class="content"><p>T.Sáu</p></th>
        <th class="content"><p>T.Bảy</p></th>
        <th class="content sunday"><p>C.Nhật</p></th>
        <th class="content"><p>T.Hai</p></th>
        <th class="content"><p>T.Ba</p></th>
        <th class="content"><p>T.Tư</p></th>
        <th class="content"><p>T.Năm</p></th>
        <th class="content"><p>T.Sáu</p></th>
        <th class="content"><p>T.Bảy</p></th>
        <th class="content sunday"><p>C.Nhật</p></th>
        <th class="content"><p>T.Hai</p></th>
        <th class="content"><p>T.Ba</p></th>
        <th class="content"><p>T.Tư</p></th>
        <th class="content"><p>T.Năm</p></th>
        <th class="content"><p>T.Sáu</p></th>
        <th class="content"><p>T.Bảy</p></th>
        <th class="content sunday"><p>C.Nhật</p></th>
        <th class="content"><p>T.Hai</p></th>
        <th class="content"><p>T.Ba</p></th>
        <th class="content"><p>T.Tư</p></th>
        <th class="content"><p>T.Năm</p></th>
        <th class="content"><p>T.Sáu</p></th>
        <th class="content"><p>T.Bảy</p></th>
        <th class="content sunday"><p>C.Nhật</p></th>
        <th class="content"><p>T.Hai</p></th>
      </tr>
      <tr>
        <th>I</th>
        <th>Bộ phận quản lý</th>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
      </tr>
      <tr>
        <td>1</td>
        <td>Đào Văn Chỉnh</td>
        <td>Giám đốc</td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Nguyễn Thị Năm</td>
        <td>Kế toán</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
      </tr>
      <tr>
        <th>II</th>
        <th>Bộ phận bán hàng</th>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td class="sunday"></td>
        <td></td>
      </tr>
      <tr>
        <td>1</td>
        <td>Đào Đình Cử</td>
        <td>Lái xe</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Bùi Thị chi</td>
        <td>Bán hàng</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>0</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
      </tr>
      <tr>
        <td>3</td>
        <td>Nguyễn Ngọc Quý</td>
        <td>Kinh doanh</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
      </tr>
      <tr>
        <td>4</td>
        <td>Nguyễn Thị Hải Ánh</td>
        <td>Nhân viên</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
      </tr>
      <tr>
        <td>5</td>
        <td>Nguyễn Thị Ngọc Ánh</td>
        <td>Nhân viên</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td class="sunday">1</td>
        <td></td>
      </tr>
    </table>

    <div class="function">
      <div class="button--area">
        <a href="Salary.jsp" class="button">Đến trang tính lương</a>
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

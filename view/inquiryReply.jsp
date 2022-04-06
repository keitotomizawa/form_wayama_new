<%@page contentType="text/html;charset=UTF-8" %>
<%@page import="bean.InquiryInfo"%>
<%
InquiryInfo inquiry = (InquiryInfo)request.getAttribute("inquiry");
%>

<html>
  <head>
    <title>問い合わせ返信</title>
    <link rel ="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
  </head>
  <body>
  <header>
    <h1>神田英会話スクール</h1>
  </header>




  <h2 align = "center">●問い合わせ返信</h2>

    <table align="left">
      <tr>
        <td width="1500"></td>
        <td width="1500">&nbsp;</td>
      </tr>
    </table>

<div align="center">



  <form action="<%=request.getContextPath()%>/inquiryEmail">


    <%
      if (inquiry != null) {

    %>
    <table>
      <tr>
        <td  bgcolor="white" >名前:<%=inquiry.getName() %> </td>
      </tr>
      <tr>
        <td  bgcolor="white" >メールアドレス:<%=inquiry.getEmail() %> </td>
      </tr>
      <tr>
        <td  bgcolor="white" >問い合わせ項目:<%=inquiry.getSelectmenu() %> </td>
      </tr>
      <tr>
        <td>件名：<input type="text" name="title"></td>
      </tr>
      <tr>
        <td align ="left"><textarea name="text" rows="8" cols="80"></textarea>
      </tr>
      <tr>
        <td align = "right" ><input type ="submit" value="送信"></td>
      </tr>
    </table>

    <%
      }
    %>
      <input type="hidden" name="inquiryno" value="<%=inquiry.getInquiryNo() %>">
  </form>
  </div>
    <br>




  </body>
</html>
<%@page contentType="text/html;charset=UTF-8" %>
<%
String error = (String)request.getAttribute("error");
%>



<html>
  <head>
    <title>ログイン画面</title>
    <link rel ="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
  </head>
  <body>
  <header>
    <h1 align = "center">神田英会話スクール</h1>
  </header>


  <br>

  <%
  if (error != null){
  %>
    <h3 ><%=error %></h3>
  <%
  }
  %>




    <h2 align = "center">●ログイン画面</h2>

<div align="center">
    <form action="<%=request.getContextPath()%>/login" method="post">
    <table class="login-table">
      <tr>
        <td >ユーザー</td>
        <td  width="200"><input type="text" name="userid" > </td>
      </tr>
      <tr>
        <td >パスワード</td>
        <td width="200" ><input type="password" name="password" > </td>
      </tr>
    </table>

    <table class="input-table">
      <tr>
        <td>
        <input type ="submit" value="ログイン">
        </td>
      </tr>
    </table>
    </form>
</div>
  </body>
</html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.ArrayList,bean.InquiryInfo"%>
<%
ArrayList<InquiryInfo> list =(ArrayList<InquiryInfo>)request.getAttribute("list");
String detail = (String)request.getAttribute("detail");
%>
<html>
<head>
<title>問合せ一覧</title>
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>
  <header>
    <h1>神田英会話スクール</h1>
  </header>




  <h2 align="center">●お問い合わせ一覧</h2>


  <h3 align="right">
    <a href="<%=request.getContextPath()%>/logout"> ログアウト&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
  </h3>



  <hr align="left" size="2" color="black" width="auto">
  </td>



  <table align="right">
    <tr>
      <td width="1500">&nbsp;</td>
      <td width="1500">&nbsp;</td>
    </tr>
  </table>

  <table align="left">
    <tr>
      <td bgcolor="#6666ff" width="250">No</td>
      <td bgcolor="#6666ff" width="250">名前</td>
      <td bgcolor="#6666ff" width="250">メールアドレス</td>
      <td bgcolor="#6666ff" width="250">電話番号</td>
      <td bgcolor="#6666ff" width="250">種類</td>
      <td bgcolor="#6666ff" width="250">お問い合わせ日時</td>
      <td bgcolor="#6666ff" width="250">お問い合わせ内容</td>
    </tr>


    <%
      if (list != null) {
        for (int i = 0; i < list.size(); i++) {
          InquiryInfo inquiryinfo = (InquiryInfo) list.get(i);
    %>

    <tr>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/inquiryContents?inquiryNo=<%=inquiryinfo.getInquiryNo()%>"><%=inquiryinfo.getInquiryNo() %></a></td>
      <td><%=inquiryinfo.getName() %></td>
      <td><%=inquiryinfo.getEmail() %></td>
      <td><%=inquiryinfo.getNumber() %></td>
      <td><%=inquiryinfo.getSelectmenu() %></td>
      <td><%=inquiryinfo.getDate() %></td>

      <%
        if(inquiryinfo.getText().length() > 20) {
      %>
      <td><%=inquiryinfo.getText().substring(0, 19)%></td>
      <%
        }else {
      %>
        <td><%=inquiryinfo.getText()%></td>
      <%
        }
      %>

      <%
        if(inquiryinfo.getReplyflag() == 0 ) {
      %>

      <td>
        <form action="<%=request.getContextPath() %>/inquiryReply">
          <input type="submit" value="未返信">
          <input type="hidden" name="inquiryNo" value="<%=inquiryinfo.getInquiryNo() %>"></input>
        </form>
      </td>
      <%
        } else {
      %>

      <td style="color:red">返信済み</td>



    </tr>




    <%
        }
      }

    } else {
  %>
  <tr>
    <td align="center" width="200">&nbsp;</td>
    <td align="center" width="200">&nbsp;</td>
    <td align="center" width="200">&nbsp;</td>
    <td align="center" width="250" colspan="2">&nbsp;</td>
  </tr>
  <%


    }
  %>
 </table>


</body>
</html>
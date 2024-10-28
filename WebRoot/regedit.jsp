<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0028)http://csir461.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>电子相册管理系统</TITLE>
<LINK rel=stylesheet type=text/css 
href="photoalbum_files/css.css">


<STYLE type=text/css>
.STYLE1 {
	COLOR: #d77745
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>


<LINK rel=stylesheet type=text/css href="photoalbum_files/css.css">
<STYLE type=text/css>BODY {
	MARGIN: 0px
}
BODY {
	FONT-FAMILY: 宋体
}
TD {
	FONT-FAMILY: 宋体
}
TH {
	FONT-FAMILY: 宋体
}
</STYLE>



<TABLE class=bk border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD vAlign=top>
     
      <LINK rel=stylesheet type=text/css href="photoalbum_files/css.css">
     
      
      
      <jsp:include page="top.jsp"></jsp:include>
                  
                  
                  <%
                  CommDAO dao = new CommDAO();
                   %>
                  
                  
                  
                  
                  
                  
                  
               
      
      
      
      
     
      
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=925 align=center>
        <TBODY>
        <TR>
          <TD vAlign=top>
            <TABLE class=mt border=0 cellSpacing=0 cellPadding=0 width=925>
              <TBODY>
              <TR>
                <TD vAlign=top width=693>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" 
                  align=left>
                    <TBODY>
                    <TR>
                      <TD vAlign=top align=middle>
                      
                       <form action="/photoalbum/photoalbum?ac=regedit" name="f1" method="post">
                      <TABLE border=0 cellSpacing=0 cellPadding=0 
                          width="96%"><TBODY>
                          <TR>
                            <TD>
                              <TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%" align=left>
                                <TBODY>
                                <TR>
                                <TD height=24 background=photoalbum_files/112bg.gif 
                                width=320 align=left>
                                <TABLE border=0 cellSpacing=0 cellPadding=0 
                                width=200 align=left>
                                <TBODY>
                                <TR>
                                <TD width=8 align=left>&nbsp;</TD>
                                <TD class=ls height=24 vAlign=bottom width=174 
                                align=left><STRONG>会员注册</STRONG></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD>
                              <TABLE class=mt border=0 cellSpacing=0 
                              cellPadding=0 width="100%">
                                <TBODY>
                                <TR>
                                <TD align=left vAlign=top>
                                  <TABLE border=0 cellSpacing=0 cellPadding=0 
                                width="100%">
                                    <TBODY>
                                      
                                      
                                       
                                <TR>
                                <TD width="23%" height=30 
                                align=center vAlign=center class=xh>用户名                              </TD>
                                <TD width="55%" height="30" 
                                align=left vAlign=center class=xh><label>
                                  <input type="text" name="uname" id="uname">
                                </label></TD>
                                <TD width="22%" rowspan="3" 
                                align=center vAlign=center class=xh>
                               
                                <%=Info.getImgUpInfo(80) %></TD>
                                </TR>
                                
                                 <TR>
                                <TD height=30 
                                align=center vAlign=center class=xh>密码                                </TD>
                                <TD height=30 
                                align=left vAlign=center class=xh><input type="text" name="upass" id="upass"></TD>
                                 </TR>
                                
                                 <TR>
                                <TD height=30 
                                align=center vAlign=center class=xh>姓名                                </TD>
                                <TD height=30 
                                align=left vAlign=center class=xh><input type="text" name="tname" id="tname"></TD>
                                 </TR>
                                
                                 <TR>
                                <TD height=30 
                                align=center vAlign=center class=xh>性别                                </TD>
                                <TD height=30 colspan="2" 
                                align=left vAlign=center class=xh><label>
                                  <input name="sex" type="radio" id="radio" value="男" checked>
                                男</label>
                                  <input type="radio" name="sex" id="radio2" value="女">
                                  女</TD>
                                 </TR>
                                
                                 <TR>
                                <TD height=30 
                                align=center vAlign=center class=xh>联系方式                                </TD>
                                <TD height=30 colspan="2" 
                                align=left vAlign=center class=xh><input type="text" name="linkphone" id="linkphone"></TD>
                                 </TR>
                                
                                 <TR>
                                <TD height=30 
                                align=center vAlign=center class=xh>身份证号                                </TD>
                                <TD height=30 colspan="2" 
                                align=left vAlign=center class=xh><input name="sfid" type="text" id="sfid" size="30"></TD>
                                 </TR>
                                 
                                  <TR>
                                <TD height=30 
                                align=center vAlign=center class=xh>地址                                </TD>
                                <TD height=30 colspan="2" 
                                align=left vAlign=center class=xh><input name="addrs" type="text" id="addrs" size="40"></TD>
                                 </TR>
                                 
                                   <TR>
                                <TD height=30 
                                align=center vAlign=center class=xh>公开个人信息                             </TD>
                                <TD height=30 colspan="2" 
                                align=left vAlign=center class=xh><label>
                                  <input name="ispub" type="radio" id="radio3" value="否" checked> 
                                  否
</label>
                                  <input type="radio" name="ispub" id="radio4" value="是">
                                  是</TD>
                                 </TR>
                                
                                 <TR>
                                <TD height=38 colspan="3" 
                                align=center vAlign=center class=xh><label>
                                  <input type="submit" name="button" onclick="return check();" id="button" value="注册">&nbsp;&nbsp;&nbsp;
                                  <input type="reset" name="button2" id="button2" value="重置">
                                </label></TD></TR>
                                      </TBODY>
                                  </TABLE></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                      
                      
                       </form>
                      </TD>
                    </TR></TBODY></TABLE></TD>
                
                
               
                
                
                 <jsp:include page="left.jsp"></jsp:include>
                
                
                
                
                
                
                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=950>
        <TBODY>
        <TR>
          <TD>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>




 <jsp:include page="foot.jsp"></jsp:include>



</BODY></HTML>
<script language="javascript">
<%
if(request.getAttribute("error")!=null){
%>
alert("用户名已存在");
<%}%>
<%
if(request.getAttribute("suc")!=null){
%>
alert("注册成功");
<%}%>
</script>

 <script type="text/javascript">
 
 function check()
 {
   if(f1.uname.value=="")
   {
   alert("请输入用户名");
   return false;
   }
   
   if(f1.upass.value=="")
   {
   alert("请输入密码");
   return false;
   }
 }
 
popheight=230;
</script>
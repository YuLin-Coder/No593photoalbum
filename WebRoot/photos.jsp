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
<%
 CommDAO dao = new CommDAO(); 
 %>
 

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
                  if(session.getAttribute("utype")==null){
                  %>
                   <script type="text/javascript">
				 alert("请先登录");
				 window.location.replace("index.jsp");
				 </script>
                  <%
                  } 
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
                                align=left><STRONG>相册信息</STRONG></TD>
                                
                                
                                <%
                                 String id = request.getParameter("id");
                               HashMap almap = dao.getmap(id,"albums");
                                 %>
                                
                                </TR></TBODY></TABLE>
                              
                                
                                </TD></TR></TBODY></TABLE></TD></TR>
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
                                <TD width="18%" rowspan="3" 
                                align=center vAlign=center class=xh><label><img src="upfile/<%=almap.get("filename") %>" height="80" /></label></TD>
                                <TD width="82%" height="30" 
                                align=left vAlign=center class=xh>
                                &nbsp;&nbsp;&nbsp;
                                
                               <strong> <%=almap.get("cname") %> </strong> - <%=almap.get("ctype") %>
                                                             </TD>
                                </TR>
                                
                                 <TR>
                                <TD height=33 
                                align=left vAlign=center class=xh>
                                
                                &nbsp;&nbsp;&nbsp;
                                 会员 &nbsp;<a href="/photoalbum/grzy.jsp?zyuname=<%=almap.get("uname") %>"><%=almap.get("uname") %></a>&nbsp;&nbsp;于&nbsp;&nbsp;<%=almap.get("savetime") %>  发布
                                
                                
                                </TD>
                                 </TR>
                                 <TR>
                                   <TD height=34 
                                align=left vAlign=center class=xh>
             &nbsp;&nbsp;&nbsp;&nbsp;访问权限 : <%=almap.get("isgk") %> &nbsp;&nbsp;
                       总图片数 : <%=dao.getInt("select count(*) from photos where uname='"+almap.get("uname")+"' and ptype='"+almap.get("cname")+"'") %> 张
                             </TD>
                                 </TR>
                                      </TBODY>
                                  </TABLE></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                                
                                
                                
                                
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
                                align=left><STRONG>我的图片</STRONG></TD>
                                
                                
                                
                                
                                </TR></TBODY></TABLE>
                                
                                
                                 
                                
                                
                                </TD></TR></TBODY></TABLE></TD></TR>
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
                               <%
                              
                               int i=0; 
                               String url = "photos.jsp?1=1&id="+id; 
							   ArrayList<HashMap> list = PageManager.getPages(url,5, "select * from photos where uname='"+almap.get("uname")+"' and ptype='"+almap.get("cname")+"'", request ); 
                                for(HashMap hym:list){ 
                              
                                i++;
                                 %>
                                <TD height=129 
                                align=center vAlign=center  >
                                 
                                 <a href="photox.jsp?id=<%=hym.get("id") %>">
                                 <%
                                 if(hym.get("filename").toString().startsWith("2014")){
                                  %>
                                <img src="upfile/<%=hym.get("filename")%>"   border="0" height="88" />
                                <%}else{ %>
                                <img src="upfile/<%=hym.get("filename")%>"   border="0" height="88" />
                                <%} %>
                                </a>
                                
                                <br />
                                 <table><tr><td height="3"></td></tr></table>
                                <%=hym.get("phoname")%> 
                                </TD>
                               <%
                               if(i%4==0)out.print("</tr><tr>");
                               } %>
                                </TR>
                                
                                <tr><td align="center" height="30" colspan="4">${page.info }</td></tr>
                                
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
 
  <SCRIPT language=javascript src="/photoalbum/js/popups.js"></SCRIPT>
 
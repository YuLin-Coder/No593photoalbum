<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0028)http://csir461.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>中国最大的养生健康交流网站</TITLE>
<LINK rel=stylesheet type=text/css 
href="photoalbum_files/css.css">


<STYLE type=text/css>
.STYLE1 {
	COLOR: #d77745
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>



<TD vAlign=top width=232 align=right>
                  
                  <LINK rel=stylesheet type=text/css 
href="photoalbum_files/css.css">
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
.STYLE1 {
	COLOR: #d77745
}
</STYLE>

                 
                  <TABLE class=bk border=0 cellSpacing=0 cellPadding=0 
width=220>
                    <TBODY>
                    <TR>
                      <TD bgColor=#f3f3f3 height=126 vAlign=top>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=180 
                        align=center>
                          <TBODY>
                          <TR>
                            <TD class=ls height=40 
                              align=left><STRONG>最新公告</STRONG></TD></TR>
                          <TR>
                            <TD>
                              <TABLE border=0 cellSpacing=0 cellPadding=0 
                              width=180>
                                <TBODY>
                                <TR>
                                <TD align=left>
                                <MARQUEE class=ls direction=up height=130 
                                width="100%" scrollAmount=1>
                                <STYLE type=text/css>BODY {
	FONT-FAMILY: 宋体; FONT-SIZE: 12px
}
TD {
	FONT-FAMILY: 宋体; FONT-SIZE: 12px
}
TH {
	FONT-FAMILY: 宋体; FONT-SIZE: 12px
}
BODY {
	MARGIN: 0px
}
A:link {
	TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
</STYLE>

                                <TABLE id=standard border=0 cellSpacing=0 
                                cellPadding=0 width="100%">
                                <TBODY>
                               <%
                               CommDAO dao = new CommDAO();
                                for(HashMap m:dao.select("select * from mixinfo where infotype='公告' order by id desc")){
                                 %> 
                                <TR>
                                <TD class=xh height=34 vAlign=center 
                                align=left>·<A href="xiang.jsp?id=<%=m.get("id") %>" 
                                target=_self><%=Info.subStr(m.get("title").toString(),30)  %></A> 
                                </TD></TR>
                                <%} %>
                                
                                
                                
                                
                                
                                </TBODY></TABLE></MARQUEE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width=120>
                    <TBODY>
                    <TR>
                      <TD height=4></TD></TR></TBODY></TABLE>
                  
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width=120>
                    <TBODY>
                    <TR>
                      <TD height=4></TD></TR></TBODY></TABLE>
                  <TABLE class=bk border=0 cellSpacing=0 cellPadding=0 
width=220>
                    <TBODY>
                    <TR>
                      <TD bgColor=#f9f9f9 vAlign=top align=middle>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width=180>
                          <TBODY>
                          <TR>
                            <TD>&nbsp;</TD></TR>
                          <TR>
                            <TD height=45 vAlign=top align=left>
                              <TABLE class=sy border=0 cellSpacing=0 
                              cellPadding=0 width="100%" align=center>
                                <TBODY>
                                <TR>
                                <TD height=28 width=379 align=left>
                                <STYLE type=text/css>BODY {
	FONT-FAMILY: 宋体; FONT-SIZE: 12px
}
TD {
	FONT-FAMILY: 宋体; FONT-SIZE: 12px
}
TH {
	FONT-FAMILY: 宋体; FONT-SIZE: 12px
}
BODY {
	MARGIN: 0px
}
A:link {
	TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
</STYLE>

                                <TABLE id=standard border=0 cellSpacing=0 
                                cellPadding=0 width="100%">
                                <TBODY>
                                
                                <tr>
                                   <TD class=ls height=33 
                              align=left><STRONG>联系我们</STRONG></TD>
                                </TR>
                                
                                
                                <TR>
                                <TD class=xh height=4 vAlign=center 
                                align=left></TD>
                                </TR>
                                <TR>
                                <TD class=xh height=24 vAlign=center 
                                align=left>
                                
                                
                                 
                                <%
                                HashMap jjmap = dao.select("select * from mixinfo where infotype='联系我们'").get(0);
                                out.print( Info.subStr(Info.filterStrIgnoreCase(jjmap.get("content").toString(),"<",">"),200 )  );
                                 %>
                                
                                
                                
                                </TD></TR>
                              
                                
                                
                                
                                
                                <TR>
                                <TD height=6 
                            align=left></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                  </TD>
</BODY></HTML>

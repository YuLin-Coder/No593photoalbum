<%@ page language="java" pageEncoding="utf-8"%>
<jsp:directive.page import="java.util.List"/>
<%@page import="java.util.HashMap"%>
<%@page import="util.Info"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>信息管理</title>

<link href="/photoalbum/admin/global.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.STYLE1 {color: #000000}


a:visited {
	text-decoration: none;
	color: #000000;
}
a:hover {
	text-decoration: none;
	color: #000000;
}
a:active {
	text-decoration: none;
	color: #000000;
}
-->
</style>
<%
HashMap user = Info.getUser(request); 
if(session.getAttribute("utype")!=null)user.put("utype",session.getAttribute("utype"));
 
String  role = (String)session.getAttribute("role");
 %>
<link href="/photoalbum/theme/css/subModal.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="/photoalbum/theme/js/subModal.js"></script>
<script language="javascript" src="/photoalbum/js/popup.js"></script>
<SCRIPT language=javascript> 
window.onload = function(){ 
	if(top.location != self.location){ 
	
		var a = window.parent.document.getElementsByTagName('iframe'); 
		
		for (var i=0; i<a.length; i++){ 
			if (a[i].name == self.name) {
				a[i].height = document.body.scrollHeight; 
				return;
			}
		} 
	}
}

function change(no)
{
	var c = document.getElementById("c");
	c.innerHTML=no;
}
</script>

<script language=javascript>
function show(no)
{
for(var i=1;i<30;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<script type="text/javascript">
function showzhi(inn)
{
var a = document.getElementById("loca");
a.innerHTML=inn;
}
</script>

</head>

<body class="body_bg" >

<input name="countrequest" type="hidden" id="2" value=""/>
<table width="100%" border="0" cellpadding="0"  cellspacing="0">
  <tr>
    <td height="68" align="left" valign="top"  class="top_banner"><table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="85" height="56" align="right" class="topnav_matter_td">用户：</td>
        <td width="125" align="center" class="topnav_matter_td"><%=user.get("uname")%> &nbsp;-&nbsp; <%=user.get("utype") %></td>
        <td class="topnav_matter_td"><img src="/photoalbum/admin/images/login.gif" width="18" height="18" hspace="4" align="absmiddle" />&nbsp;&nbsp;<a href="#"   onclick="window.location.replace('/photoalbum/index.jsp?t=t');return   false;"><font color="black">注销</font></a>&nbsp;&nbsp; </td>
        <td width="30" class="topnav_matter_td"><img src="/photoalbum/admin/images/help.GIF" width="18" height="18" /></td>
        <td width="6" class="topnav_matter_td">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="desk_table_bg">
  <tr>
    <td width="172" height="400" valign="top" class="leftsidebar_bg"><table width="150" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="20"></td>
      </tr>
    </table>
    <table width="92%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="2"></td>
        </tr>
      </table>
     
     
     
     
        
     <table width="150" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="leftsidebar_table_frame">
        
      
        <tr style="cursor: hand">
          <td align="left" onClick="show('4')"  class="leftsidebar_title_td">&nbsp;管理列表</td>
        </tr>
        
        <%
        String url = "";
        String text = "";
        String utype = user.get("utype").toString();
        System.out.println(utype);
        if(utype.equals("管理员")){
        url="wzjj.jsp";
        text="网站简介";
        }
        else{
         url="/photoalbum/admin/webphotoscx.jsp";
         text="网络图片管理";
        } 
         %>
         <%
         if(utype.equals("管理员")){
          %>
         <tr id="4@1" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/wzjj.jsp" onClick="change('网站简介')"  target="main" >&nbsp;网站简介</a></div></td>
        </tr>
        
        <tr id="4@2" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/lxwm.jsp" onClick="change('联系我们')"  target="main" >&nbsp;联系我们</a></div></td>
        </tr>
        
        <tr id="4@3" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/gggl.jsp" onClick="change('公告管理')"  target="main" >&nbsp;公告管理</a></div></td>
        </tr>
       
          <tr id="4@4" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/ylzx.jsp" onClick="change('站内动态')"  target="main" >&nbsp;站内动态</a></div></td>
        </tr>
        
         <tr id="4@5" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/adminphotoscx.jsp" onClick="change('网络图片管理')"  target="main" >&nbsp;网络图片管理</a></div></td>
        </tr>
        
        <tr id="4@6" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/adminlphotoscx.jsp" onClick="change('图片管理')"  target="main" >&nbsp;图片管理</a></div></td>
        </tr>
       
          
        
         <tr id="4@7" style="display: " align="left">
          <td class="leftsidebar_title_td2"><a href="/photoalbum/admin/adminalbumscx.jsp" onclick="change('相册管理')" target="main">&nbsp;相册管理</a></td>
        </tr>
        
        
      
        <tr id="4@8" style="display: " align="left">
          <td class="leftsidebar_title_td2"><a href="/photoalbum/admin/adminptypescx.jsp" onclick="change('相册类别管理')" target="main">&nbsp;相册类别管理</a></td>
        </tr>
         
           <tr id="4@9" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/adminmusicscx.jsp" onClick="change('背景音乐管理')"  target="main" >&nbsp;背景音乐管理</a></div></td>
        </tr>
      
        <tr id="4@10" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/members.jsp" onClick="change('会员管理')"  target="main" >&nbsp;会员管理</a></div></td>
        </tr>
         
        
        <tr id="4@11" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/sysuser.jsp" onClick="change('管理员信息管理')"  target="main" >&nbsp;管理员信息管理</a></div></td>
        </tr>
        
      
        
       
        
         <tr id="4@12" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/uppass.jsp" onClick="change('修改登录信息')"  target="main" >&nbsp;修改登录信息</a></div></td>
        </tr>
        
        <%}else{ %> 
        
        <tr id="4@5" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/webphotoscx.jsp" onClick="change('网络图片管理')"  target="main" >&nbsp;网络图片管理</a></div></td>
        </tr>
        
        <tr id="4@6" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/photoscx.jsp" onClick="change('图片管理')"  target="main" >&nbsp;图片管理</a></div></td>
        </tr>
       
          
        
         <tr id="4@8" style="display: " align="left">
          <td class="leftsidebar_title_td2"><a href="/photoalbum/admin/albumscx.jsp" onclick="change('相册管理')" target="main">&nbsp;相册管理</a></td>
        </tr>
        
        
      
        <tr id="4@2" style="display: " align="left">
          <td class="leftsidebar_title_td2"><a href="/photoalbum/admin/ptypescx.jsp" onclick="change('相册类别管理')" target="main">&nbsp;相册类别管理</a></td>
        </tr>
         
           <tr id="4@7" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/musicscx.jsp" onClick="change('背景音乐管理')"  target="main" >&nbsp;背景音乐管理</a></div></td>
        </tr>
        
        <tr id="4@12" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/membersxg.jsp" onClick="change('个人信息管理')"  target="main" >&nbsp;个人信息管理</a></div></td>
        </tr>
        
      
        
       
        
         <tr id="4@3" style="display: ">
          <td align="left" class="leftsidebar_title_td2"><div align="left"><a href="/photoalbum/admin/uppass.jsp" onClick="change('修改登录信息')"  target="main" >&nbsp;修改登录信息</a></div></td>
        </tr>
        
        <%} %>
   </table>
   
   
   
   
 
    
    

    <td valign="top" class="main_bg">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="32" width="295" class="main_matter_td_currentsite">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您当前的位置：<div style="display: inline;" id="c"></div> </td>
        </tr>
      </table>
      <iframe width="100%" scrolling="no" frameborder="0" height="400px" src="<%=url %>" style=background:transparent allowtransparency name="main"></iframe></td>
  
</table>

</body>
</html>

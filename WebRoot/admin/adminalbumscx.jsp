
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>

<%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin: 0px;
}
-->
</style>
<link href="../admin/global.css" rel="stylesheet" type="text/css" />
<SCRIPT language=javascript>


function clearNoNum(obj){
     //先把非数字的都替换掉，除了数字和.
     obj.value = obj.value.replace(/[^\d.]/g,"");
     //必须保证第一个为数字而不是.
     obj.value = obj.value.replace(/^\./g,"");
     //保证只有出现一个.而没有多个.
     obj.value = obj.value.replace(/\.{2,}/g,".");
     //保证.只出现一次，而不能出现两次以上
     obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
   } 

<!--
function window.onload() { 


if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+400; return;}}} 

}

//-->
</script>

</head>

<body>
  <form  action="adminalbumscx.jsp"  name="f1" method="post"  >
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame">
  <tr>
    <td height="136"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7" class="main_desk_table">
      <tr>
        <td width="8%" height="6"></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7">
          <tr>
           <td width="118" class="main_title_td_center">相关信息</td>
                        <td align="right" class="main_title_td_bg">&nbsp;</td>
                        
              </tr>
        </table>
              <table width="100%" border="0" 
            cellspacing="0" rules="all" style="WIDTH: 100%; BORDER-COLLAPSE: collapse">
                <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td colspan=7   align="left" class="main_matter_td" height='30'>&nbsp;&nbsp;&nbsp;
<% 
String puname = request.getParameter("uname")==null?"":request.getParameter("uname"); 
String startuname = request.getParameter("startuname")==null?"":request.getParameter("startuname"); 
String enduname = request.getParameter("enduname")==null?"":request.getParameter("enduname"); 
String pcname = request.getParameter("cname")==null?"":request.getParameter("cname"); 
String startcname = request.getParameter("startcname")==null?"":request.getParameter("startcname"); 
String endcname = request.getParameter("endcname")==null?"":request.getParameter("endcname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
会员 
&nbsp;:&nbsp; 
<input type=text class='textBox'  size=20 name='uname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
相册名称 
&nbsp;:&nbsp; 
<input type=text class='textBox'  size=20 name='cname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' /> </td>
                </tr>
            </table></td>
      </tr>
    </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="6" colspan="2"></td>
          </tr>
          <tr>
            <td width="118" class="main_title_td_center">信息列表</td>
            <td class="main_title_td_bg">&nbsp;</td>
          </tr>
        </table>
      <table width="100%" border="0" 
            cellspacing="0" style="WIDTH: 100%; BORDER-COLLAPSE: collapse">
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td align="center" class="main_title_td_center2">会员</td>
<td align="center" class="main_title_td_center2">相册名称</td>
<td align="center" class="main_title_td_center2">相册类别</td>
<td align="center" class="main_title_td_center2">访问控制</td>
<td align="center" class="main_title_td_center2">封面</td>
<td align="center" class="main_title_td_center2">操作</td>
          </tr>
        
        
    
           <% 
if(request.getParameter("scid")!=null)
{
HashMap m = new CommDAO().getmap(request.getParameter("scid"),"albums");
new CommDAO().commOper("delete from photos where uname='"+uname+"' and ptype='"+m.get("cname")+"'");
}
new CommDAO().delete(request,"albums"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update albums set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update albums set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select * from albums where 1=1 " ;
 if(!puname.equals("")){ 
 sql+= " and uname like'%"+puname+"%' " ;
 }  
 if(!startuname.equals("")){  
 mmm.put("startuname",startuname) ;
 sql+= " and uname >'"+startuname+"' " ;
 }  
 if(!enduname.equals("")){  
 mmm.put("enduname",enduname) ;
 sql+= " and uname <'"+Info.getDay(enduname,1)+"' " ;
 }  
 if(!pcname.equals("")){ 
 sql+= " and cname like'%"+pcname+"%' " ;
 }  
 if(!startcname.equals("")){  
 mmm.put("startcname",startcname) ;
 sql+= " and cname >'"+startcname+"' " ;
 }  
 if(!endcname.equals("")){  
 mmm.put("endcname",endcname) ;
 sql+= " and cname <'"+Info.getDay(endcname,1)+"' " ;
 }  
  sql +=" order by id desc ";
String url = "adminalbumscx.jsp?1=1&uname="+puname+"&cname="+pcname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">

            <td align="center" valign="middle" class="main_matter_td"><%=map.get("uname")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("cname")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("ctype")%></td>
            <td align="center" valign="middle" class="main_matter_td"><%=map.get("isgk")%></td>
            <td align="center" valign="middle" class="main_matter_td"><img src="/photoalbum/upfile/<%=map.get("filename")%>" height=65 /></td>
            <td align="center" valign="middle" class="main_matter_td"> 
<a onclick="return confirm('确定要删除这条记录吗?')"  href="adminalbumscx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
         
         
              
          
          
          <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
            <td colspan=7 height="15"  align="center" valign="middle" class="main_matter_td">${page.info}</td>
          </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
 <script language=javascript src='/photoalbum/js/ajax.js'></script>
<% 
mmm.put("uname",puname); 
mmm.put("cname",pcname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/photoalbum/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/photoalbum/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('albumsxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('albumstj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 

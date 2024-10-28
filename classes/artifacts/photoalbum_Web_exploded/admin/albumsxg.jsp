
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
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
<!--
function window.onload() { 


if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight; return;}}} 

}

//-->
</script>

</head>

<% 
new CommDAO().delete(request,"albums"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
ext.put("uname",Info.getUser(request).get("uname")); 
HashMap mmm = new CommDAO().getmap(id,"albums"); 
if(request.getParameter("f")!=null){
String cname = request.getParameter("cname");
new CommDAO().commOper("update photos set ptype='"+cname+"' where uname='"+uname+"' and ptype='"+mmm.get("cname")+"'");
}

new CommDAO().update(request,response,"albums",ext,true,true); 

%>
<body>
  <form  action="albumsxg.jsp?f=f&id=<%=mmm.get("id")%>"     name="f1" method="post"  onsubmit="return checkform()" >
    <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="main_table_frame">
  <tr>
    <td height="48"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F7F7F7" class="main_desk_table">
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
                 
                  <td width="24%" align="center" class="main_matter_td">相册名称</td>
                  <td width="76%" align="left" class="main_matter_td"><input type=text  class='textBox' id='cname' name='cname' size=35 /><label id='clabelcname' /></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="24%" align="center" class="main_matter_td">相册类别</td>
                  <td width="76%" align="left" class="main_matter_td"><%=Info.getselect("ctype","ptypes","ptname~无名","uname='"+uname+"'")%><label id='clabelctype' />
</td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="24%" align="center" class="main_matter_td">访问控制</td>
                  <td width="76%" align="left" class="main_matter_td"><span id="isgkdanx"><label><input type=radio name='isgk' value='不限' />&nbsp;不限 </label>
<label><input type=radio name='isgk' value='会员' />&nbsp;会员 </label>
<label><input type=radio name='isgk' value='好友' />&nbsp;好友 </label>
<label><input type=radio name='isgk' value='仅自己' />&nbsp;仅自己 </label>
</span></td>
                </tr>
<tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td width="24%" align="center" class="main_matter_td">封面</td>
                  <td width="76%" align="left" class="main_matter_td"><%=Info.getImgUpInfo(65)%></td>
                </tr>

				
				 <tr 
              onmouseover="currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f0f7ff'" 
              onmouseout="this.style.backgroundColor=currentcolor">
                 
                  <td height="35" colspan="4" align="center" class="main_matter_td"><label>
                  <input type="submit" name="Submit" value="提交信息" />&nbsp;&nbsp;&nbsp;
                    <input type=button value='返回上页' onclick='popclose();' />
                  </label></td> 
                </tr>
            </table></td>
      </tr>
    </table>
      </td>
  </tr>
</table>
</form>
</body>
</html>
 
<script language=javascript src='/photoalbum/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/photoalbum/js/ajax.js'></script> 
<script language=javascript src='/photoalbum/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
var cnameobj = document.getElementById("cname");  
if(cnameobj.value==""){  
document.getElementById("clabelcname").innerHTML="&nbsp;&nbsp;<font color=red>请输入相册名称</font>";  
return false;  
}else{ 
document.getElementById("clabelcname").innerHTML="  ";  
}  
var ctypeobj = document.getElementById("ctype");  
if(ctypeobj.value==""){  
document.getElementById("clabelctype").innerHTML="&nbsp;&nbsp;<font color=red>请输入相册类别</font>";  
return false;  
}else{ 
document.getElementById("clabelctype").innerHTML="  ";  
}  
return true;   
}   
var frames = parent.document.getElementsByTagName("iframe");
for(var i=0;i<frames.length;i++){ 
var alliframe = parent.document.getElementsByTagName("iframe")[i];  
if(alliframe.name=="ifr_popup0")
alliframe.style.height=document.body.scrollHeight+-1; 
} 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 

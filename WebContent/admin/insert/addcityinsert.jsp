<%@page import="com.memento.dao.AddcityDao"%>
<%@page import="com.memento.bean.addcity"%>  
<jsp:useBean id="ct" class="com.memento.bean.addcity"></jsp:useBean>  
<jsp:setProperty property="*" name="ct"/>  
  
<%  
int i=AddcityDao.save(ct);  
if(i>0){  
response.sendRedirect("../addcity.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  
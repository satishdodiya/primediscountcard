<%@page import="com.memento.dao.UserDao"%>
<%@page import="com.memento.bean.User"%>  
<jsp:useBean id="u" class="com.memento.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("signin.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  
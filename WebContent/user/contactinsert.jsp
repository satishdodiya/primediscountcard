<%@page import="com.memento.dao.ContactDao"%>
<%@page import="com.memento.bean.Contact"%>  
<jsp:useBean id="c" class="com.memento.bean.Contact"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
  
<%  
int i=ContactDao.save(c);  
if(i>0){  
response.sendRedirect("index.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  
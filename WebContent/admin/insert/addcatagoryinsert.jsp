<%@page import="com.memento.dao.AddcatagoryDao"%>
<%@page import="com.memento.bean.addcatagory"%>  
<jsp:useBean id="ctg" class="com.memento.bean.addcatagory"></jsp:useBean>  
<jsp:setProperty property="*" name="ctg"/>  
  
<%  
int i=AddcatagoryDao.save(ctg);  
if(i>0){  
response.sendRedirect("../addcatagory.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  
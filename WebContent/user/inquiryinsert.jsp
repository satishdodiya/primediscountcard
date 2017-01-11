<%@page import="com.memento.dao.InquiryDao"%>
<%@page import="com.memento.bean.Inquiry"%>  
<jsp:useBean id="n" class="com.memento.bean.Inquiry"></jsp:useBean>  
<jsp:setProperty property="*" name="n"/>  
  
<%  
int i=InquiryDao.save(n);  
if(i>0){  
response.sendRedirect("index.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  
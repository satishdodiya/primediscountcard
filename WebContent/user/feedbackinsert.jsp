<%@page import="com.memento.dao.FeedbackDao"%>
<%@page import="com.memento.bean.Feedback"%>  
<jsp:useBean id="f" class="com.memento.bean.Feedback"></jsp:useBean>  
<jsp:setProperty property="*" name="f"/>  
  
<%  
int i=FeedbackDao.save(f);  
if(i>0){  
response.sendRedirect("index.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  
<%@ include file="pheader.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="../upload" enctype="multipart/form-data"> 
Choose a file : <input type="file" name="file">
<input type="submit" value="upload">
</form>
</body>
</html>
<%@ include file="pfooter.jsp" %>
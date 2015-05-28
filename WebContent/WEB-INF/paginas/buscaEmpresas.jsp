<%@ taglib prefix  =  "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Lista de empresas :</p>
<ul>
<c:forEach var="empresa" items= "${empresas}">
	<li>${empresa.id }: ${empresa.nome }</li>
</c:forEach>
</ul>	
</body>
</html>
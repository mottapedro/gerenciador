<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<body>
	<p>Bem - vindo!</p>
	<c:if test="${not empty usuarioLogado}">
		<p>Logado com sucesso : ${usuarioLogado.email}</p>
	</c:if>
	
	<form action="novaEmpresa" method="post">
		Nome : <input type="text" name="nome"> <input type="submit" value="Enviar">
	</form>
	
	<p>Bem - vindo!</p>
	<form action="login" method="post">
		Email : <input type="text" name="email"> <br>
		Senha : <input type="password" name="senha"> <br>
		<input type="submit" value="Logar">
	</form>
	
	<form action="executa" method="post">
	
	<input type="hidden" name="tarefa" value="Logout"> 
		<input type="submit" value="Deslogar">
	</form>
</body>
</html>
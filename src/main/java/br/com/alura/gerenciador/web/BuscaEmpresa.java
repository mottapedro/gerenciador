package br.com.alura.gerenciador.web;

import java.util.Collection;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.Empresa;
import br.com.alura.gerenciador.dao.EmpresaDAO;

@WebServlet(urlPatterns = "/busca")
public class BuscaEmpresa implements Tarefa{

		
	public BuscaEmpresa(){
		System.out.println("Construindo uma servlet buscaEmpresa" + this);
	}

	@Override
	public String executa(HttpServletRequest request,HttpServletResponse response) {
		
		String filtro = request.getParameter("filtro");
		Collection<Empresa>empresas = new EmpresaDAO().buscaPorSimilaridade(filtro);
		request.setAttribute("empresas", empresas);
		return ("/WEB-INF/paginas/buscaEmpresas.jsp");
		

	}

}

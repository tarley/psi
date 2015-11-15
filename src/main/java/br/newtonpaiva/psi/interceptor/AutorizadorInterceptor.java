package br.newtonpaiva.psi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller) 
			  throws Exception {

	      String uri = request.getRequestURI();
	      StringBuffer url = request.getRequestURL();
	      
	      if(uri.endsWith("login") || uri.endsWith("efetuaLogin") || uri.equals("/psi/")
    		  	   || uri.contains("resources") || uri.contains("/pesquisar") 
	    		   || uri.contains("/listarBairros") 
	    		   || url.equals("http://www.projetopsi.com.br") || url.equals("http://www.projetopsi.com.br")
	    	  	   || url.equals("http://www.projetopsi.com.br/") || url.equals("http://www.projetopsi.com.br/")){
	        return true;
	      }

	      if(request.getSession().getAttribute("usuarioLogado") != null) {
	        return true;
	      }

	      response.sendRedirect("login");
	      return false;
	  }
}

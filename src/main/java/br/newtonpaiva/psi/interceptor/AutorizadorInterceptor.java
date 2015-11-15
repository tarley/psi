package br.newtonpaiva.psi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import br.newtonpaiva.psi.controller.HomeController;
import br.newtonpaiva.psi.controller.LoginController;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {
		
		if (isAllowedController(controller) || isUsuarioLogado(request)) {
			return true;
		}

		response.sendRedirect(request.getContextPath() + "/login");
		return false;
	}

	private boolean isUsuarioLogado(HttpServletRequest request) {
		return request.getSession().getAttribute("usuarioLogado") != null;
	}

	private boolean isAllowedController(Object controller) {
		if (controller instanceof HandlerMethod) {
			HandlerMethod handler = (HandlerMethod) controller;
			
			return handler.getBean() instanceof HomeController ||
				   handler.getBean() instanceof LoginController;
		}
		
		return true;
	}
}

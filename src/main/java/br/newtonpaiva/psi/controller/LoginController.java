package br.newtonpaiva.psi.controller;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.newtonpaiva.psi.model.Usuario;
import br.newtonpaiva.psi.model.UsuarioRepository;

@Controller
public class LoginController {
	
	@Autowired
	UsuarioRepository repository;
	
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, Model model, HttpSession session) {
		
		List<Usuario> usuarios = repository.verificaUsuario(usuario.getLogin(), usuario.getSenha());
		
		if(!usuarios.isEmpty()) {
		    session.setAttribute("usuarioLogado", usuario);
		    return "redirect:admin";
		}
		
		 model.addAttribute("error", "Usuário ou senha inválidos");

		return "redirect:login";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
}

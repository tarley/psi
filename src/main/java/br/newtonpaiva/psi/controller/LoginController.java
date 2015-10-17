package br.newtonpaiva.psi.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import br.newtonpaiva.psi.model.Usuario;
import br.newtonpaiva.psi.model.UsuarioRepository;

@Controller
public class LoginController {
	
	@Autowired
	UsuarioRepository repository;
	
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		if(repository.verificaUsuario(usuario.getLogin())) {
		    session.setAttribute("usuarioLogado", usuario);
		    return "admin";
		  }
		
	    //Mostrar mensagem de erro
		return "redirect:login";
	}
}

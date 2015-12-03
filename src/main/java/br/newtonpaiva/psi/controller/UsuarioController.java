/**
 * 
 */
package br.newtonpaiva.psi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.newtonpaiva.psi.model.Usuario;
import br.newtonpaiva.psi.model.UsuarioRepository;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari
 *          Braga, Pri Romagnoli
 *
 */
@Controller
@RequestMapping("usuario")
public class UsuarioController {

	@Autowired
	UsuarioRepository repository;

	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model,HttpSession session) 
	{		
		int perfil = (int) session.getAttribute("perfil");
		
		if(perfil==1)
		{
			List<Usuario> listaUsuarios = repository.listar();
			model.addAttribute("listaUsuarios", listaUsuarios);
		}
		else
		{
			String login = (String)session.getAttribute("login");
			List<Usuario> listaUsuarios = repository.listarUsuario(login);
			model.addAttribute("listaUsuarios", listaUsuarios);
			
			System.out.println(login);
		}

		return "usuario/listar-usuario";
	}

	@RequestMapping(value = "/pesquisar", method = RequestMethod.GET)
	public String pesquisar(String nom_usuario, Model model) {
		List<Usuario> listaUsuarios = repository.listarPorDescricao(nom_usuario);

		model.addAttribute("filtro", nom_usuario);
		model.addAttribute("listaUsuarios", listaUsuarios);

		return "usuario/listar-usuario";
	}

	@RequestMapping(value = "/pesquisar/{nom_usuario}", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Usuario> pesquisarJson(
			@PathVariable("nom_usuario") String nom_usuario) {
		List<Usuario> listaUsuarios = repository.listarPorDescricao(nom_usuario);

		return new ResponseEntity<Usuario>(listaUsuarios.get(0), HttpStatus.OK);
	}

	@RequestMapping(value = "/remover/{codUsuario}")
	@Transactional
	public ResponseEntity<String> remover(@PathVariable("codUsuario") Long codUsuario) {
		repository.remover(codUsuario);
		return new ResponseEntity<String>("Usuario removido com sucesso!", HttpStatus.OK);
	}

	@RequestMapping("cadastrarUsuario")
	@Transactional
	public String cadastrar() {
		return "usuario/usuario";
	}

	@RequestMapping("adicionarUsuario")
	@Transactional
	public String adicionar(@Valid Usuario usuario, BindingResult result) throws Exception {

		repository.adiciona(usuario);

		return "redirect:/usuario/?msg=1";
	}

	@RequestMapping("editarUsuario")
	@Transactional
	public String editar(Long id, Model model)
	{
		Usuario usr = repository.buscaPorId(id);
		model.addAttribute("usuario", usr);
		return "usuario/editar-usuario";
	}

	@RequestMapping("alterarUsuario")
	@Transactional
	public String altera(@Valid Usuario usuario, BindingResult result) throws Exception 
	{

		repository.altera(usuario);

		return "redirect:/usuario/?msg=2";
	}

	@RequestMapping("removerUsuario")
	@Transactional
	public String remove(@Valid Usuario usuario, BindingResult result) {

		repository.remover(usuario);

		return "usuario/sucesso";
	}

}

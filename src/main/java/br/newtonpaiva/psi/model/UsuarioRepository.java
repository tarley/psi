package br.newtonpaiva.psi.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

@Repository
public class UsuarioRepository {
	@PersistenceContext
	private EntityManager manager;

	@SuppressWarnings("unchecked")
	public List<Usuario> verificaUsuario(String login, String senha) {
		
		List<Usuario> usuarios = manager
				.createQuery("select u from Usuario u where u.Des_Login = :login and u.Senha = :senha")
				.setParameter("login", login).setParameter("senha", senha).getResultList();
		
		return	usuarios;
	}

}

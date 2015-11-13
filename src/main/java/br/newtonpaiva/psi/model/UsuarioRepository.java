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
	
	@SuppressWarnings("unchecked")
	public List<Usuario> listar() {
		return manager.createQuery("select u from Usuario u").getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Usuario> listar(String columns) {
		return manager.createQuery("select " + columns + " from Usuario u").getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Usuario> listarPorDescricao(String nom_usuario) {
		return manager.createQuery("select u from Usuario u where ta.nom_usuario like :nom_usuario")
				.setParameter("nom_usuario", nom_usuario + "%").getResultList();
	}
	
	public void remover(Usuario usuario) {
		manager.remove(usuario);
	}
	
	public void remover(Long cod_usuario) {
		Usuario usuarioARemover = buscaPorId(cod_usuario);
		remover(usuarioARemover);
	}
	
	public void adiciona(Usuario usuario) {
		manager.persist(usuario);
	}

	public void altera(Usuario usuario) {
		manager.merge(usuario);
	}
	
	public Usuario buscaPorId(Long cod_usuario) {
		return manager.find(Usuario.class, cod_usuario);
	}

}

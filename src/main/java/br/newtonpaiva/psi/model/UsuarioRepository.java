package br.newtonpaiva.psi.model;

import java.security.MessageDigest;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class UsuarioRepository {
	@PersistenceContext
	private EntityManager manager;

	public Usuario verificaUsuario(String login, String senha) throws Exception 
	{
		senha = sha256(senha);
		
		try
		{
			Usuario usuario = (Usuario)manager		
				.createQuery("select u from Usuario u where u.Des_Login = :login and u.Senha = :senha")
				.setParameter("login", login).setParameter("senha", senha).getSingleResult();
			
			return usuario;
		}
		catch(NoResultException e)
		{
			return null;
		}
		
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Usuario> listar() {
		return manager.createQuery("select u from Usuario u").getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Usuario> listarUsuario(String login) {
		return manager.createQuery("select u from Usuario u where u.Des_Login = :login")
				.setParameter("login", login).getResultList();
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
	
	public void adiciona(Usuario usuario) throws Exception
	{			
	     usuario.setSenha(sha256(usuario.getSenha()));
		
		 manager.persist(usuario);
	}

	public void altera(Usuario usuario) throws Exception
	{
		usuario.setSenha(sha256(usuario.getSenha()));
		
		manager.merge(usuario);
	}
	
	public Usuario buscaPorId(Long cod_usuario) {
		return manager.find(Usuario.class, cod_usuario);
	}
	
	public String sha256(String senha)  throws Exception
	{		
		String senhaOriginal = senha;
		
		 MessageDigest md = MessageDigest.getInstance("SHA-256");
	     md.update(senhaOriginal.getBytes());
	     
	     byte byteData[] = md.digest();
	     
	     StringBuffer sb = new StringBuffer();
	     for (int i = 0; i < byteData.length; i++) 
	     {
	         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	     }
	     
	     String senhaHash = sb.toString();
	     
	     return senhaHash;		
	}

}

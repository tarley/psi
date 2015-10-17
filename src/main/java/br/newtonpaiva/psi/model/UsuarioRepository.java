/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

@Repository
public class UsuarioRepository {
	@PersistenceContext
	private EntityManager manager;

	public boolean verificaUsuario(String login) {
		
		Usuario usuario = (Usuario) manager.createQuery("select u from Usuario u where u.Login = :login")
				.setParameter(":login", login);
		
		if	(usuario != null){
			return true;
		} else{
			return false;
		}
	}

}

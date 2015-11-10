package br.newtonpaiva.psi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USUARIO")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long Cod_Usuario;
	
	private String Des_Email;
	
	private String Des_Login;
	
	private String Nom_Usuario;
	
	private String Senha;
	
	public Long getCodUsuario() {
		return Cod_Usuario;
	}

	public void setCodUsuario(Long codUsuario) {
		Cod_Usuario = codUsuario;
	}

	public String getEmail() {
		return Des_Email;
	}

	public void setEmail(String email) {
		Des_Email = email;
	}

	public String getLogin() {
		return Des_Login;
	}

	public void setLogin(String login) {
		Des_Login = login;
	}

	public String getNome() {
		return Nom_Usuario;
	}

	public void setNome(String nome) {
		Nom_Usuario = nome;
	}

	public String getSenha() {
		return Senha;
	}

	public void setSenha(String senha) {
		Senha = senha;
	}

}

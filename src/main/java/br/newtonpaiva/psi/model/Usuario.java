package br.newtonpaiva.psi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="USUARIO")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @JoinColumn(name = "COD_USUARIO")
	private Long CodUsuario;
	
    @JoinColumn(name = "DES_EMAIL")
	private String Email;
	
    @JoinColumn(name = "DES_LOGIN")
	private String Login;
	
    @JoinColumn(name = "NOM_USUARIO")
	private String Nome;
	
    @JoinColumn(name = "SENHA")
	private String Senha;
	
	public Long getCodUsuario() {
		return CodUsuario;
	}

	public void setCodUsuario(Long codUsuario) {
		CodUsuario = codUsuario;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getLogin() {
		return Login;
	}

	public void setLogin(String login) {
		Login = login;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getSenha() {
		return Senha;
	}

	public void setSenha(String senha) {
		Senha = senha;
	}

}

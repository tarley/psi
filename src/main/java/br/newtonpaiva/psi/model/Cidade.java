/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author Mari Braga
 *
 */
@Entity
@Table(name="CIDADE")
public class Cidade {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long cod_cidade;
	
	@OneToMany(mappedBy = "cidade")
    private List<Bairro> bairroList;

	private String nom_cidade;

	public Long getCod_cidade() {
		return cod_cidade;
	}

	public void setCod_cidade(Long cod_cidade) {
		this.cod_cidade = cod_cidade;
	}

	public String getNom_cidade() {
		return nom_cidade;
	}

	public void setNom_cidade(String nom_cidade) {
		this.nom_cidade = nom_cidade;
	}

	
}

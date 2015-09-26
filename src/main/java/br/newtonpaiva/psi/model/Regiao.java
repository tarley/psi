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
@Table(name="REGIAO")
public class Regiao {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long cod_regiao;
	
	@OneToMany(mappedBy = "regiao")
    private List<Bairro> bairroList;
	
	@OneToMany(mappedBy = "regiao")
    private List<UnidadeAtendimento> unidadeSaudeList;

	private String des_regiao;

	public Long getCod_regiao() {
		return cod_regiao;
	}

	public void setCod_regiao(Long cod_regiao) {
		this.cod_regiao = cod_regiao;
	}

	public String getDes_regiao() {
		return des_regiao;
	}

	public void setDes_regiao(String des_regiao) {
		this.des_regiao = des_regiao;
	}

	
}

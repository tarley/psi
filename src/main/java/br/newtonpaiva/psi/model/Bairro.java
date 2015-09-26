/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author Mari Braga
 *
 */
@Entity
@Table(name="BAIRRO")
public class Bairro {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long cod_bairro;
	
	@ManyToOne
    @JoinColumn(name = "COD_CIDADE")
	private Cidade cidade;
	
	@ManyToOne
    @JoinColumn(name = "COD_REGIAO")
	private Regiao regiao;
	
	@OneToMany(mappedBy = "bairro")
    private List<UnidadeAtendimento> unidadeSaudeList;

	private String des_bairro;

	public Long getCod_bairro() {
		return cod_bairro;
	}

	public void setCod_bairro(Long cod_bairro) {
		this.cod_bairro = cod_bairro;
	}

	public Cidade getCidade() {
		return cidade;
	}

	public void setCidade(Cidade cidade) {
		this.cidade = cidade;
	}

	public Regiao getRegiao() {
		return regiao;
	}

	public void setRegiao(Regiao regiao) {
		this.regiao = regiao;
	}

	public String getDes_bairro() {
		return des_bairro;
	}

	public void setDes_bairro(String des_bairro) {
		this.des_bairro = des_bairro;
	}
	
}

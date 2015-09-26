/**
 * 
 */
package br.newtonpaiva.psi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author Mari Braga
 *
 */
@Entity
@Table(name="UNIDADE_ATENDIMENTO")
public class UnidadeAtendimento {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long cod_unidade_atendimento;
	
	@ManyToOne
    @JoinColumn(name = "COD_BAIRRO")
	private Bairro bairro;
	
	@ManyToOne
    @JoinColumn(name = "COD_REGIAO")
	private Regiao regiao;
	
	@ManyToOne
    @JoinColumn(name = "COD_TIPO_ATENDIMENTO")
	private TipoAtendimento tipoAtendimento;
	
	private String nom_logradouro;
	
	@Column(name = "NOM_UNIDADE_ATENDIMENTO")
	private String nom_uni_atendimento;

	private String num_cep;
	
	private int num_numero;
	
	private String num_tel1;
	
	private String num_tel2;
	
	private String num_tel3;
	
	public Long getCod_unidade_atendimento() {
		return cod_unidade_atendimento;
	}

	public void setCod_unidade_atendimento(Long cod_unidade_atendimento) {
		this.cod_unidade_atendimento = cod_unidade_atendimento;
	}

	public String getNom_uni_atendimento() {
		return nom_uni_atendimento;
	}

	public void setNom_uni_atendimento(String nom_uni_atendimento) {
		this.nom_uni_atendimento = nom_uni_atendimento;
	}

	public Bairro getBairro() {
		return bairro;
	}

	public void setBairro(Bairro bairro) {
		this.bairro = bairro;
	}

	public Regiao getRegiao() {
		return regiao;
	}

	public void setRegiao(Regiao regiao) {
		this.regiao = regiao;
	}

	public TipoAtendimento getTipoAtendimento() {
		return tipoAtendimento;
	}

	public void setTipoAtendimento(TipoAtendimento tipoAtendimento) {
		this.tipoAtendimento = tipoAtendimento;
	}

	public String getNom_logradouro() {
		return nom_logradouro;
	}

	public void setNom_logradouro(String nom_logradouro) {
		this.nom_logradouro = nom_logradouro;
	}

	public String getNum_cep() {
		return num_cep;
	}

	public void setNum_cep(String num_cep) {
		this.num_cep = num_cep;
	}

	public int getNum_numero() {
		return num_numero;
	}

	public void setNum_numero(int num_numero) {
		this.num_numero = num_numero;
	}

	public String getNum_tel1() {
		return num_tel1;
	}

	public void setNum_tel1(String num_tel1) {
		this.num_tel1 = num_tel1;
	}

	public String getNum_tel2() {
		return num_tel2;
	}

	public void setNum_tel2(String num_tel2) {
		this.num_tel2 = num_tel2;
	}

	public String getNum_tel3() {
		return num_tel3;
	}

	public void setNum_tel3(String num_tel3) {
		this.num_tel3 = num_tel3;
	}

	
}

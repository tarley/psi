/**
 * 
 */
package br.newtonpaiva.psi.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @authors Tarley Lana, Amanda Rosa, Gabriel Gabriel, Filipe Duarte, Mari Braga, Pri Romagnoli
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
	
	/* Nao funciona - Salva somente 1*/
	@ManyToMany
	@JoinTable(name="UN_ATENDIMENTO_TIPO_ATENDIMENTO", joinColumns={
			@JoinColumn(name="cod_unidade_atendimento")}, inverseJoinColumns={
					@JoinColumn(name="cod_tipo_atendimento")})
	private List<TipoAtendimento> tiposAtendimento;
	
	@Transient
	private List<Long> tiposAtendimentoAux; 
	
	public void createTiposAtendimentoAux() {
		if(tiposAtendimentoAux == null)
			tiposAtendimentoAux = new ArrayList<Long>();
		else
			tiposAtendimentoAux.clear();
		
		for(TipoAtendimento t: tiposAtendimento) {
			tiposAtendimentoAux.add(t.getCod_tipo_atendimento());
		}
	}
	
	public List<Long> getTiposAtendimentoAux() {
		return tiposAtendimentoAux;
	}

	public void setTiposAtendimentoAux(List<Long> tiposAtendimentoAux) {
		this.tiposAtendimentoAux = tiposAtendimentoAux;
	}

	public void add(TipoAtendimento tipoAtendimento) {
		if(tiposAtendimento == null) {
			tiposAtendimento = new ArrayList<TipoAtendimento>();
		}
		
		tiposAtendimento.add(tipoAtendimento);
	}
	
	public List<TipoAtendimento> getTiposAtendimento() {
		return tiposAtendimento;
	}

	public void setTiposAtendimento(List<TipoAtendimento> tiposAtendimento) {
		this.tiposAtendimento = tiposAtendimento;	
	}
	
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cod_unidade_atendimento == null) ? 0 : cod_unidade_atendimento.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UnidadeAtendimento other = (UnidadeAtendimento) obj;
		if (cod_unidade_atendimento == null) {
			if (other.cod_unidade_atendimento != null)
				return false;
		} else if (!cod_unidade_atendimento.equals(other.cod_unidade_atendimento))
			return false;
		return true;
	}
	
	

	
}

package br.com.sistemafjm.Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class MedidasCorporais implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer fichaId;

	@ManyToOne
	@JoinColumn(name = "id", nullable = false)
	private UsuarioModelo usuario;

	private String dataMedicao;

	private double altura;
	private double peso;
	private double IMC;

	private double cintura;
	private double torax;
	private double quadril;

	private double anteBracoEsquerdo;
	private double anteBracoDireito;

	private double bracoEsquerdo;
	private double bracoDireito;

	private double coxaEsquerda;
	private double coxaDireita;

	private double panturilhaEsquerda;
	private double panturilhaDireita;

}

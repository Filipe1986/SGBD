package br.com.sistemafjm.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Aparelho {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer aparelhoId;
	@Column(unique = true)
	private String nomeAparelho;
}

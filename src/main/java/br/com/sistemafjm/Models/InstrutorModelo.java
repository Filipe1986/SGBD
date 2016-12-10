package br.com.sistemafjm.Models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class InstrutorModelo {

    @Id

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String nome;
    private String email;
    private String cpf;
    private String dataNascimento;
    private String celular;

    @Enumerated(EnumType.STRING)
    private StatusEnum status;
    @Enumerated(EnumType.STRING)
    private SexoEnum sexo;

    private String senha;
    private String formacao;
    private String especializacao;
    private String horario;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "instrutor")
    private List<FichaTreino> fichas;

    public InstrutorModelo() {
    }

    @Override
    public String toString() {
        return "Instrutor [ Nome " + nome + " E-mail " + email + "dataNascimento " + dataNascimento + " cpf " + cpf
                + " celular " + celular + " StatusEnum " + status + " sexo " + sexo + " senha" + senha + "]";
    }

}

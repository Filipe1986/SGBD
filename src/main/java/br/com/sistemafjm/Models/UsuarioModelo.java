package br.com.sistemafjm.Models;

import java.util.List;

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
public class UsuarioModelo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String nome;
    private String email;
    private String cpf;

    // Retirar
    @Enumerated(EnumType.STRING)
    private DivisaoTreinoEnum series;

    /* Retirar */
    private String dataNascimento;
    private String celular;
    @Enumerated(EnumType.STRING)
    private StatusEnum status;
    @Enumerated(EnumType.STRING)
    private SexoEnum sexo;
    private String senha;

    @OneToMany(mappedBy = "usuario")
    private List<FichaTreino> fichas;

    @OneToMany(mappedBy = "usuario")
    private List<MedidasCorporais> medidas;

    public UsuarioModelo() {

    }

    @Override
    public String toString() {
        return "\nUsuario [ Id " + id + " Nome " + nome + " E-mail " + email + " dataDeNascimento \n" + dataNascimento
                + " cpf " + cpf + " celular " + celular + " StatusEnum " + status + " sexo " + sexo + " senha" + senha
                + "]\n";
    }

}

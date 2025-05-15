package br.upe.receitapp.entity.dto;

import br.upe.receitapp.entity.Ingrediente;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class IngredienteDTO {
    private Long id;
    private String nome;
    private String quantidade;
    private Long receitaId;

    public IngredienteDTO(){}

    public IngredienteDTO(Ingrediente ingrediente){
        this.id = ingrediente.getId();
        this.nome = ingrediente.getNome();
        this.quantidade = ingrediente.getQuantidade();
        this.receitaId = ingrediente.getReceita().getId();
    }
}

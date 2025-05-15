package br.upe.receitapp.entity.dto;

import br.upe.receitapp.entity.Categoria;
import br.upe.receitapp.entity.Ingrediente;
import br.upe.receitapp.entity.ModoPreparo;
import br.upe.receitapp.entity.Receita;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ReceitaDTO {
    private Long id;
    private String titulo;
    private String descricao;
    private List<IngredienteDTO> ingredientes;
    private List<ModoPreparoDTO> modosPreparo;
    private UsuarioDTO usuario;
    private Categoria categoria;

    public ReceitaDTO() {}

    public ReceitaDTO(Receita receita){
        this.id = receita.getId();
        this.titulo = receita.getTitulo();
        this.descricao = receita.getDescricao();

        this.ingredientes = new ArrayList<>();
        for(Ingrediente ingrediente : receita.getIngredientes()){
            this.ingredientes.add(new IngredienteDTO(ingrediente));
        }

        this.modosPreparo = new ArrayList<>();
        for(ModoPreparo modoPreparo : receita.getModosPreparo()){
            this.modosPreparo.add(new ModoPreparoDTO(modoPreparo));
        }

        this.usuario = new UsuarioDTO(receita.getUsuario());
        this.categoria = receita.getCategoria();

    }


}

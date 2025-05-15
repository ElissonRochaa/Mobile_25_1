package br.upe.receitapp.entity.dto;

import br.upe.receitapp.entity.ModoPreparo;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ModoPreparoDTO {
    private Long id;
    private String passo;
    private Long receitaId;

    public ModoPreparoDTO(ModoPreparo modoPreparo){
        this.id = modoPreparo.getId();
        this.passo = modoPreparo.getPasso();
        this.receitaId = modoPreparo.getReceita().getId();
    }
}

package br.upe.receitapp.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ModoPreparo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String passo;

    @ManyToOne
    @JoinColumn(name = "receita_id")
    private Receita receita;
}

package br.upe.receitapp.repository;

import br.upe.receitapp.entity.Receita;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReceitaRepository extends JpaRepository<Receita, Long> {
    public List<Receita> findByCategoriaId(Long id);
}

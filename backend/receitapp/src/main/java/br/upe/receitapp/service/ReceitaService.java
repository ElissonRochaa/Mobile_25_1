package br.upe.receitapp.service;

import br.upe.receitapp.entity.Receita;
import br.upe.receitapp.repository.ReceitaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReceitaService {

    @Autowired
    private ReceitaRepository receitaRepository;

    public List<Receita> findAll() {
        return receitaRepository.findAll();
    }

    public Receita save(Receita receita) {
        return receitaRepository.save(receita);
    }

    public Receita findById(Long id) {
        return receitaRepository.findById(id).orElse(null);
    }

    public List<Receita> findByCategoria(Long id){
        return receitaRepository.findByCategoriaId(id);
    }

    public void deleteById(Long id) {
        receitaRepository.deleteById(id);
    }
}

package br.upe.receitapp.service;

import br.upe.receitapp.entity.Ingrediente;
import br.upe.receitapp.repository.IngredienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IngredienteService {

    @Autowired
    private IngredienteRepository ingredienteRepository;

    public List<Ingrediente> findAll() {
        return ingredienteRepository.findAll();
    }

    public Ingrediente save(Ingrediente ingrediente) {
        return ingredienteRepository.save(ingrediente);
    }

    public Ingrediente findById(Long id) {
        return ingredienteRepository.findById(id).orElse(null);
    }

    public void deleteById(Long id) {
        ingredienteRepository.deleteById(id);
    }
}

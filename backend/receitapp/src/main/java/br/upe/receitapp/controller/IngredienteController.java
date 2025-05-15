package br.upe.receitapp.controller;

import br.upe.receitapp.entity.Ingrediente;
import br.upe.receitapp.service.IngredienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/ingredientes")
public class IngredienteController {

    @Autowired
    private IngredienteService ingredienteService;

    @GetMapping
    public List<Ingrediente> findAll() {
        return ingredienteService.findAll();
    }

    @PostMapping
    public Ingrediente save(@RequestBody Ingrediente ingrediente) {
        return ingredienteService.save(ingrediente);
    }

    @GetMapping("/{id}")
    public Ingrediente findById(@PathVariable Long id) {
        return ingredienteService.findById(id);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        ingredienteService.deleteById(id);
    }
}
package br.upe.receitapp.controller;

import br.upe.receitapp.entity.Receita;
import br.upe.receitapp.entity.dto.ReceitaDTO;
import br.upe.receitapp.service.ReceitaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/receitas")
public class ReceitaController {

    @Autowired
    private ReceitaService receitaService;

    @GetMapping
    public ResponseEntity<List<ReceitaDTO>> findAll() {
        return ResponseEntity.ok(receitaService.findAll()
                .stream()
                .map(ReceitaDTO::new) // Se houver um construtor ReceitaDTO(Receita receita)
                .collect(Collectors.toList()));
    }

    @PostMapping
    public ResponseEntity<ReceitaDTO> save(@RequestBody Receita receita) {
        return ResponseEntity.ok(new ReceitaDTO(receitaService.save(receita)));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ReceitaDTO> findById(@PathVariable Long id) {
        return ResponseEntity.ok(new ReceitaDTO(receitaService.findById(id)));
    }

    @GetMapping("/categorias/{id}")
    public ResponseEntity<List<ReceitaDTO>> findByCategoria(@PathVariable Long id) {
        return ResponseEntity.ok(
                receitaService.findByCategoria(id)
                        .stream()
                        .map(ReceitaDTO::new)
                        .collect(Collectors.toList()));
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        receitaService.deleteById(id);
    }
}

package br.upe.receitapp.controller;

import br.upe.receitapp.entity.Comentario;
import br.upe.receitapp.service.ComentarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/comentarios")
public class ComentarioController {

    @Autowired
    private ComentarioService comentarioService;

    @GetMapping
    public List<Comentario> findAll() {
        return comentarioService.findAll();
    }

    @PostMapping
    public Comentario save(@RequestBody Comentario comentario) {
        return comentarioService.save(comentario);
    }

    @GetMapping("/{id}")
    public Comentario findById(@PathVariable Long id) {
        return comentarioService.findById(id);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        comentarioService.deleteById(id);
    }
}

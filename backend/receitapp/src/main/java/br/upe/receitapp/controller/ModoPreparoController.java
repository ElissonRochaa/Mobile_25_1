package br.upe.receitapp.controller;

import br.upe.receitapp.entity.ModoPreparo;
import br.upe.receitapp.service.ModoPreparoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/modos-preparo")
public class ModoPreparoController {

    @Autowired
    private ModoPreparoService modoPreparoService;

    @GetMapping
    public List<ModoPreparo> findAll() {
        return modoPreparoService.findAll();
    }

    @PostMapping
    public ModoPreparo save(@RequestBody ModoPreparo modoPreparo) {
        return modoPreparoService.save(modoPreparo);
    }

    @GetMapping("/{id}")
    public ModoPreparo findById(@PathVariable Long id) {
        return modoPreparoService.findById(id);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        modoPreparoService.deleteById(id);
    }
}

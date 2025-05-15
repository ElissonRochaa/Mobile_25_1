package br.upe.receitapp.service;

import br.upe.receitapp.entity.ModoPreparo;
import br.upe.receitapp.repository.ModoPreparoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModoPreparoService {

    @Autowired
    private ModoPreparoRepository modoPreparoRepository;

    public List<ModoPreparo> findAll() {
        return modoPreparoRepository.findAll();
    }

    public ModoPreparo save(ModoPreparo modoPreparo) {
        return modoPreparoRepository.save(modoPreparo);
    }

    public ModoPreparo findById(Long id) {
        return modoPreparoRepository.findById(id).orElse(null);
    }

    public void deleteById(Long id) {
        modoPreparoRepository.deleteById(id);
    }
}

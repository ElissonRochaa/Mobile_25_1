package br.upe.receitapp.service;

import br.upe.receitapp.entity.Comentario;
import br.upe.receitapp.repository.ComentarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ComentarioService {

    @Autowired
    private ComentarioRepository comentarioRepository;

    public List<Comentario> findAll() {
        return comentarioRepository.findAll();
    }

    public Comentario save(Comentario comentario) {
        return comentarioRepository.save(comentario);
    }

    public Comentario findById(Long id) {
        return comentarioRepository.findById(id).orElse(null);
    }

    public void deleteById(Long id) {
        comentarioRepository.deleteById(id);
    }
}

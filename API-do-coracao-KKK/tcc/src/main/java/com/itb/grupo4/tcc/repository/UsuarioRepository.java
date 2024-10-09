package com.itb.grupo4.tcc.repository;


import com.itb.grupo4.tcc.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    Usuario findAllById(long id);
}

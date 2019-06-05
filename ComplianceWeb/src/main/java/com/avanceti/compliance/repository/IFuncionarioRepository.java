package com.avanceti.compliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.avanceti.compliance.model.Funcionarios;

@Repository
public interface IFuncionarioRepository extends JpaRepository<Funcionarios, Integer> {

	List<Funcionarios> findBynameLike(String nombre);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.joseph.dao;

import com.joseph.model.Curso;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Juan
 */
@Stateless
public class CursoFacade implements CursoFacadeLocal {

    @PersistenceContext
    private EntityManager em;

    @Override
    public void addCurso(Curso curso) {
        em.persist(curso);
    }

    @Override
    public void editCurso(Curso curso) {
        em.merge(curso);
    }

    @Override
    public void deleteCurso(int codigoCurso) {
        em.remove(getCurso(codigoCurso));
    }

    @Override
    public Curso getCurso(int codigoCurso) {
        return em.find(Curso.class, codigoCurso);
    }

    @Override
    public List<Curso> getAllCurso() {
        return em.createNamedQuery("Curso.getAll").getResultList();
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.joseph.dao;

import com.joseph.model.Curso;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Juan
 */
@Local
public interface CursoFacadeLocal {

     void addCurso(Curso curso);

    void editCurso(Curso curso);

    void deleteCurso(int codigoCurso);

    Curso getCurso(int codigoCurso);

    List<Curso> getAllCurso();
    
}

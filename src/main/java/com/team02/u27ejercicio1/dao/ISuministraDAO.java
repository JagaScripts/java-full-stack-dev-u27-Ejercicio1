/**
 * u26-Ejercicio1 - com.team02.u26.ejercicio1.dao - ISuministraDAO
 *
 * @author Daniel Fernández Cacho
 * @author Joan Hurtado García
 * @author Jose Antonio González Alcántara
 * 
 * Fecha de creación 17/05/2022
 */
package com.team02.u27ejercicio1.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.team02.u27ejercicio1.dto.Suministra;

/**
 * ISuministraDAO.java
 *
 */
public interface ISuministraDAO extends JpaRepository<Suministra, Integer> {

}

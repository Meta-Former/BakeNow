/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.bakenow.core.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

/**
 *
 * @author Admin
 * @param <T>
 */
public interface DAO<T> {

    public boolean add(T... t);

    public List<T> getAll() throws Exception;

    public Optional getById(String id);

    public List<T> getByParentId(String pId);

    public List<T> getSortedByTime(Timestamp datetime);
//    java.util.Date date = new Date();
//    Object param = new java.sql.Timestamp(date.getTime());

    public List<T> getByStatus(int status);

    public boolean update(String... cellValue);

    public boolean delete(String id);

}

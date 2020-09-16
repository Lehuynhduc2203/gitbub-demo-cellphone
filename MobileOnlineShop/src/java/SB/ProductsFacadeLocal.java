/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Entity.Products;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Admin
 */
@Local
public interface ProductsFacadeLocal {

    void create(Products products);

    void edit(Products products);

    void remove(Products products);

    Products find(Object id);

    List<Products> findAll();

    List<Products> findRange(int[] range);

    int count();

    List<Products> findByProductName(String name);

    List<Products> findbyCateid(int id);

    List<Products> findHighttoLow();

    List<Products> findLowtoHight();

    List<Products> findBrand(List<String> id);

    List<Products> findProductbyBrand(int cateid, int brandid);

    List<Products> findPrice(int cateid, int brandid, int min, int max);

    List<Products> findAcitionTest(boolean action);

    List<Products> findbyPrice(int cateid, int min, int max);

    
    
}

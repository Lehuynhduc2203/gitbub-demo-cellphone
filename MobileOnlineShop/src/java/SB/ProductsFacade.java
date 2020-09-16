/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Entity.Products;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Admin
 */
@Stateless
public class ProductsFacade extends AbstractFacade<Products> implements ProductsFacadeLocal {

    @PersistenceContext(unitName = "MobileOnlineShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductsFacade() {
        super(Products.class);
    }

    @Override
    public List<Products> findByProductName(String name) {
        Query q = em.createQuery("SELECT o FROM Products o WHERE o.action = :action  AND o.productName LIKE :name  ");
        q.setParameter("action", true);

        q.setParameter("name", "%" + name + "%");
        

        return q.getResultList();
    }

    @Override
    public List<Products> findbyCateid(int id) {
        Query q = em.createQuery("SELECT o FROM Products o WHERE o.categoryID.categoriesID = :id AND o.action = :action");
        q.setParameter("action", true);

        q.setParameter("id", id);

        return q.getResultList();
    }

    @Override
    public List<Products> findHighttoLow() {
        Query q = em.createQuery("SELECT o FROM Products o WHERE o.action = :action ORDER BY o.price DESC ");
        q.setParameter("action", true);
        return q.getResultList();
    }

    @Override
    public List<Products> findLowtoHight() {
        Query q = em.createQuery("SELECT o FROM Products o WHERE o.action = :action ORDER BY o.price ASC ");
                q.setParameter("action", true);

        return q.getResultList();
    }

    @Override
    public List<Products> findBrand(List<String> id) {
        Query q = em.createQuery("SELECT o FROM Products o WHERE o.action = :action AND o.brandID IN :id ");
        List<String> idList = new ArrayList<>();
        for (int i = 0; i < id.size(); i++) {
            idList.add(id.get(i));
        }

        q.setParameter("id", idList);
        q.setParameter("action", true);
        return q.getResultList();
    }

    @Override
    public List<Products> findProductbyBrand(int cateid, int brandid) {
        try {
            Query q = em.createQuery("SELECT o FROM Products o WHERE o.categoryID.categoriesID = :cateid AND "
                    + "o.brandID.brandID = :brandid ");
            q.setParameter("cateid", cateid);
            q.setParameter("brandid", brandid);
            return q.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Products> findPrice(int cateid, int brandid, int min, int max) {
        try {
            Query q = em.createQuery("SELECT o FROM Products o WHERE o.categoryID.categoriesID = :cateid AND o.brandID.brandID = "
                    + ":brandid AND (o.price BETWEEN :min AND :max OR o.promotionPrice BETWEEN :min AND :max)");
            q.setParameter("cateid", cateid);
            q.setParameter("brandid", brandid);
            q.setParameter("min", min);
            q.setParameter("max", max);
            return q.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    

    @Override
    public List<Products> findAcitionTest(boolean action) {
        Query q = em.createQuery("SELECT o FROM Products o WHERE o.action = :name ");

        q.setParameter("name", action);

        return q.getResultList();
    }

    @Override
    public List<Products> findbyPrice(int cateid, int min, int max) {
        try {
            Query q = em.createQuery("SELECT o FROM Products o WHERE o.categoryID.categoriesID = :cateid AND o.price BETWEEN :min AND :max OR o.promotionPrice BETWEEN :min AND :max ");
            q.setParameter("cateid", cateid);
            q.setParameter("min", min);
            q.setParameter("max", max);
            return q.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}

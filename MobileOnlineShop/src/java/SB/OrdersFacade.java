/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Entity.Customers;
import Entity.Orders;
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
public class OrdersFacade extends AbstractFacade<Orders> implements OrdersFacadeLocal {

    @PersistenceContext(unitName = "MobileOnlineShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrdersFacade() {
        super(Orders.class);
    }

    @Override
    public List<Orders> findEmail(String email) {
        Query q = em.createQuery("SELECT o FROM Orders o WHERE o.customerEmail.email = :email");
        q.setParameter("email", email);
        return q.getResultList();
    }

    @Override
    public List<Orders> findSub(String shipname) {
        Query q = em.createQuery("SELECT o FROM Orders o WHERE o.customerEmail.email = :email");
        q.setParameter("email", "khuong@gmail.com");
        return q.getResultList();
    }

    @Override
    public List<Orders> findByStatus(String name) {
        Query q = em.createQuery("SELECT o FROM Orders o WHERE o.orderState = :name ");

        q.setParameter("name", name);

        return q.getResultList();
    }

    

    
    
    
    
}

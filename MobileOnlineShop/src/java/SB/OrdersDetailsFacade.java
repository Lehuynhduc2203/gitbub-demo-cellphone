/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Entity.OrdersDetails;
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
public class OrdersDetailsFacade extends AbstractFacade<OrdersDetails> implements OrdersDetailsFacadeLocal {

    @PersistenceContext(unitName = "MobileOnlineShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrdersDetailsFacade() {
        super(OrdersDetails.class);
    }

    @Override
    public List<OrdersDetails> findOrderID(int id) {
        Query q = em.createQuery("SELECT o FROM OrdersDetails o WHERE o.orderID.orderID = :id ");
        q.setParameter("id", id);
        return q.getResultList();
    }
    
    
    
}

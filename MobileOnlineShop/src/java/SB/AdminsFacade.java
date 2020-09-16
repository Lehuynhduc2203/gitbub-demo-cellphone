/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Encry.Encryption;
import Entity.Admins;
import Entity.Customers;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Admin
 */
@Stateless
public class AdminsFacade extends AbstractFacade<Admins> implements AdminsFacadeLocal {

    @PersistenceContext(unitName = "MobileOnlineShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdminsFacade() {
        super(Admins.class);
    }

    @Override
    public Admins checkLogin(String email, String password) {

        try {
            Query q = em.createQuery("SELECT o FROM Admins o WHERE o.email = :email ");
            q.setParameter("email", email);
            Admins cs = (Admins) q.getSingleResult();
            if (cs.getPassword().equalsIgnoreCase(Encryption.MD5(password))) {

                return cs;
            }
        } catch (Exception e) {

            e.printStackTrace();
            return null;

        }
        return null;
    }

}

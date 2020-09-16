/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Encry.Encryption;
import Entity.Customers;
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
public class CustomersFacade extends AbstractFacade<Customers> implements CustomersFacadeLocal {

    @PersistenceContext(unitName = "MobileOnlineShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomersFacade() {
        super(Customers.class);
    }

    @Override
    public Customers checkLogin(String email, String password) {

        try {
            Query q = em.createQuery("SELECT o FROM Customers o WHERE o.email = :email ");
            q.setParameter("email", email);
            Customers cs = (Customers) q.getSingleResult();
            if (cs.getPassword().equalsIgnoreCase(Encryption.MD5(password))) {

                return cs;
            }
        } catch (Exception e) {

            e.printStackTrace();
            return null;

        }
        return null;
    }

    @Override
    public Customers updateCustomer(String email, String firstname, String lastname, String gender, String phone, String address) {
        Query q = em.createQuery("UPDATE Customers o SET o.firstName = :firstname , o.lastName = :lastname , o.gender = :gender , o.phone = :phone , o.address = : address WHERE o.email = :email ");
        q.setParameter("firstname", firstname);
        q.setParameter("lastname", lastname);
        q.setParameter("gender", gender);
        q.setParameter("phone", phone);
        q.setParameter("address", address);
        q.setParameter("email", email);

        return null;
    }

    @Override
    public List<Customers> findByCustomerEmail(String email) {
        Query q = em.createQuery("SELECT o FROM Customers o WHERE o.email LIKE :email ");

        q.setParameter("email", "%" + email + "%");

        return q.getResultList();
    }

    @Override
    public Customers findEmailCustomer(String email) {
        Query q = em.createQuery("SELECT o FROM Customers o WHERE o.email = :email ");

        q.setParameter("email", email);

        return (Customers)q.getSingleResult();
    }
    
    

}

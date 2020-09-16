/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SB;

import Entity.Customers;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Admin
 */
@Local
public interface CustomersFacadeLocal {

    void create(Customers customers);

    void edit(Customers customers);

    void remove(Customers customers);

    Customers find(Object id);

    List<Customers> findAll();

    List<Customers> findRange(int[] range);

    int count();

    Customers checkLogin(String email, String password);

    Customers updateCustomer(String email, String firstname, String lastname, String gender, String phone, String address);

    List<Customers> findByCustomerEmail(String email);

    Customers findEmailCustomer(String email);
    
}

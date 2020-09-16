/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "OrdersDetails")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OrdersDetails.findAll", query = "SELECT o FROM OrdersDetails o")
    , @NamedQuery(name = "OrdersDetails.findByOrdersDetailsID", query = "SELECT o FROM OrdersDetails o WHERE o.ordersDetailsID = :ordersDetailsID")
    , @NamedQuery(name = "OrdersDetails.findByPrice", query = "SELECT o FROM OrdersDetails o WHERE o.price = :price")
    , @NamedQuery(name = "OrdersDetails.findByQuantity", query = "SELECT o FROM OrdersDetails o WHERE o.quantity = :quantity")
    , @NamedQuery(name = "OrdersDetails.findByTotalPrice", query = "SELECT o FROM OrdersDetails o WHERE o.totalPrice = :totalPrice")})
public class OrdersDetails implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "OrdersDetailsID")
    private Integer ordersDetailsID;
    @Column(name = "Price")
    private Integer price;
    @Column(name = "Quantity")
    private Integer quantity;
    @Column(name = "TotalPrice")
    private Integer totalPrice;
    @JoinColumn(name = "OrderID", referencedColumnName = "OrderID")
    @ManyToOne
    private Orders orderID;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID")
    @ManyToOne
    private Products productID;

    public OrdersDetails() {
    }

    public OrdersDetails(Integer ordersDetailsID) {
        this.ordersDetailsID = ordersDetailsID;
    }

    public Integer getOrdersDetailsID() {
        return ordersDetailsID;
    }

    public void setOrdersDetailsID(Integer ordersDetailsID) {
        this.ordersDetailsID = ordersDetailsID;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Orders getOrderID() {
        return orderID;
    }

    public void setOrderID(Orders orderID) {
        this.orderID = orderID;
    }

    public Products getProductID() {
        return productID;
    }

    public void setProductID(Products productID) {
        this.productID = productID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ordersDetailsID != null ? ordersDetailsID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrdersDetails)) {
            return false;
        }
        OrdersDetails other = (OrdersDetails) object;
        if ((this.ordersDetailsID == null && other.ordersDetailsID != null) || (this.ordersDetailsID != null && !this.ordersDetailsID.equals(other.ordersDetailsID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.OrdersDetails[ ordersDetailsID=" + ordersDetailsID + " ]";
    }
    
}

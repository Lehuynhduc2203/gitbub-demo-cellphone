package Entity;

import Entity.Orders;
import Entity.Products;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-08-06T16:55:46")
@StaticMetamodel(OrdersDetails.class)
public class OrdersDetails_ { 

    public static volatile SingularAttribute<OrdersDetails, Integer> ordersDetailsID;
    public static volatile SingularAttribute<OrdersDetails, Integer> quantity;
    public static volatile SingularAttribute<OrdersDetails, Products> productID;
    public static volatile SingularAttribute<OrdersDetails, Integer> totalPrice;
    public static volatile SingularAttribute<OrdersDetails, Orders> orderID;
    public static volatile SingularAttribute<OrdersDetails, Integer> price;

}
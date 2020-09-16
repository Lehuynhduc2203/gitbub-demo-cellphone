package Entity;

import Entity.Customers;
import Entity.OrdersDetails;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-08-06T16:55:45")
@StaticMetamodel(Orders.class)
public class Orders_ { 

    public static volatile SingularAttribute<Orders, Integer> orderID;
    public static volatile SingularAttribute<Orders, String> shipNote;
    public static volatile SingularAttribute<Orders, String> expected;
    public static volatile SingularAttribute<Orders, Customers> customerEmail;
    public static volatile SingularAttribute<Orders, Integer> subTotal;
    public static volatile SingularAttribute<Orders, String> shipName;
    public static volatile SingularAttribute<Orders, String> orderDate;
    public static volatile SingularAttribute<Orders, String> shipAddress;
    public static volatile SingularAttribute<Orders, String> shipPhone;
    public static volatile SingularAttribute<Orders, String> orderState;
    public static volatile CollectionAttribute<Orders, OrdersDetails> ordersDetailsCollection;

}
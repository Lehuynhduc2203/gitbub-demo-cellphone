package Entity;

import Entity.Brands;
import Entity.Categories;
import Entity.OrdersDetails;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-08-06T16:55:45")
@StaticMetamodel(Products.class)
public class Products_ { 

    public static volatile SingularAttribute<Products, String> productImage;
    public static volatile SingularAttribute<Products, Integer> productID;
    public static volatile SingularAttribute<Products, Integer> promotionPrice;
    public static volatile SingularAttribute<Products, Integer> price;
    public static volatile SingularAttribute<Products, Brands> brandID;
    public static volatile SingularAttribute<Products, Boolean> action;
    public static volatile SingularAttribute<Products, String> productName;
    public static volatile SingularAttribute<Products, String> productDescription;
    public static volatile SingularAttribute<Products, Categories> categoryID;
    public static volatile CollectionAttribute<Products, OrdersDetails> ordersDetailsCollection;

}
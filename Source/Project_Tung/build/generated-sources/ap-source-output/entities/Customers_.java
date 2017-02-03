package entities;

import entities.FeedBack;
import entities.Orders;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2015-09-06T20:53:16")
@StaticMetamodel(Customers.class)
public class Customers_ { 

    public static volatile SingularAttribute<Customers, String> customerName;
    public static volatile SingularAttribute<Customers, String> username;
    public static volatile SingularAttribute<Customers, String> customerMobile;
    public static volatile SingularAttribute<Customers, Short> status;
    public static volatile SingularAttribute<Customers, Date> dob;
    public static volatile SingularAttribute<Customers, String> customerAddress;
    public static volatile CollectionAttribute<Customers, FeedBack> feedBackCollection;
    public static volatile SingularAttribute<Customers, String> customerEmail;
    public static volatile CollectionAttribute<Customers, Orders> ordersCollection;
    public static volatile SingularAttribute<Customers, String> password;

}
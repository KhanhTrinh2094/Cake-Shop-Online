package entities;

import entities.Customers;
import entities.OrderDetails;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2015-09-06T20:53:16")
@StaticMetamodel(Orders.class)
public class Orders_ { 

    public static volatile SingularAttribute<Orders, String> contactNumber;
    public static volatile SingularAttribute<Orders, Integer> orderID;
    public static volatile SingularAttribute<Orders, Short> status;
    public static volatile SingularAttribute<Orders, String> recipientAddress;
    public static volatile SingularAttribute<Orders, Date> recipientDOB;
    public static volatile SingularAttribute<Orders, Date> orderTime;
    public static volatile SingularAttribute<Orders, Short> orderStatus;
    public static volatile SingularAttribute<Orders, Customers> username;
    public static volatile SingularAttribute<Orders, String> recipientName;
    public static volatile SingularAttribute<Orders, Date> deliveryDate;
    public static volatile SingularAttribute<Orders, String> note;
    public static volatile SingularAttribute<Orders, BigDecimal> totalPrice;
    public static volatile CollectionAttribute<Orders, OrderDetails> orderDetailsCollection;

}
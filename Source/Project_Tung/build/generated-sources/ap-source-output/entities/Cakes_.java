package entities;

import entities.Events;
import entities.OrderDetails;
import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2015-09-06T20:53:16")
@StaticMetamodel(Cakes.class)
public class Cakes_ { 

    public static volatile SingularAttribute<Cakes, String> cakeName;
    public static volatile SingularAttribute<Cakes, Events> eventID;
    public static volatile SingularAttribute<Cakes, Short> status;
    public static volatile SingularAttribute<Cakes, String> cakeImage;
    public static volatile SingularAttribute<Cakes, Integer> cakeID;
    public static volatile SingularAttribute<Cakes, BigDecimal> cakePrice;
    public static volatile SingularAttribute<Cakes, Boolean> isEgg;
    public static volatile SingularAttribute<Cakes, String> cakeDetails;
    public static volatile CollectionAttribute<Cakes, OrderDetails> orderDetailsCollection;

}
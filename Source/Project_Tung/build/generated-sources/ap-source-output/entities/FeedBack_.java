package entities;

import entities.Customers;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2015-09-06T20:53:16")
@StaticMetamodel(FeedBack.class)
public class FeedBack_ { 

    public static volatile SingularAttribute<FeedBack, Integer> id;
    public static volatile SingularAttribute<FeedBack, String> detail;
    public static volatile SingularAttribute<FeedBack, Customers> username;
    public static volatile SingularAttribute<FeedBack, Short> status;
    public static volatile SingularAttribute<FeedBack, String> reply;
    public static volatile SingularAttribute<FeedBack, Date> date;

}
package entities;

import entities.Cakes;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2015-09-06T20:53:16")
@StaticMetamodel(Events.class)
public class Events_ { 

    public static volatile SingularAttribute<Events, Integer> eventID;
    public static volatile CollectionAttribute<Events, Cakes> cakesCollection;
    public static volatile SingularAttribute<Events, Short> status;
    public static volatile SingularAttribute<Events, String> eventName;

}
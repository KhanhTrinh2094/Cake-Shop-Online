package managed;

import entities.CakeCarts;
import entities.Cakes;
import entities.Customers;
import entities.OrderDetails;
import entities.Orders;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Map;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.servlet.http.HttpSession;
import session.CakesFacade;
import session.CustomersFacade;
import session.OrderDetailsFacade;
import session.OrdersFacade;

@ManagedBean
@RequestScoped
public class CheckoutMB {

    @EJB
    private CakesFacade cakesFacade;
    @EJB
    private CustomersFacade customersFacade;
    @EJB
    private OrderDetailsFacade orderDetailsFacade;
    @EJB
    private OrdersFacade ordersFacade;
    private OrderDetails orderDetail;

    private Orders order;

    public CheckoutMB() {
        if (order == null) {
            order = new Orders();
        }
    }

    public String checkOut() {
        int orderID;
        HttpSession session = SessionMB.getSession();
        order.setUsername(customersFacade.find(session.getAttribute("username").toString()));
        order.setOrderStatus(new Short("1"));
        order.setOrderTime(Calendar.getInstance().getTime());
        order.setStatus(new Short("1"));
        BigDecimal totalPrice = new BigDecimal("0");
        orderID = ordersFacade.createOrders(order);
        
        CartManaged cart = new CartManaged();
        for (Map.Entry<Integer, CakeCarts> item : cart.getCart().entrySet()) {
            Cakes cake= cakesFacade.find(item.getKey());
            orderDetail = new OrderDetails();  
            orderDetail.setCakeID(cake);
            orderDetail.setOrderID(ordersFacade.find(orderID));
            orderDetail.setQuantity(item.getValue().getQuantity());
            orderDetail.setPrice(new BigDecimal(item.getValue().getQuantity()).multiply(item.getValue().getPrice()));
            totalPrice = totalPrice.add(new BigDecimal(item.getValue().getQuantity()).multiply(item.getValue().getPrice()));
            orderDetailsFacade.create(orderDetail);
        }
        order.setTotalPrice(totalPrice);
        ordersFacade.edit(order);
        session.removeAttribute("CART");
        return "index";
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }
    
    public String preCheckout(){
        Customers cus = customersFacade.find(SessionMB.getSession().getAttribute("username").toString());
        if(cus != null){
            order.setRecipientName(cus.getCustomerName());
            order.setRecipientAddress(cus.getCustomerAddress());
            order.setContactNumber(cus.getCustomerMobile());
            return "CheckOut";
        }
        return "Login";
    }
}

package managed;

import entities.CakeCarts;
import entities.Cakes;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map.Entry;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.servlet.http.HttpSession;

@ManagedBean
@ViewScoped
public class CartManaged implements Serializable {

    private HashMap<Integer, CakeCarts> cart;

    public CartManaged() {
        cart = new HashMap<>();
    }

    public HashMap<Integer, CakeCarts> getCart() {
        HttpSession session = SessionMB.getSession();
        if (session.getAttribute("CART") != null) {
            cart = (HashMap<Integer, CakeCarts>) session.getAttribute("CART");
        } else {
            cart = new HashMap<>();
        }
        return cart;
    }

    public void setCart(HashMap<Integer, CakeCarts> cart) {
        HttpSession session = SessionMB.getSession();
        session.setAttribute("CART", cart);
    }

    public String addCart(Cakes product) {
        cart = getCart();
        if (cart.containsKey(product.getCakeID())) {
            cart.get(product.getCakeID()).quantity++;
        } else {
            cart.put(product.getCakeID(), new CakeCarts(product.getCakeName(), product.getCakeImage(), product.getCakeID(), product.getCakePrice()));
        }
        setCart(cart);
        return "Cart";
    }

    public String updateCart(Entry<Integer, CakeCarts> entry) {
        cart = getCart();
        if (entry.getValue().quantity <= 0) {
            cart.remove(entry.getKey());
        } else {
            cart.put(entry.getKey(), entry.getValue());
        }
        setCart(cart);
        return "Cart";
    }

    public String goHome() {
        return "index";
    }
    
    public String removeCart(int id) {
        cart = getCart();
        if (cart.containsKey(id)) {
            cart.remove(id);
        }
        setCart(cart);
        return "Cart";
    }

    public int getCount() {
        cart = getCart();
        return cart.size();
    }

    public BigDecimal getTotal() {
        BigDecimal total = new BigDecimal(0);
        cart = getCart();
        if (cart.size() > 0) {
            for (CakeCarts item : cart.values()) {
                total = total.add(new BigDecimal(item.quantity).multiply(item.getPrice()));
            }
        }
        return total;
    }

}

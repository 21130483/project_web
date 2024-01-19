package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private static Map<Product, Integer> cart = new HashMap<>();

    public Cart() {
    }

    public int sizeCart() {
        return cart.size();
    }

    public Map<Product, Integer> getCart() {
        return cart;
    }

    public void setCart(Map<Product, Integer> cart) {
        this.cart = cart;
    }

    public static void addProduct(Product product) {
        if (cart.containsKey(product)) {
            cart.put(product, cart.get(product));
        } else {
            cart.put(product, 1);
        }
    }

    public static void removeProduct(Product product, boolean clearAll) {
        if (cart.containsKey(product)) {
            if (clearAll || cart.get(product) == 1) {
                cart.remove(product);
            } else {
                cart.put(product, cart.get(product) - 1);
            }
        }
    }


}

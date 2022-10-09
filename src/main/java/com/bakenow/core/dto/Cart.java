/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bakenow.core.dto;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 *
 * @author Admin
 */
public class Cart {

    private Map<Integer, CartItem> cartItems;   //key: productId
    private String sessionId;
    private String userId;
    private double total;

    public Cart() {
        this.cartItems = new ConcurrentHashMap<>();
    }

    public Cart(Map<Integer, CartItem> cartItems, String sessionId, String userId, double total) {
        this.cartItems = new ConcurrentHashMap<>(cartItems);
        this.sessionId = sessionId;
        this.userId = userId;
        this.total = total;
    }

    private CartItem find(CartItem cartItem) {
        return this.cartItems.getOrDefault(cartItem.getProduct().getId(), new CartItem(cartItem.getProduct(), 0));
    }

    //TEST:
    //  *   Basic test cases
    //  *   Null id newCartItem into non-null id (via queried) cartItem
    public boolean add(CartItem newCartItem) {
        CartItem cartItem = this.find(newCartItem);
        cartItem.setQuantity(cartItem.getQuantity() + newCartItem.getQuantity());
        this.cartItems.put(cartItem.getProduct().getId(), cartItem);
        return true;
    }

    public boolean add(Product product, int quantity) {
        CartItem newCartItem = new CartItem(product, quantity);
        this.add(newCartItem);
        return true;
    }

    public boolean update(CartItem toBeCartItem) {
        if (toBeCartItem.getQuantity() <= 0) {
            this.remove(toBeCartItem);
        } else {
            this.cartItems.replace(toBeCartItem.getProduct().getId(), toBeCartItem);
        }
        return true;
    }

    public boolean update(Product product, int quantity) {
        CartItem cartItem = new CartItem(product, quantity);
        this.update(cartItem);
        return true;
    }

    public boolean remove(CartItem cartItem) {
        return this.cartItems.remove(cartItem.getProduct().getId()) != null;
    }

    public boolean remove(Product product, int quantity) {
        CartItem cartItem = new CartItem(product, quantity);
        this.remove(cartItem);
        return true;
    }

    public Map<Integer, CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(Map<Integer, CartItem> cartItems) {
        this.cartItems = cartItems;
    }

}

package controller;

import dao.ProductDAO;
import dao.PurchasesDAO;
import model.Cart;
import model.Product;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/html/purchase")
public class PurchasesController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        PurchasesDAO purchasesDAO = new PurchasesDAO();
        ProductDAO productDAO = new ProductDAO();
        int newPurchaseId = purchasesDAO.newPurchaseID();
        for (Product p : cart.listProductBuy()) {
            purchasesDAO.addPurchase(newPurchaseId,p.getProductID(), user.getUserID(), cart.getCart().get(p), p.getPrice()*cart.getCart().get(p));
            productDAO.updateProduct(p.getProductID(), "quantity", String.valueOf(p.getQuantity() - 1));
        }
        cart.deletedProdcutBuyFromCart();
        session.setAttribute("cart", cart);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}

package controller;

import com.mysql.cj.Session;
import dao.ProductDAO;
import model.Cart;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/html/cart")
public class CartController extends HttpServlet {
    private static Cart cart;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productID = Integer.parseInt(req.getParameter("id"));
//        String page = req.getParameter("page");
        System.out.println("cart :"+productID);
//        HttpSession session =req.getSession();
//        ProductDAO productDAO = new ProductDAO();
//        Product productAdd = productDAO.getProductById(productID);
//        cart.addProduct(productAdd);
//        int sizeCart = cart.sizeCart();
//        session.setAttribute("cart",cart);
        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }
}

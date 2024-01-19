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
    private static Cart cart = new Cart();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productID = Integer.parseInt(req.getParameter("id"));
        String active = req.getParameter("active");
        String page = req.getParameter("page");
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductById(productID);
        switch (active){
            case "add" :
                cart.addProduct(product);
                break;

            case "remove" :
                boolean clearAll = Boolean.parseBoolean(req.getParameter("clearAll"));
                cart.removeProduct(product,clearAll);
                break;
            default:
                System.out.println("sai cau lenh");
        }


        HttpSession session =req.getSession();
        session.setAttribute("cart",cart);
//        for(Product p : cart.getCart().keySet()){
//            System.out.println(p.getProductID()+" : "+cart.getCart().get(p));
//        }
        req.getRequestDispatcher(page+".jsp").forward(req,resp);

    }
}

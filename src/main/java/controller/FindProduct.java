package controller;

import dao.ProductDAO;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/html/findProduct")
public class FindProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String textFindProducts = req.getParameter("textFindProduct")==null?"":(String) req.getParameter("textFindProduct");
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.getFindProducts(textFindProducts);
        for(Product p : products){
            System.out.println(p);
        }
        req.setAttribute("getFindProducts", products);

        req.getRequestDispatcher("products.jsp").forward(req, resp);
    }


}

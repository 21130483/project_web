package controller;

import dao.ProductDAO;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import java.io.File;
=======
>>>>>>> 2c5e5229516305c35db6499b6fed0cbe53d556a7
import java.io.IOException;

@WebServlet("/html/product-detail")
public class ProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productID = Integer.parseInt(req.getParameter("id"));
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductById(productID);
<<<<<<< HEAD
        String path = req.getServletContext().getRealPath("");;
        int numberImg = product.numberImg(path+"image/product/"+product.getProductID());
        req.setAttribute("productDetail",product);
        req.setAttribute("numberImg",numberImg);
=======
        req.setAttribute("productDetail",product);
>>>>>>> 2c5e5229516305c35db6499b6fed0cbe53d556a7
        req.getRequestDispatcher("product.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req,resp);

    }
}

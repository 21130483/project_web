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
    List<Product> list = new ArrayList<>();
    private static String textFindProducts;

    //    0 là những sản phẩm liên quan
    //    1 là những sản phẩm mới nhất
    //    2 là những sản phẩm bán chạy
    int sortedBy = 0;

    //    0 là ko sắp xếp theo giá
    //    1 là giá từ cao đến thấp
    //    2 là giá từ thấp đến cao
    int priceBy = 0;

    boolean betweenTo = false;
    double from = 0;
    double to = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        textFindProducts = req.getParameter("textFindProduct") == null ? "" : (String) req.getParameter("textFindProduct");
        System.out.println(textFindProducts);
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.getFindProducts(textFindProducts);
        for (Product p : products) {
            System.out.println(p);
        }
        req.setAttribute("textFindProducts", textFindProducts);
        req.setAttribute("getFindProducts", products);

        req.getRequestDispatcher("products.jsp").forward(req, resp);
    }


}

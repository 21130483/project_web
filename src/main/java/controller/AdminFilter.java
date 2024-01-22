package controller;

import dao.ProductDAO;
import dao.UserDAO;
import model.Product;
import model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/html/admin")
public class AdminFilter extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null && user.getRole()) {
            String page = req.getParameter("page");
            switch (page) {
                case "product":
                    ProductDAO productDAO = new ProductDAO();
                    List<Product> products = productDAO.getAllProduct();
                    req.setAttribute("getAllProducts", products);
                    page = "managerProducts.jsp";
                    break;

                case "user":
                    UserDAO userDAO = new UserDAO();
                    List<User> users = userDAO.getAllUsers();
                    req.setAttribute("getAllProducts", users);
                    page = "managerUsers.jsp";
                    break;
                case "bill":
                    page = "managerBills.jsp";
                    break;
                case "voucher":
                    page = "managerVouchers.jsp";
                    break;
                default:
                    System.out.println("sai cau lenh");
            }
            req.getRequestDispatcher(page).forward(req, resp);
        } else {
            resp.sendRedirect("index.jsp");
        }


    }
}
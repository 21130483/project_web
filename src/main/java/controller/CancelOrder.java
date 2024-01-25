package controller;

import dao.OrderDAO;
import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/html/cancel")
public class CancelOrder extends HttpServlet {
    OrderDAO orderDAO = new OrderDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDAO userDAO = new UserDAO();
        String userId = req.getParameter("userId");
        User user = userDAO.getUserById(Integer.parseInt(userId));
        String orderId = req.getParameter("orderId");
        boolean result = orderDAO.cancel(Integer.parseInt(orderId));
        req.getRequestDispatcher("account.jsp").forward(req, resp);
    }
}

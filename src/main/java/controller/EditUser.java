package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/html/edituser")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("id",id);
        req.getRequestDispatcher("EditUser.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Boolean access = Boolean.valueOf(req.getParameter("access"));
        Boolean role = Boolean.valueOf(req.getParameter("role"));
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserById(id);
        if (user.getRole()!=role){
            System.out.println(role);
            userDAO.updateUser(id,"role", String.valueOf(role));

        }
        if (user.getAccess()!=access){
            userDAO.updateUser(id,"access", String.valueOf(access));
        }
        req.getRequestDispatcher("admin?page=user").forward(req,resp);


    }
}

package controller.filter;

import dao.ProductDAO;
import model.Product;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import java.io.IOException;
import java.util.List;

@WebFilter("/html/*")
public class indexFilter extends HttpFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        getShowBestSelling(req,res);
        chain.doFilter(req, res);
    }

    private void getShowBestSelling(ServletRequest req, ServletResponse res) {
        ProductDAO dao = new ProductDAO();
        List<Product> products = dao.getBestSelling(5);
        req.setAttribute("getBestSelling", products);

    }

//    private
}

package dao;

import database.JDBIConnector;
import model.OrderItem;
import model.Order;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class OrderDAO {
    public static final Jdbi connect = JDBIConnector.getConnect();
    public List<Order> getAllOrderById(int userId) {
        List<Order> invoices = connect.withHandle(handle -> {
            return handle.createQuery("select * from orders where userID = ?")
                    .bind(0, userId)
                    .mapToBean(Order.class)
                    .list();
        });
        return invoices;
    }
    public List<OrderItem> getAllOrderItemById(int userId) {
        String sql = "SELECT o.userID, o.id as orderId ,p.productID, p.name, p.price, o.shippingFee, o.state , " +
                "o.createdAt, od.quantity from order_details od JOIN orders o ON od.orderId = o.id " +
                "JOIN products p ON od.productId = p.productID WHERE userID = ?";
        return connect.withHandle(handle -> {
            return handle.createQuery(sql)
                    .bind(0, userId)
                    .mapToBean(OrderItem.class)
                    .list();
        });
    }

    public boolean cancel(int orderId) {
        String sql = "UPDATE orders SET state = 'Đã hủy' WHERE id = ?";
        int result = connect.inTransaction(handle ->
                handle.createUpdate(sql)
                        .bind(0, orderId).execute());
        return result > 0;
    }
}
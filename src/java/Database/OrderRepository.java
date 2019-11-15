/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import Models.Order;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

/**
 *
 * @author setero
 */
public class OrderRepository implements Irepository<Order> {

    Configuration configuration = new Configuration();

    @Override
    public Order getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public void Add(Order item) {
        try (Connection conn = DriverManager.getConnection(configuration.getUrl(), configuration.getUsername(), configuration.getPassword())) {

            UUID id = UUID.randomUUID();

            StringBuilder query = new StringBuilder();
            query.append("insert into public.order (id, customername, customeraddress, customerphone) values (?,?,?,?);");

            int nrOfItems = item.getBasket().getItems().size();

            
            PreparedStatement ps = conn.prepareStatement(query.toString());
            ps.setString(1, id.toString());
            ps.setString(2, item.getCustomerName());
            ps.setString(3, item.getCustomerAddress());
            ps.setString(4, item.getPhonenumber());
            
            ps.executeUpdate();
            
            query = new StringBuilder();
            
            query.append("insert into public.orderitems (orderid, itemid) values ");

            for (int i = 0;; i++) {
                if (i == nrOfItems - 1) {
                    query.append("(?,?)");
                    break;
                }
                query.append("(?,?), ");
            }
            
            ps = conn.prepareStatement(query.toString());
            
            int increment = 0;
            for (int i=0; i < nrOfItems; i++){
                ps.setString(increment+1, id.toString());
                ps.setInt(increment+2, item.getBasket().getItems().get(i).getId());
                increment+=2;
            }
                        
            ps.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public List<Order> getAll() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void deleteById(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}

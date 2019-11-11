/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.util.List;
import Models.Item;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author setero
 */
public class ItemRepository implements Irepository<Item> {

    private Configuration configuration = new Configuration();

    public ItemRepository() {
    
    }
    
    @Override
    public Item getById(int id) {

        try (Connection conn = DriverManager.getConnection(configuration.getUrl(), configuration.getUsername(), configuration.getPassword())) {

            Item item = new Item();

            String query = "select * from items where id =?";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                item.setId(rs.getInt(1));
                item.setItemName(rs.getString(2));
                item.setItemPrice(rs.getDouble(3));
            }

            return item;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public void Add(Item item) {
        try (Connection conn = DriverManager.getConnection(configuration.getUrl(), configuration.getUsername(), configuration.getPassword())) {

            String query = "insert into items (id, itemname, itemprice) values(?,?,?)";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, item.getId());
            ps.setString(2, item.getItemName());
            ps.setDouble(3, item.getItemPrice());
            ps.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public List getAll() {

        try (Connection conn = DriverManager.getConnection(configuration.getUrl(), configuration.getUsername(), configuration.getPassword())) {

            List<Item> items = new ArrayList<>();

            String query = "select * from items";

            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Item item = new Item();
                item.setId(rs.getInt(1));
                item.setItemName(rs.getString(2));
                item.setItemPrice(rs.getDouble(3));
                items.add(item);
            }

            return items;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public void deleteById(int id) {

        try (Connection conn = DriverManager.getConnection(configuration.getUrl(), configuration.getUsername(), configuration.getPassword())) {

            String query = "delete from items where id =?";

            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}

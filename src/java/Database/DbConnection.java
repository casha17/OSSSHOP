/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 *
 * @author setero
 */
public class DbConnection {
    
    
    private Configuration configuration;

    public DbConnection() {
        configuration = new Configuration();
        try {
            Class.forName("org.postgresql.Driver");
        } catch (java.lang.ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) {
        
    }
    /*
    public String getConnection(){
        
    }
    
    public double getInterest(int bankId, int years) {

        String queryString = "select interestrate from interestrate where "
                + "bankid ='"+bankId+"' and "
                + "\"lowerYear\" <= '"+years+"' and "
                + "upperYear >= '"+years+"'";

        try (Connection conn = DriverManager.getConnection(configuration.getServerUrl(), configuration.getUsername(), configuration.getPassword())) {
            
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(queryString);
            
            double interest = 1;
            
            while (rs.next()){
                interest = rs.getDouble(1);
            }
            
            
            
            

            return interest;
        } catch (SQLException e) {
            e.printStackTrace();
            return 1;
        }
    }

    @Override
    public Bank getBankByName(String bankName) {
        String queryString = "select * from banks where bankname ='"+bankName+"'";

        try (Connection conn = DriverManager.getConnection(configuration.getServerUrl(), configuration.getUsername(), configuration.getPassword());
                PreparedStatement query = conn.prepareStatement(queryString)) {
            //query.setString(1, bankName);

            ResultSet rs = query.executeQuery();

            Bank bank = new Bank();

            while (rs.next()) {
                bank.setBankId(rs.getInt(1));
                bank.setBankName(rs.getString(2));
            }

            return bank;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
*/
    
}

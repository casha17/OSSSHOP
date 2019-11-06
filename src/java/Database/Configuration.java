/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Database;

/**
 *
 * @author setero
 */
public class Configuration {
    
    private String url = "jdbc:postgresql://john.db.elephantsql.com:5432/kbfrdlsi";
    private String username = "kbfrdlsi";
    private String password = "m4yjPnOoY10Lls0qVyVulWdjZG6HeUy5";

    public Configuration() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (java.lang.ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
    }
    
    

    public String getUrl() {
        return url;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
    
        
}

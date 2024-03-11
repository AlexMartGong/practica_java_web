package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class BD {
    
    private final String server = "jdbc:mysql://127.0.0.1:3306/calidad?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false";
    private final String user = "root";
    private final String pass = "root";
    public Connection conn;
    
    public BD () {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(server, user, pass);
            System.out.println("Connection");
        } catch (Exception e) {
            System.err.println("Error connection: " + e.getMessage());
        }
    }
    
}
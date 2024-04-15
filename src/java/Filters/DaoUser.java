package Filters;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelo.BD;

public class DaoUser extends BD{
    public boolean insertUser(DtoUser dto){
        boolean result;
        String sql = "INSERT INTO users VALUES(0,?,?,?,?,?)";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setString(1, dto.getName());
            pst.setString(2, dto.getEmail());
            pst.setString(3, dto.getLastName());
            pst.setInt(4, dto.getRol());
            pst.setBoolean(5, dto.isEstatus());
            
            pst.executeUpdate();
            
            result = true;
        } catch (SQLException e) {
            System.out.println("Error insert user: " + e.getMessage());
            result = false;
        }
        return result;
    }
}

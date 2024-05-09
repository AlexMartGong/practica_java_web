package Filters;

//import jakarta.resource.cci.ResultSet;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.BD;

public class DaoUser extends BD {

    public boolean insertUser(DtoUser dto) {
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

    public List<DtoUser> getAllUser() {
        List<DtoUser> listUser = new ArrayList<>();

        try {
            String sql = "SELECT * FROM users";
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            //rs.first();
            while (rs.next()) {
                DtoUser user = new DtoUser();
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setLastName(rs.getString(4));
                user.setRol(rs.getInt(5));
                user.setEstatus(rs.getBoolean(6));

                listUser.add(user);
            }

            rs.close();

        } catch (SQLException e) {
            System.out.println("Error list: " + e);
        }

        return listUser;
    }

    public List<DtoUser> getAllUserStament() {
        List<DtoUser> listUser = new ArrayList<>();

        try {
            String sql = "SELECT * FROM users";
            Statement pst = conn.createStatement();
            ResultSet rs = pst.executeQuery(sql);
            //rs.first();
            while (rs.next()) {
                DtoUser user = new DtoUser();
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setLastName(rs.getString(4));
                user.setRol(rs.getInt(5));
                user.setEstatus(rs.getBoolean(6));

                listUser.add(user);
            }

            rs.close();

        } catch (SQLException e) {
            System.out.println("Error list: " + e);
        }

        return listUser;
    }

    public DtoUser getUser(String id) {
        DtoUser user = new DtoUser();

        try {
            String sql = "SELECT * FROM users WHERE id=" + id;
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                user.setId(rs.getInt(1));
                user.setName(rs.getString(2));
                user.setEmail(rs.getString(3));
                user.setLastName(rs.getString(4));
                user.setRol(rs.getInt(5));
                user.setEstatus(rs.getBoolean(6));
            }
        } catch (SQLException e) {
            System.out.println("Error getUser: " + e.getMessage());
        }

        return user;
    }

    public boolean updateUser(DtoUser dto) {
        boolean result;
        String sql = "UPDATE users SET name=?, mail=?, last_name=?, rol=?, estatus=? WHERE id=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, dto.getName());
            pst.setString(2, dto.getEmail());
            pst.setString(3, dto.getLastName());
            pst.setInt(4, dto.getRol());
            pst.setBoolean(5, dto.isEstatus());
            pst.setInt(6, dto.getId());

            pst.executeUpdate();

            result = true;
        } catch (SQLException e) {
            System.out.println("Error insert user: " + e.getMessage());
            result = false;
        }
        return result;
    }
    
        public boolean deleteUser(int id, boolean estatus) {
        boolean result;
        String sql = "UPDATE users SET estatus=? WHERE id=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setBoolean(1, estatus);
            pst.setInt(2, id);

            pst.execute();

            result = true;
        } catch (SQLException e) {
            System.out.println("Error insert user: " + e.getMessage());
            result = false;
        }
        return result;
    }

}

package model;

import dbutil.Dbconn;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * 业务处理类：完成用户增删改查
 */
public class Model {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    // 1. 添加用户
    public boolean addUser(User user) {
        boolean flag = false;
        String sql = "INSERT INTO users(username,password,age,email) VALUES(?,?,?,?)";
        try {
            conn = Dbconn.getConn();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setInt(3, user.getAge());
            pstmt.setString(4, user.getEmail());

            if (pstmt.executeUpdate() > 0) flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally { Dbconn.close(conn); }
        return flag;
    }

    // 2. 根据ID查询用户
    public User findUserById(int id) {
        User user = null;
        String sql = "SELECT * FROM users WHERE id=?";
        try {
            conn = Dbconn.getConn();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setAge(rs.getInt("age"));
                user.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally { Dbconn.close(conn); }
        return user;
    }

    // 3. 查询所有用户
    public List<User> findAllUser() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM users";
        try {
            conn = Dbconn.getConn();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setAge(rs.getInt("age"));
                user.setEmail(rs.getString("email"));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally { Dbconn.close(conn); }
        return list;
    }

    // 4. 更新用户
    public boolean updateUser(User user) {
        boolean flag = false;
        String sql = "UPDATE users SET username=?,password=?,age=?,email=? WHERE id=?";
        try {
            conn = Dbconn.getConn();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setInt(3, user.getAge());
            pstmt.setString(4, user.getEmail());
            pstmt.setInt(5, user.getId());

            if (pstmt.executeUpdate() > 0) flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally { Dbconn.close(conn); }
        return flag;
    }
 // 检查用户名是否已存在
    public boolean isUsernameExist(String username) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            // 用你项目里的 Dbconn 工具类获取连接
            conn = Dbconn.getConn();
            // 补全SQL语句，WHERE后面加条件
            String sql = "SELECT * FROM users WHERE username = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();
            return rs.next(); // 查到返回true（已存在）
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            // 用 Dbconn 关闭资源
            try { if(rs != null) rs.close(); } catch (Exception e) { e.printStackTrace(); }
            try { if(pstmt != null) pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
            try { if(conn != null) conn.close(); } catch (Exception e) { e.printStackTrace(); }
        }
    }
    // 5. 删除用户
    public boolean deleteUser(int id) {
        boolean flag = false;
        String sql = "DELETE FROM users WHERE id=?";
        try {
            conn = Dbconn.getConn();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);

            if (pstmt.executeUpdate() > 0) flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally { Dbconn.close(conn); }
        return flag;
    }
}
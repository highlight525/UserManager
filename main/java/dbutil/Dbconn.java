package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 数据库连接工具类
 */
public class Dbconn {
    // MySQL 5.x 连接信息
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/userdb?useUnicode=true&characterEncoding=utf-8";
    private static final String USER = "root"; // 你的MySQL用户名
    private static final String PWD = "123456"; // 你的MySQL密码

    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // 获取连接
    public static Connection getConn() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USER, PWD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    // 关闭连接
    public static void close(Connection conn) {
        try {
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
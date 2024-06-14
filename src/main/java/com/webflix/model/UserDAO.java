package com.webflix.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.webflix.comm.JdbcConnectUtil;


public class UserDAO {
	private static UserDAO instance;
    private Connection con;

    private UserDAO() {
        // JDBC 연결 설정 초기화
        this.con = JdbcConnectUtil.getConnection();
    }

    public static UserDAO getInstance() {
        if (instance == null) {
            synchronized (UserDAO.class) {
                if (instance == null) {
                    instance = new UserDAO();
                }
            }
        }
        return instance;
    }

    
    public boolean addUser(UserDTO user) throws SQLException {
        String query = "INSERT INTO user (name, birthDate, gender, nickname, userId, password, phoneNumber, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getBirthDate());
            pstmt.setString(3, user.getGender());
            pstmt.setString(4, user.getNickname());
            pstmt.setString(5, user.getUserId());
            pstmt.setString(6, user.getPassword());
            pstmt.setString(7, user.getPhoneNumber());
            pstmt.setString(8, user.getEmail());
            int result = pstmt.executeUpdate();
            return result > 0;
        }
    }

    // 사용자 ID로 조회 메서드
    public UserDTO findUserById(String userId) throws SQLException {
        String query = "SELECT * FROM user WHERE userId = ?";
        try (PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, userId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    UserDTO user = new UserDTO();
                    user.setName(rs.getString("name"));
                    user.setBirthDate(rs.getString("birthDate"));
                    user.setGender(rs.getString("gender"));
                    user.setNickname(rs.getString("nickname"));
                    user.setUserId(rs.getString("userId"));
                    user.setPassword(rs.getString("password"));
                    user.setPhoneNumber(rs.getString("phoneNumber"));
                    user.setEmail(rs.getString("email"));
                    return user;
                }
            }
        }
        return null;
    }

    // 사용자 ID로 삭제 메서드
    public boolean deleteUser(String userId) throws SQLException {
        String query = "DELETE FROM user WHERE userId = ?";
        try (PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, userId);
            int result = pstmt.executeUpdate();
            return result > 0;
        }
    }
    
    public boolean authenticateUser(String userId, String password) throws SQLException {
        String query = "SELECT password FROM user WHERE userId = ?";
        try (PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, userId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    String dbPassword = rs.getString("password");
                    return dbPassword.equals(password);
                }
            }
        }
        return false;  
    }

    

}
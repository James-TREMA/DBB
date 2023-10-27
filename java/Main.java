import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Main {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/fruits_legumes";
        String user = "username";
        String password = "password";

        try {
            Connection conn = DriverManager.getConnection(url, user, password);

            String query = "INSERT INTO fruits (nom, couleur) VALUES (?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, "Pomme");
            pstmt.setString(2, "Rouge");

            int rowsAffected = pstmt.executeUpdate();
            System.out.println(rowsAffected + " row(s) inserted.");

            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

// EXO réussir sur Linux, se connecter en JAVA sur sa base de donnée.
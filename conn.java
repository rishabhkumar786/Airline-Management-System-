package airline.management.system;

import java.sql.*;  

public class conn{
    Connection c;
    Statement s;
    public conn(){  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            c = DriverManager.getConnection("jdbc:mysql://localhost/airline_management","root","12345");    
            s = c.createStatement(); 
           
          
            
        }catch(ClassNotFoundException | SQLException e){ 
            System.out.println(e);
        }  
    }  
}  //airline_management
package guvi.org;

import java.sql.*;

public class Main {
    public static void main(String[] args) {

        String db_url = "jdbc:mysql://localhost:3306";
        String user = "root";
        String password = "root";
        try {
            Connection connect = DriverManager.getConnection(db_url, user, password);
            if(connect != null){
                System.out.println("Connection is Established");
            }else{
                System.out.println("Issue in Connecting");
                return;
            }

            String database = "CREATE DATABASE EmployeeDetails ;";
            String use = "USE EmployeeDetails";
            String table = "CREATE TABLE EmployeeTable(empcode int , empname varchar(15), empage int, esalary int);";
            String insert =  "INSERT into EmployeeTable(empcode, empname, empage, esalary) VALUES"
                    +"(101,'Jenny',25,10000),"+"(102,'Jacky',30,20000),"
                    +" (103,'Joe',20,40000),"+"(104,'John',40,80000),"
                    +"(105,'Shameer',25,90000);";
            String select = "SELECT * from EmployeeTable;";

            Statement stmnt = connect.createStatement();

            String dropDatabase = "DROP DATABASE IF EXISTS EmployeeDetails;";
            stmnt.executeUpdate(dropDatabase);
            stmnt.executeUpdate(database);

            stmnt.execute(use);
            stmnt.executeUpdate(table);
            stmnt.executeUpdate(insert);
            ResultSet result = stmnt.executeQuery(select);
            while(result.next()){
                System.out.println(result.getInt("empcode")+" "
                        + result.getString("empname")+" "
                        + result.getInt("empage")+" "
                        +result.getInt("esalary"));
            }

        } catch (SQLException e) {
            System.out.println("Connection Failed");
            e.printStackTrace();
        }
    }
}
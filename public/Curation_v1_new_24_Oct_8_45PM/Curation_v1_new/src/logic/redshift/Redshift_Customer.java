package logic.redshift;

import vo.redshift.Customer;
import vo.redshift.Request;

import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

public class Redshift_Customer {

	public void printTables(Request redshiftRequest, String query) throws Exception{

		Connection conn = null;
		Statement stmt = null;
		try {

			// Dynamically load driver at runtime.
			// Redshift JDBC 4.1 driver: com.amazon.redshift.jdbc41.Driver
			// Redshift JDBC 4 driver: com.amazon.redshift.jdbc4.Driver
			Class.forName("com.amazon.redshift.jdbc41.Driver");

			// Open a connection and define properties.
			System.out.println("Connecting to database...");
			Properties props = new Properties();

			// Uncomment the following line if using a keystore.
			// props.setProperty("ssl", "true");
			props.setProperty("user", redshiftRequest.getMasterUsername());
			props.setProperty("password", redshiftRequest.getMasterUserPassword());
			conn = DriverManager.getConnection(redshiftRequest.getDbURL(), props);

			// Try a simple query.
			System.out.println("Listing Customer table...");
			stmt = conn.createStatement();
			String sql = query;

			// sql = "select * from information_schema.tables;";
			ResultSet rs = stmt.executeQuery(sql);

			// Get the data from the result set.
			
			int i=0;
			while (rs.next()) {
				
				if(i==0){
					
					System.err.print("mallcloudid \t");
					System.err.print("clientid \t");
					System.err.print("activeemail \t");
					System.err.print("firstname \t");
					System.err.print("lastname \t");
					System.err.print("addressline1 \t");
					System.err.print("city \t");
					System.err.print("state \t");
					System.err.print("zipcode \t");
					System.err.print("storeid_original \t");
					System.err.print("gender \t");
					System.err.print("region \t");
					System.err.print("storename \t");
					System.err.print("storeid_mostrecent \t");
					System.err.print("lastorderdate \t");
					System.err.print("ltdcontributionmargin \t");
					System.err.print("lastorderamount \t");
					System.out.println();
					
					i++;
				}
				
				System.out.print(rs.getString("mallcloudid"));
				System.out.print(rs.getString("clientid"));
				System.out.print(rs.getString("activeemail"));
				System.out.print(rs.getString("firstname"));
				System.out.print(rs.getString("lastname"));
				System.out.print(rs.getString("addressline1"));
				System.out.print(rs.getString("city"));
				System.out.print(rs.getString("state"));
				System.out.print(rs.getString("zipcode"));
				System.out.print(rs.getString("storeid_original"));
				System.out.print(rs.getString("gender"));
				System.out.print(rs.getString("region"));
				System.out.print(rs.getString("storename"));
				System.out.print(rs.getString("storeid_mostrecent"));
				System.out.print(rs.getString("lastorderdate"));
				System.out.print(rs.getString("ltdcontributionmargin"));
				System.out.print(rs.getString("lastorderamount"));
				
				
				System.out.println();
			}

			rs.close();
			stmt.close();

			conn.close();

		} 
		catch (Exception exception) {
			throw exception;
		}
		finally {
			// Finally block to close resources.
			try {
				if (conn != null)
					conn.close();
			} catch (Exception ex) {
				throw ex;
			}
		}

	}
	
	public ArrayList<Customer> getTables(Request redshiftRequest, String query) throws Exception{

		Connection conn = null;
		Statement stmt = null;
		try {

			// Dynamically load driver at runtime.
			// Redshift JDBC 4.1 driver: com.amazon.redshift.jdbc41.Driver
			// Redshift JDBC 4 driver: com.amazon.redshift.jdbc4.Driver
			Class.forName("com.amazon.redshift.jdbc41.Driver");

			// Open a connection and define properties.
			System.out.println("Connecting to database...");
			Properties props = new Properties();

			// Uncomment the following line if using a keystore.
			// props.setProperty("ssl", "true");
			props.setProperty("user", redshiftRequest.getMasterUsername());
			props.setProperty("password", redshiftRequest.getMasterUserPassword());
			conn = DriverManager.getConnection(redshiftRequest.getDbURL(), props);

			// Try a simple query.
			System.out.println("Listing Customer table...");
			stmt = conn.createStatement();
			String sql = query;

			// sql = "select * from information_schema.tables;";
			ResultSet rs = stmt.executeQuery(sql);

			// Get the data from the result set.
			ArrayList<Customer> customerVOs = new ArrayList<Customer>();
			Customer customerVO;
			
			while (rs.next()) {
				
				customerVO = new Customer();
				
				customerVO.setMallcloudid(rs.getString("mallcloudid"));	
				customerVO.setClientid(rs.getString("clientid"));
				customerVO.setActiveemail(rs.getString("activeemail"));
				customerVO.setFirstname(rs.getString("firstname"));
				customerVO.setLastname(rs.getString("lastname"));
				customerVO.setAddressline1(rs.getString("addressline1"));
				customerVO.setCity(rs.getString("city"));
				customerVO.setState(rs.getString("state"));
				customerVO.setZipcode(rs.getString("zipcode"));
				customerVO.setStoreid_original(rs.getString("storeid_original"));
				customerVO.setGender(rs.getString("gender"));
				customerVO.setRegion(rs.getString("region"));
				customerVO.setStorename(rs.getString("storename"));
				customerVO.setStoreid_mostrecent(rs.getString("storeid_mostrecent"));
				customerVO.setLastorderdate(rs.getString("lastorderdate"));
				customerVO.setLtdcontributionmargin(rs.getString("ltdcontributionmargin"));
				customerVO.setLastorderamount(rs.getString("lastorderamount"));
				
				customerVOs.add(customerVO);
			}

			rs.close();
			stmt.close();

			conn.close();
			
			return customerVOs;
		} 
		catch (Exception exception) {
			throw exception;
		}
		finally {
			// Finally block to close resources.
			try {
				if (conn != null)
					conn.close();
			} catch (Exception ex) {
				throw ex;
			}
		}

	}


}

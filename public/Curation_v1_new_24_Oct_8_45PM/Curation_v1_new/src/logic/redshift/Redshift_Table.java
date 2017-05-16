package logic.redshift;

import vo.redshift.Request;

import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

public class Redshift_Table {

	public ArrayList<String> getTables(Request redshiftRequest, String query, String dilimiter, ArrayList<String> db_columns) throws Exception{

		Connection conn = null;
		Statement stmt = null;
		try {

			// Dynamically load driver at runtime.
			Class.forName(redshiftRequest.getDriverName());

			// Open a connection and define properties.
			System.out.println("Connecting to database...");
			Properties props = new Properties();

			// Uncomment the following line if using a keystore.
			// props.setProperty("ssl", "true");
			props.setProperty("user", redshiftRequest.getMasterUsername());
			props.setProperty("password", redshiftRequest.getMasterUserPassword());
			conn = DriverManager.getConnection(redshiftRequest.getDbURL(), props);

			// Try a simple query.
			System.out.println("Listing table...");
			stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery(query);

			// Get the data from the result set.
			
			ArrayList<String> datas = new ArrayList<String>();
			int i=0;
			String data;
			
			while (rs.next()) {
				
				if(i==0){
					
					data =  new String();
					int jj = 0;
					
					for (String column : db_columns) {
						
						if(jj==0){
							data = column;
							jj++;
						}
						else
							data = data +dilimiter +column;
						
					}
					datas.add(data);
					
					i++;
				}
				
				
				data =  new String();
				int j = 0;

				for (String column : db_columns) {
					System.out.println("Redshift_table ---> column ---> " + column);
					
					if(j==0){
						data = rs.getString(column);
						j++;
					}
					else
						data = data +dilimiter +rs.getString(column);
				}
				
				datas.add(data);
				
			}

			rs.close();
			stmt.close();

			conn.close();
			
			return datas;

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

package logic.redshift;

import vo.redshift.Request;
import vo.redshift.Table;
import vo.redshift.TableField;

import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

public class Redshift {
	
	public Table getTableStructure(Request redshiftRequest, String query) throws Exception{

		Connection conn = null;
		Statement stmt = null;
		try {

			// Dynamically load driver at runtime.
			// Redshift JDBC 4.1 driver: com.amazon.redshift.jdbc41.Driver
			// Redshift JDBC 4 driver: com.amazon.redshift.jdbc4.Driver
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
			System.out.println("Listing system tableSchema...\n");
			stmt = conn.createStatement();
			String sql = query;

			ResultSet rs = stmt.executeQuery(sql);

			// Get the data from the result set.
			Table table = new Table();
			ArrayList<TableField> tableFields = new ArrayList<TableField>();
			
			int i=0;
			while (rs.next()) {
				// Retrieve two columns.
				
				if(i==0){
					
					table.setSchemaname(rs.getString("schemaname"));
					table.setTablename(rs.getString("tablename"));
					
					i++;
				}
				
				TableField tableField = new TableField();
				
				tableField.setColumn(rs.getString("column"));
				tableField.setType(rs.getString("type"));
				tableField.setEncoding(rs.getString("encoding"));
				tableField.setDistkey(rs.getString("distkey"));
				tableField.setSortkey(rs.getString("sortkey"));
				tableField.setNotnull(rs.getString("notnull"));
				
				tableFields.add(tableField);
			}
			
			table.setTableFields(tableFields);

			rs.close();
			stmt.close();

			conn.close();
			
			return table;
		} 
		catch (Exception exception) {
			throw exception;
		}
		finally {
			// Finally block to close resources.
			try {
				if (conn != null)
					conn.close();
			} 
			catch (Exception ex) {
				throw ex;
			}
		}
	}
	



}

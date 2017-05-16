package logic.redshift;

import vo.redshift.Request;
import vo.redshift.Transaction;

import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

public class Redshift_Transaction {

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
			System.out.println("Listing Transaction table...");
			stmt = conn.createStatement();
			String sql = query;

			// sql = "select * from information_schema.tables;";
			ResultSet rs = stmt.executeQuery(sql);

			// Get the data from the result set.
			
			int i=0;
			while (rs.next()) {
				
				if(i==0){
					
					System.err.print("transactionid \t");
					System.err.print("mallcloudid \t");
					System.err.print("sku_id \t");
					System.err.print("lineitemnumber \t");
					System.err.print("size \t");
					System.err.print("color \t");
					System.err.print("quantitypurchased \t");
					System.err.print("discountamount_dollars \t");
					System.err.print("itempurchaseprice \t");
					System.err.print("promotionid \t");
					System.err.print("promotionsourcecode \t");
					System.err.print("promotionalchannel \t");
					System.err.print("campaignid \t");
					System.err.print("productdescription \t");
					System.err.print("productgroup \t");
					System.err.print("productsubgroup \t");
					System.err.print("purchasechannel \t");
					System.err.print("purchasedate \t");
					System.err.print("vendor_distributor \t");
					System.err.print("brand \t");
					System.err.print("original_purchasedate \t");
					System.err.print("adjustmentamount_dollars \t");
					System.err.print("storename \t");
					System.err.print("purchasetotal \t");
					System.out.println();
					
					i++;
				}
				
				System.out.print(rs.getString("transactionid"));
				System.out.print(rs.getString("mallcloudid"));
				System.out.print(rs.getString("sku_id"));
				System.out.print(rs.getString("lineitemnumber"));
				System.out.print(rs.getString("size"));
				System.out.print(rs.getString("color"));
				System.out.print(rs.getString("quantitypurchased"));
				System.out.print(rs.getString("discountamount_dollars"));
				System.out.print(rs.getString("itempurchaseprice"));			
				System.out.print(rs.getString("promotionid"));
				System.out.print(rs.getString("promotionsourcecode"));
				System.out.print(rs.getString("promotionalchannel"));
				System.out.print(rs.getString("campaignid"));
				System.out.print(rs.getString("productdescription"));
				System.out.print(rs.getString("productgroup"));
				System.out.print(rs.getString("productsubgroup"));
				System.out.print(rs.getString("purchasechannel"));
				System.out.print(rs.getString("purchasedate"));
				System.out.print(rs.getString("vendor_distributor"));
				System.out.print(rs.getString("brand"));
				System.out.print(rs.getString("original_purchasedate"));
				System.out.print(rs.getString("adjustmentamount_dollars"));
				System.out.print(rs.getString("storename"));
				System.out.print(rs.getString("purchasetotal"));
				
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
	
	
	public ArrayList<Transaction> getTables(Request redshiftRequest, String query) throws Exception{

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
			System.out.println("Listing Transaction table...");
			stmt = conn.createStatement();
			String sql = query;

			// sql = "select * from information_schema.tables;";
			ResultSet rs = stmt.executeQuery(sql);

			// Get the data from the result set.
			ArrayList<Transaction> transactionVOs = new ArrayList<Transaction>();
			Transaction transactionVO;
			
			while (rs.next()) {
				
				transactionVO = new Transaction();
				
				transactionVO.setTransactionid(rs.getString("transactionid"));
				transactionVO.setMallcloudid(rs.getString("mallcloudid"));
				transactionVO.setSku_id(rs.getString("sku_id"));
				transactionVO.setLineitemnumber(rs.getString("lineitemnumber"));
				transactionVO.setSize(rs.getString("size"));
				transactionVO.setColor(rs.getString("color"));
				transactionVO.setQuantitypurchased(rs.getString("quantitypurchased"));
				transactionVO.setDiscountamount_dollars(rs.getString("discountamount_dollars"));
				transactionVO.setItempurchaseprice(rs.getString("itempurchaseprice"));			
				transactionVO.setPromotionid(rs.getString("promotionid"));
				transactionVO.setPromotionsourcecode(rs.getString("promotionsourcecode"));
				transactionVO.setPromotionalchannel(rs.getString("promotionalchannel"));
				transactionVO.setCampaignid(rs.getString("campaignid"));
				transactionVO.setProductdescription(rs.getString("productdescription"));
				transactionVO.setProductgroup(rs.getString("productgroup"));
				transactionVO.setProductsubgroup(rs.getString("productsubgroup"));
				transactionVO.setPurchasechannel(rs.getString("purchasechannel"));
				transactionVO.setPurchasedate(rs.getString("purchasedate"));
				transactionVO.setVendor_distributor(rs.getString("vendor_distributor"));
				transactionVO.setBrand(rs.getString("brand"));
				transactionVO.setOriginal_purchasedate(rs.getString("original_purchasedate"));
				transactionVO.setAdjustmentamount_dollars(rs.getString("adjustmentamount_dollars"));
				transactionVO.setStorename(rs.getString("storename"));
				transactionVO.setPurchasetotal(rs.getString("purchasetotal"));
				
				transactionVOs.add(transactionVO);
			}

			rs.close();
			stmt.close();

			conn.close();
			
			return transactionVOs;

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

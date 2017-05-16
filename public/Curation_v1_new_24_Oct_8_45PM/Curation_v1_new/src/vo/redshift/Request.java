package vo.redshift;

public class Request {

	private String dbURL; 
	private String MasterUsername;
	private String MasterUserPassword;
	private String driverName;
	
	
	public String getDbURL() {
		return dbURL;
	}
	public void setDbURL(String dbURL) {
		this.dbURL = dbURL;
	}
	public String getMasterUsername() {
		return MasterUsername;
	}
	public void setMasterUsername(String masterUsername) {
		MasterUsername = masterUsername;
	}
	public String getMasterUserPassword() {
		return MasterUserPassword;
	}
	public void setMasterUserPassword(String masterUserPassword) {
		MasterUserPassword = masterUserPassword;
	}
	public String getDriverName() {
		return driverName;
	}
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}
}
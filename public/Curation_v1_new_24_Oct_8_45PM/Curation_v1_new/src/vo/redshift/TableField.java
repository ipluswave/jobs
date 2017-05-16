package vo.redshift;

public class TableField {

	private String column;
	private String type;
	private String encoding;
	private String distkey;
	private String sortkey;
	private String notnull;
	
	
	public String getColumn() {
		return column;
	}
	public void setColumn(String column) {
		this.column = column;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEncoding() {
		return encoding;
	}
	public void setEncoding(String encoding) {
		this.encoding = encoding;
	}
	public String getDistkey() {
		return distkey;
	}
	public void setDistkey(String distkey) {
		this.distkey = distkey;
	}
	public String getSortkey() {
		return sortkey;
	}
	public void setSortkey(String sortkey) {
		this.sortkey = sortkey;
	}
	public String getNotnull() {
		return notnull;
	}
	public void setNotnull(String notnull) {
		this.notnull = notnull;
	}
	
	
	
}

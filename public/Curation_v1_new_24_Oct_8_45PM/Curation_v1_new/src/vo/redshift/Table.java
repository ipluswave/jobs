package vo.redshift;

import java.util.ArrayList;

public class Table {

	private String schemaname;
	private String tablename;
	
	private ArrayList<TableField> tableFields;

	public String getSchemaname() {
		return schemaname;
	}

	public void setSchemaname(String schemaname) {
		this.schemaname = schemaname;
	}

	public ArrayList<TableField> getTableFields() {
		return tableFields;
	}

	public void setTableFields(ArrayList<TableField> tableFields) {
		this.tableFields = tableFields;
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	
	
}

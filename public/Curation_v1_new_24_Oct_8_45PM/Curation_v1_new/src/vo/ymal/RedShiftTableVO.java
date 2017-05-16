package vo.ymal;

import java.io.File;

public class RedShiftTableVO {
	
	private String tableName;
	private String header;
	private String delimiter;
	private String quoteChar;
	private String quote;
	private String[] csvFields;
	
	private File file;
	
	
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}
	public String getDelimiter() {
		return delimiter;
	}
	public void setDelimiter(String delimiter) {
		this.delimiter = delimiter;
	}
	public String getQuoteChar() {
		return quoteChar;
	}
	public void setQuoteChar(String quoteChar) {
		this.quoteChar = quoteChar;
	}
	public String getQuote() {
		return quote;
	}
	public void setQuote(String quote) {
		this.quote = quote;
	}
	public String[] getCsvFields() {
		return csvFields;
	}
	public void setCsvFields(String[] csvFields) {
		this.csvFields = csvFields;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	
	
	
}

package vo.ymal;

public class NamingConvension {

	private String file_name;
	private String input_file_name;
	private String output_file_name;
	
	public NamingConvension(){
		file_name  = "rData"; // +"_" +new Date();
		input_file_name  = "rData_i";//+"_" +new Date();
		output_file_name  = "rData_o";// +"_"+new Date();
	}

	public String getFile_name() {
		return file_name;
	}

	public String getInput_file_name() {
		return input_file_name;
	}

	public String getOutput_file_name() {
		return output_file_name;
	}	
	
}

package logic.main;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

import vo.ymal.YAMLAlgorithmVO;

public class Step_4_RScript {

	public void runR(YAMLAlgorithmVO yamlAlgorithmVO, File r_script) throws Exception{

		BufferedReader reader = null;
		Process shell = null;
		
		try {
			shell = Runtime.getRuntime().exec(new String[] { "/usr/bin/Rscript", r_script.getAbsolutePath() });

			reader = new BufferedReader(new InputStreamReader(shell.getInputStream()));
			String line;
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
			}

		} 
		catch (IOException e) {
			throw e;
		}

	}
	
	public static void main(String[] args){
		
		try{
			
			File r_script = new File("");
			
			Step_4_RScript step_4_RScript  = new Step_4_RScript();
			step_4_RScript.runR(null, r_script);
			
		}
		catch(Exception exception){
			exception.printStackTrace();
		}
	}
}

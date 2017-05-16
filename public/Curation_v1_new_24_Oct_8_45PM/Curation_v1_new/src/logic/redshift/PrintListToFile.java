package logic.redshift;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class PrintListToFile {

	public void printTable(ArrayList<String> lines, File file) throws Exception{
		
		try{
			System.out.println("Printing Table");
			
			if(file != null){
				
				if(file.exists()){
					file.delete();
				}
				
				file.createNewFile();
				
				FileWriter fileWriter = new FileWriter(file);
				
				int i =0;
				
				for (String line : lines) {
					
					if(i==0){
						fileWriter.write(line);
						i++;
					}
					else
						fileWriter.write("\n" +line);
				}
				
				fileWriter.close();
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
}

package logic.dataPreparation;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class PrintListToFile {

	public void print(HashMap<String, ArrayList<String>> map, File file) throws Exception{
		
		try{
			
			System.out.println("\nPrinting");
			
			if(file != null){
				
				if(file.exists()){
					file.delete();
				}
				file.createNewFile();
				
				
				FileWriter fileWriter = new FileWriter(file);
				
				String writeLine = new String();
				int i =0;
				
				for (String key : map.keySet()) {
					
					writeLine = key;
					
					ArrayList<String> arrayList = map.get(key);
					
					for (String float1 : arrayList) {
						writeLine = writeLine +"\t" +float1;
					}
							
					/*if(i==0){
						fileWriter.write((i+1) +"\t" +writeLine);
						i++;
					}	
					else{
						fileWriter.write("\n" +(i+1) +"\t" +writeLine);
						i++;
					}*/
					
					
					if(i==0){
						fileWriter.write(writeLine);
						i++;
					}	
					else{
						fileWriter.write("\n" +writeLine);
						i++;
					}
				}
				
				fileWriter.close();
			
			}
			
			System.out.println("Printing complete.");
			
		}
		catch(Exception exception){
			throw exception;
		}	
	}
	
	
	public void printHashMap(HashMap<String, ArrayList<String>> map, File file) throws Exception{
		
		try{
			
			System.out.println("\nPrinting");
			
			if(file != null){
				if(file.exists()){
					file.delete();
				}
				file.createNewFile();
				
				
				FileWriter fileWriter = new FileWriter(file);
				
				String writeLine = new String();
				int i =0;
				
				for (String key : map.keySet()) {
					
					ArrayList<String> arrayList = map.get(key);
					
					int j = 0;
					for (String data : arrayList) {
						
						if(j==0){
							writeLine = data;
							j++;
						}
						else
							writeLine = writeLine +"\t" +data;
					}
							
					if(i==0){
						fileWriter.write(writeLine);
						i++;
					}	
					else
						fileWriter.write("\n" +writeLine);
				}
				
				fileWriter.close();
			
			}
			
			System.out.println("Printing complete.");
			System.out.println();
		}
		catch(Exception exception){
			throw exception;
		}	
	}
	
}

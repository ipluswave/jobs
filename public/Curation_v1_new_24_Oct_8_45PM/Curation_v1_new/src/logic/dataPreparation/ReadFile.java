package logic.dataPreparation;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.stream.Stream;

public class ReadFile {

	
	public HashMap<String, ArrayList<String>> parseFile(File file, String spliter, int index, int ignore) throws Exception{
		
		HashMap<String, ArrayList<String>> mapMain = new HashMap<String, ArrayList<String>>();
		
		try{
			
			if(file != null && !file.isDirectory() && spliter != null){
				
				
				BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
				
				Stream<String> stream = bufferedReader.lines();
				
				Iterator<String> readedLines = stream.iterator();
				
				
				int count = 1;
				while (readedLines.hasNext()) {
					
					String l = readedLines.next();
					
					if(count != ignore){
						
						String[] splitedDatas = null;
						
						splitedDatas = l.split(spliter);
						
						ArrayList<String> mapInner = new ArrayList<String>();
						
						int i =0;
						String key =  new String();
						
						for (String data : splitedDatas) {
							
							if(i==index){
								key = data;
							}
							//else
							mapInner.add(data);
							
							i++;
						}
						
						mapMain.put(key, mapInner);
					}
					
					count = count+1;
				}
				
				bufferedReader.close();
			}	
			
		}
		catch(Exception exception){
			throw exception;
		}
		
		return mapMain;
	}
	
	public ArrayList<ArrayList<String>> parseFileToList(File file, String spliter, int index, int ignore) throws Exception{
		
		ArrayList<ArrayList<String>> mapMain = new ArrayList<ArrayList<String>>();
		
		try{
			
			if(file != null && !file.isDirectory() && spliter != null){
				
				
				BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
				
				Stream<String> stream = bufferedReader.lines();
				
				Iterator<String> readedLines = stream.iterator();
				
				
				int count = 1;
				while (readedLines.hasNext()) {
					
					String l = readedLines.next();
					
					if(count != ignore){
						
						String[] splitedDatas = null;
						
						splitedDatas = l.split(spliter);
						
						ArrayList<String> mapInner = new ArrayList<String>();
						
						for (String data : splitedDatas) {
							
							if(data.isEmpty() || data == null || data=="")
								data = new String(" ");
								
							mapInner.add(data);
						}
						
						mapMain.add(mapInner);
					}
					
					count = count+1;
				}
				
				bufferedReader.close();
			}	
			
		}
		catch(Exception exception){
			throw exception;
		}
		
		return mapMain;
	}
	
	
	public void printFileMap(HashMap<String, ArrayList<String>> dataMap, int threasold) throws Exception{
		
		try{
			
			int x = 0;
			
			if(threasold <= dataMap.size()  || threasold == -1){
				
				for (String key : dataMap.keySet()) {
					
					System.out.println("Key: "+key);
					System.out.print("Values: ");
					
					for (String data : dataMap.get(key)) {
						System.out.print(data +", ");
					}
					System.out.println();
					
					x++;
					
					if(x==threasold)
						break;
					
				}
				System.out.println();
				
			}
			else{
				System.err.println("Wrong threasold value: "+threasold +" & map size is: "+dataMap.size());
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
	
	public void printFileMapString(HashMap<String, ArrayList<String>> dataMap, int threasold) throws Exception{
		
		try{
			
			int x = 0;
			
			if(threasold <= dataMap.size()  || threasold == -1){
				
				for (String key : dataMap.keySet()) {
					
					System.out.println("Key: "+key);
					System.out.print("Values: ");
					
					for (String data : dataMap.get(key)) {
						System.out.print(data +", ");
					}
					System.out.println();
					
					x++;
					
					if(x==threasold)
						break;
					
				}
				System.out.println();
				
			}
			else{
				System.err.println("Wrong threasold value: "+threasold +" & map size is: "+dataMap.size());
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
	
	
	public void printFileList(ArrayList<ArrayList<String>> dataMap, int threasold) throws Exception{
		
		try{
			
			int x = 0;
			
			if(threasold <= dataMap.size()  || threasold == -1){
				
				for (ArrayList<String> key : dataMap) {
					
					for (String data : key) {
						System.out.print(data +", ");
					}
					System.out.println();
					
					x++;
					
					if(x==threasold)
						break;
					
				}
				System.out.println();
				
			}
			else{
				System.err.println("Wrong threasold value: "+threasold +" & map size is: "+dataMap.size());
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
}

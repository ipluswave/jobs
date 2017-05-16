package logic.ymal;

import java.util.ArrayList;
import java.util.HashMap;

import org.json.simple.JSONObject;


public class ParseYMAL {

	@SuppressWarnings("unchecked")
	public HashMap<String, HashMap<String, String>> parse(JSONObject jsonObject) throws Exception{
		
		HashMap<String, HashMap<String, String>> result_map = new HashMap<String, HashMap<String, String>>();
		
		try{
			
			 for (Object key : jsonObject.keySet()) {
					
				 	
	            	if(jsonObject.get(key) instanceof HashMap<?, ?>){
	            		
	            		HashMap<String, String> inner_map = (HashMap<String, String>) jsonObject.get(key); 
	            		
	            		result_map.put(key.toString(), inner_map);
	                	
	            	}
	            	else if(jsonObject.get(key) instanceof ArrayList<?>){
	            		
	            		ArrayList<HashMap<String, String>> inner_list = (ArrayList<HashMap<String, String>>) jsonObject.get(key);
	            		
	            		HashMap<String, String> result_map1 = new HashMap<String, String>();
	            		
	            		for (HashMap<String, String> inner_map : inner_list) {
	            			
	            			for (String key1 : inner_map.keySet()) {
	            				
	            				String value1 = inner_map.get(key1);
	            				result_map1.put(value1, key1);
							}
						}
	            		
	            		result_map.put(key.toString(), result_map1);
	            	}
				}
			
			
		}
		catch(Exception exception){
			throw exception;
		}
		
		return result_map;
	}
	
	
	
}

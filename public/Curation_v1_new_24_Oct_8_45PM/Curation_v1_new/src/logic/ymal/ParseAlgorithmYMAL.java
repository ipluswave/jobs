package logic.ymal;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;

import org.json.simple.JSONObject;

import vo.ymal.InputParametersVO;
import vo.ymal.Mapping;
import vo.ymal.NamingConvension;
import vo.ymal.OutputParametersVO;
import vo.ymal.RedShiftConfiguration;
import vo.ymal.RedShiftTableVO;
import vo.ymal.YAMLAlgorithmVO;

public class ParseAlgorithmYMAL {

	@SuppressWarnings("unchecked")
	public YAMLAlgorithmVO parse(JSONObject jsonObject) throws Exception{
		
		try{
			YAMLAlgorithmVO algorithmVO = new YAMLAlgorithmVO();
			
			for (Object key : jsonObject.keySet()) {
				
				//System.out.println("Key: "+key);
											
				if(jsonObject.get(key) instanceof HashMap<?, ?>){
            		
            		HashMap<String, Object> inner_map = (HashMap<String, Object>) jsonObject.get(key); 
            		
            		if(key.toString().equals("RedShiftConfiguration")){
            			parseRedShiftConfiguration(inner_map, algorithmVO);
            			//System.out.println(1);
            		}
            		
            		/*else if(key.toString().equals("RedShiftTable")){
            			parseRedShiftTable(inner_map, algorithmVO);
            			//System.out.println(2);
            		}*/
            		
                	
            	}
            	else if(jsonObject.get(key) instanceof ArrayList<?>){
            		
            		ArrayList<HashMap<String, Object>> inner_list = (ArrayList<HashMap<String, Object>>) jsonObject.get(key);
            		
            		if(key.toString().equals("InputParameter")){
            			parseInputParameters(inner_list, algorithmVO);
            			//System.out.println(4);
            		}
            		
            		else if(key.toString().equals("OutputParameter")){
            			parseOutputParameters(inner_list, algorithmVO);
            			//System.out.println(5);
            		}
            		
            		else if(key.toString().equals("Algorithm")){
            			parseAlgorithm(inner_list, algorithmVO);
            			//System.out.println(3);
            		}
            		
            		else if(key.toString().equals("RedShiftTable")){
            			parseRedShiftTable(inner_list, algorithmVO);
            			//System.out.println(2);
            		}
            		
            	}
				
			}
			
			return algorithmVO;
		}
		catch(Exception exception){
			throw exception;
		}
	}
	
	private void parseAlgorithm(ArrayList<HashMap<String, Object>> inner_list, YAMLAlgorithmVO algorithmVO) throws Exception{
		
		try{
			
			if(!inner_list.isEmpty()){
				
				for (HashMap<String, Object> map : inner_list) {
					
					for (String key : map.keySet()) {
						
						String val = map.get(key).toString();
						
						if(val == null)
							val = new String();
						
						if(key.equalsIgnoreCase("Type"))
							algorithmVO.setType(val);
						
						else if(key.equalsIgnoreCase("AlgorithmID"))
							algorithmVO.setAlgorithmID(val);
						
						else if(key.equalsIgnoreCase("Output"))
							algorithmVO.setOutput(val);
						
						else if(key.equalsIgnoreCase("OutputUI"))
							algorithmVO.setOutputUI(val);
					}
					
				}
				
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
	
	
	private void parseRedShiftConfiguration(HashMap<String, Object> inner_map, YAMLAlgorithmVO algorithmVO) throws Exception{
		
		try{
			
			if(!inner_map.isEmpty()){
				
				RedShiftConfiguration redShiftConfiguration = new RedShiftConfiguration();
				
				redShiftConfiguration.setDriver((String)inner_map.get("driver"));
				redShiftConfiguration.setPassword((String)inner_map.get("password"));
				redShiftConfiguration.setUrl((String)inner_map.get("url"));
				redShiftConfiguration.setUser((String)inner_map.get("user"));
				
				algorithmVO.setRedShiftConfiguration(redShiftConfiguration);
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
	
	/*private void parseRedShiftTable(HashMap<String, Object> inner_map, AlgorithmVO algorithmVO){
		
		try{
			
			if(!inner_map.isEmpty()){
				
				RedShiftTableVO redShiftTableVO = new RedShiftTableVO();
				
				
				for (String key : inner_map.keySet()) {
					
					String val;
					
					if(inner_map.get(key) != null && !key.equalsIgnoreCase("header"))
						val = (String) inner_map.get(key);
					else if(inner_map.get(key) != null && key.equalsIgnoreCase("header"))
						val = Boolean.toString((Boolean)inner_map.get(key));
					else
						val = new String();
						
					if(key.equalsIgnoreCase("tableName"))
						redShiftTableVO.setTableName(val);
					else if(key.equalsIgnoreCase("header"))
						redShiftTableVO.setHeader(val);
					else if(key.equalsIgnoreCase("delimiter"))
						redShiftTableVO.setDelimiter(val);
					else if(key.equalsIgnoreCase("quoteChar"))
						redShiftTableVO.setQuoteChar(val);
					else if(key.equalsIgnoreCase("quote"))
						redShiftTableVO.setQuote(val);
					else if(key.equalsIgnoreCase("csvFields"))
						redShiftTableVO.setCsvFields(null);
					
				}
				
				algorithmVO.getRedShiftTableVOs().add(redShiftTableVO);
			}
			
		}
		catch(Exception exception){
			exception.printStackTrace();
		}
		
	}*/
	
	
	private void parseRedShiftTable(ArrayList<HashMap<String, Object>> inner_list, YAMLAlgorithmVO algorithmVO) throws Exception{
		
		try{
			
			if(!inner_list.isEmpty()){
				
				RedShiftTableVO redShiftTableVO;
				
				for (HashMap<String, Object> inner_map : inner_list) {
        			
        			redShiftTableVO = new RedShiftTableVO();
    				
        			for (String key : inner_map.keySet()) {
        				
        				String val;
    					
    					if(inner_map.get(key) != null)
    						val = inner_map.get(key).toString();
    					else
    						val = new String();
        				
        				
    					if(key.equalsIgnoreCase("tableName"))
    						redShiftTableVO.setTableName(val);
    					else if(key.equalsIgnoreCase("header"))
    						redShiftTableVO.setHeader(val);
    					else if(key.equalsIgnoreCase("delimiter"))
    						redShiftTableVO.setDelimiter(val);
    					else if(key.equalsIgnoreCase("quoteChar"))
    						redShiftTableVO.setQuoteChar(val);
    					else if(key.equalsIgnoreCase("quote"))
    						redShiftTableVO.setQuote(val);
    					else if(key.equalsIgnoreCase("csvFields"))
    						redShiftTableVO.setCsvFields(null);
					}
            		
    				//algorithmVO.getRedShiftTableVOs().add(redShiftTableVO);
				}
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
	
	private void parseOutputParameters(ArrayList<HashMap<String, Object>> inner_list, YAMLAlgorithmVO algorithmVO) throws Exception{
		
		try{
			
			if(!inner_list.isEmpty()){
				
				ArrayList<OutputParametersVO> outputParametersVOs = new ArrayList<OutputParametersVO>();
				
				OutputParametersVO outputParametersVO;
				
				for (HashMap<String, Object> inner_map : inner_list) {
        			
        			outputParametersVO = new  OutputParametersVO();
    				
        			for (String key1 : inner_map.keySet()) {
        				
        				String val;
    					
    					if(inner_map.get(key1) != null)
    						val = inner_map.get(key1).toString();
    					else
    						val = new String();
        				
        				
        				if(key1.equalsIgnoreCase("name"))
        					outputParametersVO.setName(val);
        				
        				else if(key1.equalsIgnoreCase("type"))
        					outputParametersVO.setType(val);
					}
        			
        			outputParametersVOs.add(outputParametersVO);
				}
        		
				//algorithmVO.setOutputParametersVOs(outputParametersVOs);
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
	}
	
	@SuppressWarnings("unchecked")
	private void parseInputParameters(ArrayList<HashMap<String, Object>> inner_list, YAMLAlgorithmVO algorithmVO) throws Exception{
		
		try{
			
			if(!inner_list.isEmpty()){
				
				ArrayList<InputParametersVO> inputParametersVOs = new ArrayList<InputParametersVO>();
				
				InputParametersVO inputParametersVO;
				
				for (HashMap<String, ?> inner_map : inner_list) {
        			
        			inputParametersVO = new  InputParametersVO();
    				
        			for (String key1 : inner_map.keySet()) {
        				
        				if(key1.equalsIgnoreCase("mapping")){
        					
        					HashMap<String, String> inner_map1 = (HashMap<String, String>) inner_map.get(key1);
        					
        					Mapping mapping = new Mapping();
        					
        					for (String key2 : inner_map1.keySet()) {
								
        						String val = (String) inner_map1.get(key2);
        						
        						if(key2.equalsIgnoreCase("LocalParameter"))
        							mapping.setLocalParameter(val);
        						
        						else if(key2.equalsIgnoreCase("RedshifttableName"))
        							mapping.setRedshifttableName(val);
        						
        						else if(key2.equalsIgnoreCase("type"))
        							mapping.setType(val);
							}
        					
        					inputParametersVO.setMapping(mapping);
        				}
        				else{
        					
        					String val = inner_map.get(key1).toString();
        					
        					if(key1.equalsIgnoreCase("Generic"))
        						inputParametersVO.setGeneric(val);
        					
        					else if(key1.equalsIgnoreCase("type"))
        						inputParametersVO.setType(val);
        					
        				}
        				
					}
        			
        			inputParametersVOs.add(inputParametersVO);
				}
        		
				//algorithmVO.setInputParametersVOs(inputParametersVOs);
			}
			
		}
		catch(Exception exception){
			throw exception;
		}
	}
	
	public File toFile(YAMLAlgorithmVO algorithmVO, File file_path) throws Exception{
		
		try{
			
			FileWriter fileWriter;
			
			NamingConvension namingConvension = new NamingConvension();
			
			if(file_path.isDirectory()){
				
				File r_data_file = new File(file_path + "//" +namingConvension.getFile_name() +".csv");
				r_data_file.createNewFile();
				
				fileWriter = new FileWriter(r_data_file);
				
				String x  = algorithmVO.getAlgorithmID();
				
				RedShiftTableVO redShiftTableVO = null;
				//for (RedShiftTableVO redShiftTableVO : algorithmVO.getRedShiftTableVOs()) {
					x = x  +"\t" + redShiftTableVO.getTableName();
				//}
				
				x = x + "\t" +namingConvension.getInput_file_name() +"\t" +namingConvension.getOutput_file_name();
				
				fileWriter.write(x);
				fileWriter.close();
				
				File r_data_in_file = new File(file_path +"//" +namingConvension.getInput_file_name() +".csv");
				r_data_in_file.createNewFile();
				
				fileWriter = new FileWriter(r_data_in_file);
				
				//for (InputParametersVO inputParametersVO : algorithmVO.getInputParametersVOs()) {					
					//fileWriter.write( inputParametersVO.getGeneric() +"\t" +inputParametersVO.getType() +"\t" +inputParametersVO.getMapping().getLocalParameter() +"\t" +inputParametersVO.getMapping().getType());
					//fileWriter.write("\n");
				//}
				fileWriter.close();
				
				File r_data_out_file = new File(file_path +"//" +namingConvension.getOutput_file_name() +".csv");
				r_data_out_file.createNewFile();
				
				fileWriter = new FileWriter(r_data_out_file);
				
				/*for (OutputParametersVO outputParametersVO : algorithmVO.getOutputParametersVOs()) {					
					fileWriter.write(outputParametersVO.getName() +"\t" +outputParametersVO.getType());
					fileWriter.write("\n");
				}*/
				fileWriter.close();
				
				return r_data_file;
			}
			else
				throw new Exception("Error: No folder path. "+file_path.getAbsolutePath() +" is file.");
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
	
}

package logic.main;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.ho.yaml.Yaml;
import org.ho.yaml.exception.YamlException;
import org.json.simple.JSONObject;

import logic.ymal.ParseAlgorithmYMAL;
import vo.ymal.YAMLAlgorithmVO;

public class Step_1_YmalParsing {

	@SuppressWarnings("unchecked")
	public YAMLAlgorithmVO RunYAMLProcessing(File algorithm_yml, File output_path) throws Exception {
		try{
			
			List<Map<String,Object>> list = (ArrayList<Map<String,Object>>)Yaml.load(algorithm_yml);
			//Map<String,Object> ymal_map= (Map<String, Object>) Yaml.load(algorithm_yml);
			Map<String,Object> ymal_map= list.get(0);
			JSONObject jsonObject=new JSONObject(ymal_map);
            //System.out.println(jsonObject.toString());

            ParseAlgorithmYMAL parseAlgorithmYMAL = new ParseAlgorithmYMAL();
            YAMLAlgorithmVO algorithmVO = parseAlgorithmYMAL.parse(jsonObject);
            
            File file_path = new File(output_path.getAbsolutePath()+"/yaml");
            file_path.mkdir();
            
            parseAlgorithmYMAL.toFile(algorithmVO, file_path);
            
            return algorithmVO;
            
		}
		catch(YamlException  yamlException){
			throw yamlException;
		}
		catch(FileNotFoundException  fileNotFoundException){
			throw fileNotFoundException;
		}
		catch(Exception exception){
			throw exception;
		}
	}
	

}

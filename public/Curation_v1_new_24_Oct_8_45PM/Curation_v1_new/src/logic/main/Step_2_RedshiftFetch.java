package logic.main;

import java.io.File;
import java.util.ArrayList;
import java.util.Set;

import com.neo4j.model.AlgorithmParameterModel;

import logic.redshift.PrintListToFile;
import logic.redshift.Redshift_Table;
import vo.redshift.Request;
import vo.ymal.RedShiftConfiguration;
import vo.ymal.RedShiftTableVO;
import vo.ymal.YAMLAlgorithmVO;

public class Step_2_RedshiftFetch{

	public RedShiftTableVO runRunRedshiftFetch(YAMLAlgorithmVO algorithmVO, File current_folder_path, RedShiftTableVO shiftTableVO) throws Exception{
		
		try{
			RedShiftConfiguration redShiftConfiguration = algorithmVO.getRedShiftConfiguration();
			String dbURL = redShiftConfiguration.getUrl();
			String user = redShiftConfiguration.getUser();
			String password = redShiftConfiguration.getPassword();
			String driver = redShiftConfiguration.getDriver();
			
			Set<AlgorithmParameterModel> inputParametersVOs = algorithmVO.getInputParametersVOs();
			
			// TODO : get redshift table name here
			String redshift_table_name  = shiftTableVO.getTableName();
			
			Request redshiftRequest = new Request();
			redshiftRequest.setDriverName(driver);
			redshiftRequest.setDbURL(dbURL);
			redshiftRequest.setMasterUsername(user);
			redshiftRequest.setMasterUserPassword(password);
			
			String query_prefix = "select "; 
			String query_post_fix = " from " +redshift_table_name +" limit 1000;";
			
			String query_middle = new String();
			ArrayList<String> db_columns = new ArrayList<String>();
			int i = 0;
			
			for (AlgorithmParameterModel inputParametersVO : inputParametersVOs) {
				if(i==0){
					query_middle = inputParametersVO.getParameterName();
					i++;
				}
				else
					query_middle = query_middle +", " + inputParametersVO.getParameterName();
			
				db_columns.add(inputParametersVO.getParameterName());
				System.out.println(inputParametersVO.getParameterName());
			}
			
			String query = query_prefix + query_middle + query_post_fix;
			
			Redshift_Table redshift_Table = new Redshift_Table();
			ArrayList<String> lines = redshift_Table.getTables(redshiftRequest, query, shiftTableVO.getDelimiter(), db_columns);
			
			File file = new File(current_folder_path+"//"+redshift_table_name+".csv");
            file.createNewFile();
			PrintListToFile printListToFile = new PrintListToFile();
			printListToFile.printTable(lines, file);
			
			shiftTableVO.setFile(file);
			
			return shiftTableVO;
			
		}
		catch(Exception exception){
			throw exception;
		}
		
	}
}

package logic.main;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import logic.dataPreparation.OTP;
import logic.dataPreparation.PrintListToFile;
import logic.dataPreparation.ReadFile;
import vo.r.R;
import vo.ymal.RedShiftTableVO;
import vo.ymal.YAMLAlgorithmVO;

public class Step_3_DataPreparation {

	@SuppressWarnings("unchecked")
	public R dataPrepation(YAMLAlgorithmVO algorithmVO, File clickstreamData, String clickstreamData_dilimiter, File output_folder) throws Exception {
		// TODO Auto-generated method stub
		
		try{
			
			R r = new R(); 
			
			String output_folder_path = output_folder.getAbsolutePath() + "/data_preparation/";
			
			File data_preparation_output_folder = new File(output_folder_path);
			
			if(data_preparation_output_folder.exists())
				data_preparation_output_folder.delete();
				
			data_preparation_output_folder.mkdir();
			
			
			
			output_folder_path = output_folder.getAbsolutePath() + "/r/";
			
			File r_output_folder = new File(output_folder_path);
			
			if(r_output_folder.exists())
				r_output_folder.delete();
				
			r_output_folder.mkdir();
			
			r.setR_directory(r_output_folder);
			
			File customer_file = new File(data_preparation_output_folder.getAbsolutePath() +"/CycleGearCustomer_new_data.csv");
			File transaaction_file = new File(data_preparation_output_folder.getAbsolutePath() +"/CycleGearTransaction_new_data.csv");
			File clickStream_file = new File(data_preparation_output_folder.getAbsolutePath() +"/ClickStream_new_data.csv");
			
			File r_file = new File(r_output_folder.getAbsolutePath() + "/r_input.csv");
			r.setR_input(r_file);
			
			PrintListToFile printListToFile = new PrintListToFile();
			
			String transactionFile = "-r ";
			String customerFile = "-r ";
			
			
			RedShiftTableVO redShiftTableVO = null;
				
			if(redShiftTableVO.getTableName().contains("cyclegeartransaction")){
				transactionFile = transactionFile + redShiftTableVO.getFile().getAbsolutePath() + " 0 " +redShiftTableVO.getDelimiter() +" 1 ";
			}
			
			else if(redShiftTableVO.getTableName().contains("cyclegearcustomers")){
				customerFile = transactionFile + redShiftTableVO.getFile().getAbsolutePath() + " 0 " +redShiftTableVO.getDelimiter() +" 1 ";
			}
			
			String clickStreatmFile = "-r " +clickstreamData.getPath() +" 0 \t";

			
			ReadFile readFile = new ReadFile();
			String filePath = null;
			String spliter = null;
			int index = 0;
			int ignore = 0;
			File inputFile = null;
			int counter = 0;
			
			
			/*
			 * For Transaction File
			 */
			String[] args = transactionFile.split(" ");
			
			filePath = args[counter+1];
			index = Integer.parseInt(args[counter+2]);
			spliter = args[counter+3];
			ignore = Integer.parseInt(args[counter+4]);
			
			inputFile = new File(filePath);
			
			
			//Reading transaction data to Map
			HashMap<String, ArrayList<String>> transactionData = readFile.parseFile(inputFile, spliter, index, ignore);
			
			//Printing Map data
			System.err.println("Transaction Data");
			readFile.printFileMap(transactionData, 2);
			
				
			/*
			 * For Customer data File
			 */
			args = customerFile.split(" ");
					
			filePath = args[counter+1];
			index = Integer.parseInt(args[counter+2]);
			spliter = args[counter+3];
			ignore = Integer.parseInt(args[counter+4]);
			inputFile = new File(filePath);
			
			
			//Reading customer data to Map
			HashMap<String, ArrayList<String>> customerData = readFile.parseFile(inputFile, spliter, index, ignore);
			
			//Printing Map data
			System.err.println("Customer Data");
			readFile.printFileMap(customerData, 2);
			
			System.err.println("Original Customer Number: "+customerData.size());
			System.err.println("Original Transaction Number: "+transactionData.size());
			System.out.println();
			
			/*
			 * Mapping Transaction data to customer data
			 */
			
			HashMap<String, ArrayList<String>> new_transactionData = new HashMap<String, ArrayList<String>>();
	
			Iterator<String> ite = customerData.keySet().iterator();
			
			//Mapping customer data and transaction data
			for (String key : transactionData.keySet()) {
				
				if(!ite.hasNext()){		
					ite = customerData.keySet().iterator();
				}
				
				String id = ite.next();
				transactionData.get(key).add(id);
				new_transactionData.put(id, transactionData.get(key));
			}
			
			//Printing updated transaction data
			System.err.println("New Transaction Data");
			readFile.printFileMap(new_transactionData, 2);
			
			printListToFile.printHashMap(new_transactionData, transaaction_file);
			
			
			/*
			 *PSID Processing
			 */
			
			//Generating PSID 
			Set<Long> randomNumSet = new HashSet<Long>();
			OTP otp = new OTP();
			
			while(randomNumSet.size() != customerData.size()){
				long random = otp.generateOTP(6);
				randomNumSet.add(random);
			}
			
			//Adding PSID to Table
			HashMap<String, ArrayList<String>> new_customerData = new HashMap<String, ArrayList<String>>();
			Iterator<Long> ite1 = randomNumSet.iterator();
			
			for (String key : customerData.keySet()) {
				
				ArrayList<String> data = customerData.get(key);
				data.add(Long.toString(ite1.next()));
				
				new_customerData.put(key, data);
			}
			
			// Printing after PSID
			System.err.println("New Customer Data");
			readFile.printFileMap(new_customerData, 2);
			
			printListToFile.printHashMap(new_customerData, customer_file);
			
			
			/*
			 * Processing Click-stream data
			 */
			
			args = clickStreatmFile.split(" ");
			
			filePath = args[counter+1];
			index = Integer.parseInt(args[counter+2]);
			spliter = args[counter+3];
			inputFile = new File(filePath);
			
			//Reading transaction data to Map
			ArrayList<ArrayList<String>> clickStreamData = readFile.parseFileToList(inputFile, spliter, index, 0);
					
			//Printing Map data
			System.err.println("Click-Stream Data");
			readFile.printFileList(clickStreamData, 2);
			
			System.out.println(clickStreamData.get(4).size());
			
//			//New Click-stream Data by adding PSID as cookie ID and value
//			HashMap<String, ArrayList<String>> new_clickstreamData = new HashMap<String, ArrayList<String>>();
//			Iterator<String> ite2 = new_customerData.keySet().iterator();
//			
//			for (ArrayList<String> clickStream_list : clickStreamData) {
//				
//				if(!ite2.hasNext()){
//					ite2 = new_customerData.keySet().iterator();
//				}
//				
//				String cus_key = ite2.next();
//				ArrayList<String> cus_data = new_customerData.get(cus_key);
//				
//				clickStream_list.add(cus_data.get(cus_data.size()-1));
//				clickStream_list.add(cus_key);
//	
//				new_clickstreamData.put(cus_key, clickStream_list);
//				
//			}
			
			
			//New Click-stream Data by adding PSID as cookie ID and value
			HashMap<String, ArrayList<String>> new_clickstreamData = new HashMap<String, ArrayList<String>>();
			Iterator<ArrayList<String>> ite2 = clickStreamData.iterator();
			
			for (String custer_id : new_customerData.keySet()) {
				
				ArrayList<String> new_customer_data = new_customerData.get(custer_id);
				
				if(!ite2.hasNext()){
					ite2 = clickStreamData.iterator();
				}
				

				ArrayList<String> click = (ArrayList<String>)ite2.next().clone();
				
				click.add(new_customer_data.get(new_customer_data.size()-1));
				click.add(custer_id);
				
				new_clickstreamData.put(custer_id, click);
						
			}
			
			// Printing after Updated Click-stream data
			System.err.println("New Click-stream Data");
			readFile.printFileMap(new_clickstreamData, 1);
			
			printListToFile.printHashMap(new_clickstreamData, clickStream_file);
			
			/*
			 * Getting required column data for R script
			 * 
			 */
			
			System.err.println("Customer Number: "+new_customerData.size());
			System.err.println("Transaction Number: "+new_transactionData.size());
			System.err.println("Clieck Stream Number: "+new_clickstreamData.size());
			System.out.println();
			
			HashMap<String, ArrayList<String>> transaction_csutomer_data = new HashMap<String, ArrayList<String>>();
			
			float stardard_score_for_LastOrderAmount = 0;
			
			for (String key : new_customerData.keySet()) {
				
				ArrayList<String> customer_data = new_customerData.get(key);
				ArrayList<String> transaction_data = new_transactionData.get(key);
				ArrayList<String> clickstream_data = new_clickstreamData.get(key);
				
				ArrayList<String> data = new ArrayList<String>();
				
				
				
				//LTDContributionMargin
				if(customer_data != null && customer_data.size()> 1 && !customer_data.get(1).equals("null"))
					data.add(customer_data.get(1));
				else
					data.add("0");
				
				
//				if(customer_data != null && customer_data.size()>16 && !customer_data.get(16).equals("null"))
//					data.add(customer_data.get(16))); 
//				else
//					data.add("0");
				
				//LastOrderAmount
				if(transaction_data != null && transaction_data.size()>2)
					data.add(transaction_data.get(2));
				else
					data.add("0");
				
				
				//ClickContextType
				if(clickstream_data != null && clickstream_data.size()>10 && !clickstream_data.get(10).equals("null"))
					data.add(clickstream_data.get(10));
				else
					data.add("0");
				
				
				//TotalOrderAmount as PurchaseTotal
				if(transaction_data != null && transaction_data.size()>2){
					data.add(transaction_data.get(2)); //TotalOrderAmount as PurchaseTotal
					
					stardard_score_for_LastOrderAmount = stardard_score_for_LastOrderAmount +  new Float(transaction_data.get(2)); 
				}
				else
					data.add("0");
				
				
				String url_line = new String();
				
				//FIRST_HIT_REFERRER
				if(clickstream_data != null && clickstream_data.size()>108 && !clickstream_data.get(108).equals("null")){
					url_line = clickstream_data.get(108);
					data.add(url_line); //FIRST_HIT_REFERRER
				}
				else
					data.add("null");
				
				
				
				//FIRST_HIT_TIME_GMT
				if(clickstream_data != null && clickstream_data.size()>109 && !clickstream_data.get(109).equals("null")){
					url_line = clickstream_data.get(109);
					
					url_line = url_line.replaceAll("\\+", " ");
					url_line = url_line.replaceAll("\\?", " ");
					
					data.add(url_line); //FIRST_HIT_TIME_GMT
				}
				else
					data.add("null");
				
				
				//PAID_SEARCH
				if(clickstream_data != null && clickstream_data.size()>150 && !clickstream_data.get(150).equals("null")){
					url_line = clickstream_data.get(150);
					data.add(url_line); //PAID_SEARCH
				}
				else
					data.add("null");
				
				
				//POST_SEARCH_ENGINE
				if(clickstream_data != null && clickstream_data.size()>336 && !clickstream_data.get(336).equals("null")){
					url_line = clickstream_data.get(336);
					
					url_line = url_line.replaceAll("\\+", " ");
					url_line = url_line.replaceAll("\\?", " ");
					
					data.add(url_line); //POST_SEARCH_ENGINE
				}
				else
					data.add("null");
				
				
				//VISIT_SEARCH_ENGINE
				if(clickstream_data != null && clickstream_data.size()>468 && !clickstream_data.get(468).equals("null")){
					url_line = clickstream_data.get(468);
					data.add(url_line); //VISIT_SEARCH_ENGINE
				}
				else
					data.add("null");
				
				
				//VISIT_START_TIME_GMT
				if(clickstream_data != null && clickstream_data.size()>471 && !clickstream_data.get(471).equals("null")){
					url_line = clickstream_data.get(471);
					data.add(url_line); //VISIT_START_TIME_GMT
				}
				else
					data.add("null");
				
				transaction_csutomer_data.put(key, data);
				
			}
			
			// Printing R script data
			System.err.println("Required column data for R script");
			readFile.printFileMapString(transaction_csutomer_data, 1);
		
			
			System.out.println("\nSum of LastOrderAmount = "+stardard_score_for_LastOrderAmount);
			System.out.println("\nCustomers = "+transaction_csutomer_data.size());
			stardard_score_for_LastOrderAmount = stardard_score_for_LastOrderAmount / transaction_csutomer_data.size();
			System.out.println("\nstardard_score_for_LastOrderAmount = "+stardard_score_for_LastOrderAmount);	
			
			printListToFile.print(transaction_csutomer_data, r_file);
			
			return r;
		
		}
		catch(Exception exception){
			throw exception;
		}
		
	}

}

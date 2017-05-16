package logic.dataPreparation;

import java.util.Random;

public class OTP {

	
	public long generateOTP(int limit) throws Exception{
		
		try {
			long otp = 0;
			
			if(limit >20 || limit < 1)
				limit = 10;
			
			for (int i = 0; i < limit; i++) {
				
				otp = (otp*10) + new Random().nextInt(9);
				
				if(i==0 && otp == 0)
					i = i-1;
			}
			
			//System.out.println(otp);
			return otp;
		} 
		catch (Exception exception){
			// TODO Auto-generated catch block
			throw exception;
		}
	}
	

}

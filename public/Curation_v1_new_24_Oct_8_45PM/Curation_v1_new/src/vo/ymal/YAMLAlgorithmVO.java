package vo.ymal;

import java.util.Set;

import com.neo4j.model.AlgorithmParameterModel;

import vo.r.R;

public class YAMLAlgorithmVO {

	private String rScript;
	private String algorithmID;
	private String type;
	private String output;
	private String outputUI;
	
	private RedShiftConfiguration redShiftConfiguration;
	private RedShiftTableVO redShiftTableVOs;
	private Set<AlgorithmParameterModel> inputParametersVOs;
	private Set<AlgorithmParameterModel> outputParametersVOs;
	
	private R r;
	
	public YAMLAlgorithmVO(){
		redShiftTableVOs = new RedShiftTableVO();
	}
	
	public String getAlgorithmID() {
		return algorithmID;
	}
	public void setAlgorithmID(String algorithmID) {
		this.algorithmID = algorithmID;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOutput() {
		return output;
	}
	public void setOutput(String output) {
		this.output = output;
	}
	public String getOutputUI() {
		return outputUI;
	}
	public void setOutputUI(String outputUI) {
		this.outputUI = outputUI;
	}
	public RedShiftConfiguration getRedShiftConfiguration() {
		return redShiftConfiguration;
	}
	public void setRedShiftConfiguration(RedShiftConfiguration redShiftConfiguration) {
		this.redShiftConfiguration = redShiftConfiguration;
	}
	public String getrScript() {
		return rScript;
	}
	public void setrScript(String rScript) {
		this.rScript = rScript;
	}
	public RedShiftTableVO getRedShiftTableVOs() {
		return redShiftTableVOs;
	}
	public void setRedShiftTableVOs(RedShiftTableVO redShiftTableVOs) {
		this.redShiftTableVOs = redShiftTableVOs;
	}
	public R getR() {
		return r;
	}
	public void setR(R r) {
		this.r = r;
	}
	public Set<AlgorithmParameterModel> getInputParametersVOs() {
		return inputParametersVOs;
	}
	public void setInputParametersVOs(Set<AlgorithmParameterModel> inputParametersVOs) {
		this.inputParametersVOs = inputParametersVOs;
	}
	public Set<AlgorithmParameterModel> getOutputParametersVOs() {
		return outputParametersVOs;
	}
	public void setOutputParametersVOs(Set<AlgorithmParameterModel> outputParametersVOs) {
		this.outputParametersVOs = outputParametersVOs;
	}
}
package DB;

public class productVO {
  String num;
  String main;
  String day;
  String weight;
  String s_id;
  String s_inputweight;
  String s_inputday;
  String s_outputweight;
  String s_outputday;
  String l_id;
  String l_inputday;
  String l_inputweight;
  String l_outputday;
  public productVO(String num, String main, String day, String weight, String s_id, String s_inputweight,
		String s_inputday, String s_outputweight, String s_outputday, String l_id, String l_inputday,
		String l_inputweight, String l_outputday) {
	super();
	this.num = num;
	this.main = main;
	this.day = day;
	this.weight = weight;
	this.s_id = s_id;
	this.s_inputweight = s_inputweight;
	this.s_inputday = s_inputday;
	this.s_outputweight = s_outputweight;
	this.s_outputday = s_outputday;
	this.l_id = l_id;
	this.l_inputday = l_inputday;
	this.l_inputweight = l_inputweight;
	this.l_outputday = l_outputday;
}
public String getNum() {
	return num;
}
public void setNum(String num) {
	this.num = num;
}
public String getMain() {
	return main;
}
public void setMain(String main) {
	this.main = main;
}
public String getDay() {
	return day;
}
public void setDay(String day) {
	this.day = day;
}
public String getWeight() {
	return weight;
}
public void setWeight(String weight) {
	this.weight = weight;
}
public String getS_id() {
	return s_id;
}
public void setS_id(String s_id) {
	this.s_id = s_id;
}
public String getS_inputweight() {
	return s_inputweight;
}
public void setS_inputweight(String s_inputweight) {
	this.s_inputweight = s_inputweight;
}
public String getS_inputday() {
	return s_inputday;
}
public void setS_inputday(String s_inputday) {
	this.s_inputday = s_inputday;
}
public String getS_outputweight() {
	return s_outputweight;
}
public void setS_outputweight(String s_outputweight) {
	this.s_outputweight = s_outputweight;
}
public String getS_outputday() {
	return s_outputday;
}
public void setS_outputday(String s_outputday) {
	this.s_outputday = s_outputday;
}
public String getL_id() {
	return l_id;
}
public void setL_id(String l_id) {
	this.l_id = l_id;
}
public String getL_inputday() {
	return l_inputday;
}
public void setL_inputday(String l_inputday) {
	this.l_inputday = l_inputday;
}
public String getL_inputweight() {
	return l_inputweight;
}
public void setL_inputweight(String l_inputweight) {
	this.l_inputweight = l_inputweight;
}
public String getL_outputday() {
	return l_outputday;
}
public void setL_outputday(String l_outputday) {
	this.l_outputday = l_outputday;
}

}

package mybean.data;

public class srcBean {
	String[] jpgs;//jpg的链接地址
	String[] name;//jpg的名称
	int num;//jpg的数量
	public srcBean(){
		jpgs=new String[1];
		name=new String[2];
	}
	public String[] getJpgs() {
		return jpgs;
	}
	public void setJpgs(String[] jpgs) {
		this.jpgs = jpgs;
	}
	public String[] getName() {
		return name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setName(String[] name) {
		this.name = name;
	}
	
}

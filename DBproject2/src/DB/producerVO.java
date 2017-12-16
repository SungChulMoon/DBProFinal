package DB;

public class producerVO {
	String id;
	String name;
	String main;
	String method;
	String soil;
	public producerVO(String id,String name, String main, String method, String soil) {
		super();
		this.id = id;
		this.name = name;
		this.main = main;
		this.method = method;
		this.soil = soil;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getSoil() {
		return soil;
	}
	public void setSoil(String soil) {
		this.soil = soil;
	}
	
}

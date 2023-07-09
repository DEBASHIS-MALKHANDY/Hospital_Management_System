package in.project.entity;

public class Specalist {
	
	private int id;
	private String specialisName;
	
	
	public Specalist(int id, String specialisName) {
		super();
		this.id = id;
		this.specialisName = specialisName;
	}
	
	
	public Specalist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecialisName() {
		return specialisName;
	}
	public void setSpecialisName(String specialisName) {
		this.specialisName = specialisName;
	}
	
	

}

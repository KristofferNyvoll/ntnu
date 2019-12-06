package interfaces;

public class Person2 implements Named{
	
	private String fullName;
	
	public Person2(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public void setGivenName(String name) {
		this.fullName = name + " " + getFamilyName();
	}

	@Override
	public String getGivenName() {
		return fullName.substring(0, this.fullName.indexOf(" "));
	}

	@Override
	public void setFamilyName(String name) {
		this.fullName = this.getGivenName() + " " + name;
	}

	@Override
	public String getFamilyName() {
		return this.fullName.substring(this.fullName.indexOf(" ") + 1);
	}

	@Override
	public void setFullName(String name) {
		this.fullName = name;
	}

	@Override
	public String getFullName() {
		return this.fullName;
	}

}

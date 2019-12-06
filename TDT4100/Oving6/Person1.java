package interfaces;

public class Person1 implements Named{
	
	String givenName, familyName;

	public Person1(String givenName, String familyName) {
		this.givenName = givenName;
		this.familyName = familyName;
	}
	@Override
	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}
	

	@Override
	public String getGivenName() {
		return this.givenName;
	}

	@Override
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}


	@Override
	public String getFamilyName() {
		return this.familyName;
	}

	@Override
	public void setFullName(String fullName) {
//		int index = fullName.indexOf(' ');
//		this.givenName = fullName.substring(0, index);
//		this.familyName = fullName.substring(index + 1);
	}

	@Override
	public String getFullName() {
		return this.givenName +" " + this.familyName;
	}

}

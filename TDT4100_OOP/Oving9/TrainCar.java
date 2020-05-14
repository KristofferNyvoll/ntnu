package inheritance;

public class TrainCar {
	
	public int deadWeight;
	
	public TrainCar(int kg) {
		this.deadWeight = kg;
	}
	
	public int getTotalWeight() {
		return this.deadWeight;
	}
	
	public void setDeadWeight(int dWeight) {
		this.deadWeight = dWeight;
	}
	
	public int getDeadWeight() {
		return this.deadWeight;
	}
	
	protected String getCarType() {return "TrainCar";}
	
	public String toString() {
		return "This " + getCarType() + " weighs " + getTotalWeight() + " kg.";
	}
}

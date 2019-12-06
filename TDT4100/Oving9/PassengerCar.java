package inheritance;

public class PassengerCar extends TrainCar{

	private final int personWeight = 80; 
	private int passengers;
	
	public PassengerCar(int deadWeight, int numPass) {
		super(deadWeight);
		this.passengers = numPass;
	}
	
	public int getPassengerCount() {
		return this.passengers;
	}
	
	public void setPassengerCount(int newNum) {
		this.passengers = newNum;
	}
	
	protected String getCarType() {return "PassengerCar";}
	
	public String toString() {
		return super.toString() + " and has " + getPassengerCount() + " passengers.";
	}
	
	@Override
	public int getTotalWeight(){
		return super.getTotalWeight() + (this.getPassengerCount() * personWeight);
}
}

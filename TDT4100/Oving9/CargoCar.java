package inheritance;

public class CargoCar extends TrainCar{
	
	public int cargo;
	
	public CargoCar(int deadWeight, int carg) {
		super(deadWeight);
		this.cargo = carg;
	}
	
	public int getCargoWeight() {
		return cargo;
	}
	
	public void setCargoWeight(int newCargo) {
		this.cargo = newCargo;
	}
	
	protected String getCarType() {return "CargoCar";}
	
	public String toString() {
		return super.toString() + " and has " + getCargoWeight() + " kg of cargo.";
	}

	@Override
	public int getTotalWeight(){
		return super.getTotalWeight() + cargo;
}
}

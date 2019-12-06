package inheritance;

import java.util.ArrayList;
import java.util.Collection;

public class Train {
	
	private Collection<TrainCar> trainCars;
	
	public Train() {
		trainCars = new ArrayList<TrainCar>();
	}
	
	public boolean contains(TrainCar trainCar) {
		return trainCars.contains(trainCar);
	}
	
	public void addTrainCar(TrainCar trainCar) {
		trainCars.add(trainCar);
	}
	
	public int getTotalWeight() {
		int total = 0;
		for (TrainCar unit : trainCars) {
			total += unit.getTotalWeight();
		}
		return total;
	}
	public int getPassengerCount() {
		int num = 0;
		for (TrainCar wagon : trainCars) {
			if (wagon instanceof PassengerCar) {
				num += ((PassengerCar) wagon).getPassengerCount() ;
			}
		}
		return num;
	}
	
	public int getCargoWeight() {
		int carg = 0;
		for (TrainCar wagon: trainCars) {
			if (wagon instanceof CargoCar) {
				carg += ((CargoCar) wagon).getCargoWeight();
			}
		}
		return carg;
	}
	
	@Override
	public String toString() {
		String result = "";
		for (TrainCar wagon: trainCars) {
			result += wagon.toString() + "\n";
		}
		return result;
	}
	
	public static void main(String[] args) {
		Train train = new Train();
		
		train.addTrainCar(new CargoCar(15000, 40000));
		train.addTrainCar(new PassengerCar(1200, 420));
		
		System.out.println(train.toString());
	}

}

package encapsulation;

public class Vehicle {
	private char type;
	private char fuel;
	private String regNum;


    public Vehicle(char type, char fuel, String regNum) {
        if (type == 'M' || type == 'C') {
            this.type = type;
        } else {
            throw new IllegalArgumentException("The only compatible vehicles are M(otorcycle) and C(ar)");
        }
        
        if (fuel == 'H' || fuel == 'D'|| fuel == 'G' || fuel == 'E') {
            this.fuel = fuel;
        } else {
            throw new IllegalArgumentException("Fuel type must be H,D,G or E");
        }
       
        if (regNumIsValid(regNum)) {
            this.regNum = regNum;
        } else {
            throw new IllegalArgumentException("Invalid registration number");
        }
    }
	
	public boolean regNumIsValid(String regNum) {
		String twoLetters = regNum.substring(0, 2);
		
	    if (regNum.matches("[A-Z]{2}[0-9]{4,5}")) {
	        if ((this.type == 'M' && regNum.length() == 6) || (this.type == 'C' && regNum.length() == 7)) {
	            return ((twoLetters.matches("([E][LK])") && this.fuel == 'E') ||
	                    (twoLetters.matches("([H][Y])") && (this.fuel == 'H' && this.type == 'C')) ||
	                    (!(twoLetters.matches("(([E][LK])|([H][Y]))")) && (this.fuel =='D' || this.fuel == 'G')));
	        }
	        else {
	            return false;
	        }  
	    } 
	    else {
	        return false;
	    }
	}

	char getFuelType() {
		return this.fuel;
	}
	
	String getRegistrationNumber() {
		return this.regNum;
	}
	
	void setRegistrationNumber(String newRegNum) {
		if (regNumIsValid(newRegNum)) {
			this.regNum = newRegNum;
		}
		else {
			throw new IllegalArgumentException("Invalid new regnumber");
		}
	}
	
	char getVehicleType() {
		return this.type;
	}
	
	public static void main(String[] args) {
		Vehicle vehicle = new Vehicle('C', 'D', "KT12345");
		System.out.println(vehicle.getFuelType());
	}
}

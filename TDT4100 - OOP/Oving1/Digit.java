package stateandbehavior;

public class Digit {
	int siffer;
	int tallsystem;
	
	public Digit(int sys) {
		this.tallsystem = sys;
		
	}
	
	int getValue() {
		return this.siffer;
	}
	
	boolean increment() {
		if (this.siffer == (this.tallsystem - 1)) {
			this.siffer = 0;
			return true;
		}
		else {
			this.siffer ++;
			return false;
		}
	}
	
	int getBase() {
		return this.tallsystem;
	}
	
	public String toString() {
		String digits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		// Bruker modulo til å tilegne bokstaver til verdier. 35 i 40-tallssystemet blir f. eks "Z".
		// 37 ville blitt 1, gitt at vi ikke resetter, ref increment(). 
		char num_char_siffer = digits.charAt(this.siffer % this.tallsystem);
		// Må konvertere til streng, iht testen
		String streng_siffer = String.valueOf(num_char_siffer);
		return streng_siffer;
	}
	
	public static void main(String[] args) {
		Digit digit = new Digit(2);
		digit.increment();
		System.out.println(digit.getValue());
		System.out.println(digit.toString());
		System.out.println(digit.increment());
		System.out.println(digit.getValue());
		System.out.println(digit.toString());
		System.out.println(digit.increment());
	}

}

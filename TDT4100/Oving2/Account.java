package encapsulation;

/*
 * Innledning: 
 * A) Hva er en synlighetsmodifikator?
 * En synlighetsmodifikator brukes for å deklarere hvilke navn som skal være offentlige og private. 
 * 
 * B) Hva er forskjellen på private og public og når brukes de?
 * Ved bruk av private er innhioldet kun "synlig" for klassen den inneholder.
 * Ved bruk av public er innholdet synlig for alle. 
 * Public er passende for metoder/attributter som skal brukes og endres senere, 
 * private er best egnet for å restricte tilgangen til objektet (innkapsling osv). 
 * 
 * 1) Forklar hvorfor metodene over kan sies å være en komplett innkapsling av tilstanden?
 * OO tankegang tilstreber å minimere antall parametere og gjøre variabler utilgjengelige 
 * med mindre det er hensiktsmessig at de blir involvert. Ingen av metodene er public.
 * Verdier som påvirker attributtene valideres før de utføres.

 * 2) Er denne klassen data-orientert eller tjeneste-orientert? Begrunn svaret!
 * Tjenesteorientert. Metodene er fokusert på å utføre beregninger og operasjoner på data, 
 * som gjerne ligger utfor objektet. 
*/
public class Account {
	private double balance;
	private double interestRate;
	
	public void isValid(double number) {
		if (number < 0) {
			throw new IllegalArgumentException("Please enter a positive value");
		}
	}
	
	public Account(double balance, double interest) {
		isValid(balance);
		isValid(interest);
		this.balance = balance;
		this.interestRate = interest;
	}
	
	double getBalance() {
		return balance;
	}
	
	double getInterestRate() {
		return interestRate;
	}
	
	void setInterestRate(double newInterest) {
		isValid(newInterest);
		this.interestRate = newInterest;
	}
	
	void deposit(double depositValue) {
		isValid(depositValue);
		this.balance += depositValue;
	}
	
	void withdraw(double number) {
		isValid(number);
		if (number > this.balance) {
			throw new IllegalArgumentException("You cannot withraw more than your current balance");
		}
		this.balance -= number;
	}
	
	void addInterest(double number) {
		balance += (balance*interestRate)/100;
	}
	
	public static void main(String[] args) {
		Account account = new Account(100, 2);
		account.deposit(50);
		System.out.println(account.getBalance());
		account.withdraw(20);
		System.out.println(account.getBalance());
		System.out.println(account.getInterestRate());
		
		
	}

}

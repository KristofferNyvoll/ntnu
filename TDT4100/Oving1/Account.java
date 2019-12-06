package stateandbehavior;

public class Account {
	
	double balance; 
	int interestRate;
	
	double getBalance() {
		return balance;
	}
	
	double getInterestRate() {
		return interestRate;
	}
	
	void deposit(double amount) {
		if (amount > 0) {
			balance += amount;
		}
	}

	void addInterest() {
		double surplus = (interestRate*balance)/100;
		deposit(surplus);
		// Legger til det nye beløpet
	}
	
	void setInterestRate(int newInterestRate) {
		interestRate = newInterestRate;
	}
	public String toString() {
		return "Du har nå " + balance + " penger på konto";
	}
	
	public static void main(String[] args) {
	
		Account account = new Account();
		account.deposit(100);
		account.setInterestRate(103);
		account.addInterest();
		account.getBalance();
		System.out.println(account.toString());
	}
	

}

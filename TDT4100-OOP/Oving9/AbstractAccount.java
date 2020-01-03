package inheritance;

public abstract class AbstractAccount {

	protected double balance;
	
	public void deposit(double amount) {
		if (amount >= 0) {this.balance += amount;}
		else {throw new IllegalArgumentException("Deposit must be positive"); }
	}
	
	public void withdraw(double amount) {
		if (amount >= 0) {internalWithdraw(amount);}
		else {throw new IllegalArgumentException("Withdraw must be positive"); }
	}
	
	public AbstractAccount() {balance = 0;}
	
	protected abstract void internalWithdraw(double amount);
	
	public double getBalance() {return balance;}
}

package inheritance;

public class CreditAccount extends AbstractAccount{
	
	private double creditLine;
	
	public CreditAccount(double creditLine) {
		super();
		this.creditLine = creditLine;
	}

	@Override
	protected void internalWithdraw(double amount) {
		if (balance - amount > - creditLine) {balance -= amount;}
		else {throw new IllegalStateException("Not enough available credits");}
		
	}
	
	public void setCreditLine(double creditLine) {
		if (creditLine < 0) {throw new IllegalArgumentException("Invalid creditline. Must be positive");}
		if (balance < 0 && balance <= -creditLine) {throw new IllegalStateException("Insufficient creditline");}
		this.creditLine = creditLine;
	}
	
	public double getCreditLine() {return this.creditLine;}
	

}

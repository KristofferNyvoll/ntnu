package inheritance;

public class SavingsAccount2 extends AbstractAccount{
	
	private int withdrawals;
	private double fee;

	@Override
	protected void internalWithdraw(double amount) {
		if (amount > balance) {throw new IllegalStateException("Not enough money");}
		if (withdrawals > 0) {balance -= amount; withdrawals -= 1;}
		else if (balance >= (amount + fee)) {balance -= (amount +fee);}
		else {throw new IllegalStateException("No withdrawals remaining");}
		
	}
	
	public SavingsAccount2(int withdrawals, double fee) {
		super();
		this.withdrawals = withdrawals;
		this.fee = fee;
	}
	

}

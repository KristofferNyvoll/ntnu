package inheritance;

public class DebitAccount extends AbstractAccount{

	@Override
	protected void internalWithdraw(double amount) {
		if (amount > getBalance()) {throw new IllegalStateException("Cannot withdraw more than you have");}
		super.balance -= amount;
	}
	

}

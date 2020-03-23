import java.util.Random;

/**
 * This class implements a customer, which is used for holding data
 * and update the statistics
 */
public class Customer {
    private static int counterID = 0;
    private final int ID;
    
    /**
     *  Creates a new Customer.  Each customer should be given a
     *  unique ID
     */
    public Customer() {this.ID = counterID++;}

    /**
     * Here you should implement the functionality for ordering food
     * as described in the assignment.
     */
    public synchronized void order() {
        final Random random = new Random();

        SushiBar.write(Thread.currentThread().getName() +  String.format(": Customer %d is now eating.", ID));
        int servedOrders = random.nextInt(SushiBar.maxOrder);
        int takeAwayOrders = random.nextInt(SushiBar.maxOrder);
        SushiBar.servedOrders.add(servedOrders);
        SushiBar.takeawayOrders.add(takeAwayOrders);
        SushiBar.totalOrders.add(servedOrders + takeAwayOrders);
        
        try {
            wait(SushiBar.customerWait);
        } 
        catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        SushiBar.write(Thread.currentThread().getName() +  String.format(": Customer %d is now leaving.", ID));
        return;
    }

    /**
     *
     * @return Should return the customerID
     */
    public int getCustomerID() {return this.ID;}
}

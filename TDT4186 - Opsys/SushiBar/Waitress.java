/**
 * This class implements the consumer part of the producer/consumer problem.
 * One waitress instance corresponds to one consumer.
 */
public class Waitress implements Runnable {
    private WaitingArea waitingArea;
    private Customer customer;

    /**
     * Creates a new waitress. Make sure to save the parameter in the class
     *
     * @param waitingArea The waiting area for customers
     */
    Waitress(WaitingArea waitingArea) {this.waitingArea = waitingArea;}

    /**
     * This is the code that will run when a new thread is
     * created for this instance
     */
    @Override
    public void run() {
        while (!waitingArea.isEmpty() || SushiBar.isOpen) {
            customer = waitingArea.next();
            if (customer == null) { continue;}

            SushiBar.write(Thread.currentThread().getName() + " Customer " + customer.getCustomerID() + " is now fetched");
            try {
                Thread.sleep(SushiBar.waitressWait);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            customer.order();
            customer = null;
            // The waitress can now fetch another customer
            
            // If the waitresses currently have nothing to do; wait
            while(waitingArea.isEmpty() && SushiBar.isOpen) {
                try {
                    synchronized(waitingArea){
                        waitingArea.wait();
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            } 
        }
    }
}

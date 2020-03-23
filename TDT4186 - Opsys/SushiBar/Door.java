/**
 * This class implements the Door component of the sushi bar
 * assignment The Door corresponds to the Producer in the
 * producer/consumer problem
 */
public class Door implements Runnable {
    private WaitingArea waitingArea;

    /**
     * Creates a new Door. Make sure to save the
     * @param waitingArea   The customer queue waiting for a seat
     */
    public Door(WaitingArea waitingArea) {this.waitingArea = waitingArea;}

    /**
     * This method will run when the door thread is created (and started).
     * The method should create customers at random intervals and try to put them in the waiting area.
     */
    @Override
    public void run() {
        while (SushiBar.isOpen){
            try {
                Thread.sleep(SushiBar.doorWait);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            // Essence of the producer/consumer model: Producer has to wait if the shared resource is full
            if (waitingArea.isFull()) {
                while (waitingArea.isFull()) {
                    try {
                        synchronized(waitingArea) {
                            waitingArea.wait();
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            else {
                Customer customer = new Customer();
                waitingArea.enter(customer);
                SushiBar.write(Thread.currentThread().getName() + ": Customer " + customer.getCustomerID() + " is now created");
            }   
        }
        SushiBar.write(Thread.currentThread().getName() + ": ***** DOOR CLOSED *****");
    }
}

import java.util.ArrayDeque;
import java.util.Queue;

/**
 * This class implements a waiting area used as the bounded buffer, in the producer/consumer problem.
 */
public class WaitingArea {
    // We have a FIFO (First in- first out), so we implement a queue
    private Queue<Customer> customers;
    private int wAreaSize;

    /**
     * Creates a new waiting area.
     *
     * @param size The maximum number of Customers that can be waiting.
     */
    public WaitingArea(int size) {
        this.wAreaSize = size;
        customers = new ArrayDeque<>();
    }

    /**
     * This method should put the customer into the waitingArea
     *
     * @param customer A customer created by Door, trying to enter the waiting area
     */
    public synchronized void enter(Customer customer) {
        customers.add(customer);
        notifyAll();
    }

    /**
     * @return The customer that is first in line.
     */
    public synchronized Customer next() {
        // .poll() also removes the customer first in line from the queue
        Customer customer = customers.poll();
        notifyAll();
        return customer;
    }

    public boolean isFull() { return customers.size() >= wAreaSize;}

    public boolean isEmpty() { return customers.size() == 0;}
}

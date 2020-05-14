package stateandbehavior;

public class UpOrDownCounter {
	int counter;
	int end;

	public UpOrDownCounter(int start, int end) {
		if (start == end) {
			throw new IllegalArgumentException("Start og slutt kan ikke ha samme verdi");	
		}
		this.counter = start;
		this.end = end;	
	}

	public int getCounter() {
		return this.counter;
	}

	public boolean count() {
		if (this.counter < this.end) {
			this.counter ++;
		}
		else if (this.counter > this.end) {
			this.counter --;
		}
		return !(this.counter == this.end); 
		//returnerer false hvis counter og end er ulike
	}


	public static void main(String[] args) {
		UpOrDownCounter ascendingCounter = new UpOrDownCounter(0, 11);
		while (ascendingCounter.count()) {
			System.out.println(ascendingCounter.getCounter());
		}

		UpOrDownCounter descendingCounter = new UpOrDownCounter(5, -11);
		while (descendingCounter.count()) {
			System.out.println(descendingCounter.getCounter());
		}

	}

}
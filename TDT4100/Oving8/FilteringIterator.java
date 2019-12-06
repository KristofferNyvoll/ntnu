package patterns.delegation;

import java.util.Iterator;
import java.util.NoSuchElementException;

public abstract class FilteringIterator<Obj> implements Iterator<Obj>{

	// The delagating class has a internal object (Obj) of the delegate-class
	private Iterator<Obj> iteratorDelegate;
	private boolean hasNext;
	private Obj next;

	public FilteringIterator(Iterator<Obj> iterator) {
		this.iteratorDelegate = iterator;
		this.next = null;
		skip();
	}

	public boolean hasNext() {
		return hasNext;
	}

	public Obj next() {
		if (! hasNext) {
			throw new NoSuchElementException("There are no more elements!");
		}
		Obj bar = next;
		skip();
		return bar;
	}
	
	// Need this boolean for the skip() method
	protected abstract boolean shouldSkip(Obj next);
	
	protected void skip() {
		hasNext = false;
		while (iteratorDelegate.hasNext()) {
			hasNext = true;
			next = iteratorDelegate.next();
			if (! shouldSkip(next)) {
				return;
			}
			hasNext = false;
			next = null;
		}
	}


	public void remove() {
		throw new UnsupportedOperationException("Cannot remove");
}

}

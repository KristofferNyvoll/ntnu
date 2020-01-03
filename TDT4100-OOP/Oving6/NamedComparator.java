package interfaces;

import java.util.Comparator;

public class NamedComparator implements Comparator<Named>{

	@Override
	public int compare(Named o1, Named o2) {
		int difference = o1.getFamilyName().compareTo(o2.getFamilyName());
		if (difference == 0) {
			difference = o1.getGivenName().compareTo(o2.getGivenName());
		}
		return difference;
	} 

}

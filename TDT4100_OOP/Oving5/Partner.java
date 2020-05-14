package objectstructures;

public class Partner {

	private final String name;
	private Partner partner;
	
	public Partner(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	public Partner getPartner() {
		return partner;
	}
	
	@Override
	public String toString() {
		return  String.format("[%s and %s are currently in a relationship]", name, (partner != null ? partner.name : null));
	}
	
	public void setPartner(Partner partner) {
		// Cannot marry more than once in my world
		if (this.partner == partner) {
			return;
		}
		Partner oldPartner = this.partner;
		this.partner = partner;
		// divorce between this(the executable) and oldPartner
		if (oldPartner != null && oldPartner.getPartner() == this) {
			oldPartner.setPartner(null);
		}
		// switcheroo bois
		if (this.getPartner() != null) {
			this.partner.setPartner(this);
		}
	}
	public static void main(String[] args) {
		Partner p1 = new Partner("Adolf");
		Partner p2 = new Partner("Ryggfrid");
		System.out.println(p2.getName());
		System.out.println(p2.toString());
		p1.setPartner(p2);
		System.out.println(p1.toString());
		p1.setPartner(null);
	}
}

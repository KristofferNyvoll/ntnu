package stateandbehavior;

public class Location {
	int x;
	int y;
	
	void up() {
		this.y -= 1;
	}
	
	void down() {
		this.y += 1;
	}
	
	void left() {
		this.x -= 1;
	}
	
	void right() {
		this.x += 1;
	}
	
	int getX() {
		return this.x;
	}
	
	int getY() {
		return this.y;
	}
	
	public String toString() {
		return "X-koordinat: " + this.x + " og Y-koordinat: " + y;
	}
	
	public static void main(String[] args) {
		Location location = new Location();
		location.getX();
		location.getY();
		System.out.println(location.toString());
		location.down();
		location.down();
		location.right();
		location.getX();
		location.getY();
		System.out.println(location.toString());
	}
}

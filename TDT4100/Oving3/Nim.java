package encapsulation;

public class Nim {
	private int[] piles; 
	
	public Nim(int pileSize) {
		piles = new int[] {pileSize, pileSize, pileSize};
	}
	
	public Nim() {
		this(10);
	}
	
	public boolean isValidMove(int number, int targetPile) {
		return (number >= 1 && (targetPile == 0 || targetPile == 1 || targetPile == 2) && piles[targetPile] >= number && (!isGameOver()));
	}
	
	
	public void removePieces(int number, int targetPile) {
		if (isGameOver()) {
			throw new IllegalStateException("The game is over, cannot remove pieces");
		}
		if (!isValidMove(number, targetPile)) {
			throw new IllegalArgumentException("Input er ugyldig");
		}
		piles[targetPile] -= number;
	}
	
	public boolean isGameOver() {
		return (piles[0]==0 || piles[1]==0 || piles[2]==0);
	}
	
	public int getPile(int targetPile) {
		return piles[targetPile];
	}
	
	public String toString() {
		return "There are currently " + piles[0] + " pieces in pile 1. \n"
				+"There are currently " + piles[1] + " pieces in pile 2. \n"
				+"There are currently " + piles[2] + " pieces in pile 3.";
	}
	
	public static void main(String[] args) {
		Nim nim = new Nim(13);
		nim.removePieces(4, 1);
		System.out.println(nim.toString());
	}

}

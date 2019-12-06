package interfaces.twitter;

import interfaces.twitter.Tweet;
import interfaces.twitter.TwitterAccount;

public class Tweet {
	
	private TwitterAccount account;
	private String tweetText;
	private Tweet orgTweet = null;
	private int retweets = 0;
	
	
	// Simple tweet
	public Tweet(TwitterAccount account, String tweetText) {
		this.account = account;
		this.tweetText = tweetText;
	}
	// Retweet of an existing tweet
	public Tweet(TwitterAccount account, Tweet orgTweet) {
		Tweet parentOrgTweet = orgTweet.getOriginalTweet(); 
		if (orgTweet.getOwner() == account || (parentOrgTweet != null && orgTweet.getOwner() == account)) {
			throw new IllegalArgumentException("Cannot retweet your own tweet");
		}
		this.account = account;
		this.orgTweet = (parentOrgTweet != null ? parentOrgTweet : orgTweet); // Ternary operator
		this.orgTweet.retweets++;
		this.tweetText = this.getOriginalTweet().getText();
	}
	
	public TwitterAccount getOwner() {
		return account;
	}
	
	public Tweet getOriginalTweet() {
		return orgTweet;
	}
	
	public String getText() {
		return tweetText;
	}
	
	public int getRetweetCount() {
		return retweets;
	}

	public static void main(String[] args) {
		TwitterAccount tw = new TwitterAccount("Alfred");
		TwitterAccount tw2 = new TwitterAccount("Roger");
		Tweet tweet1 = new Tweet(tw, "Nå fungerer programmet");
		Tweet tweet2 = new Tweet(tw, "Dette er min andre tweet");
		System.out.println(tweet1.getText());
		System.out.println(tweet2.getOwner());
	}

}

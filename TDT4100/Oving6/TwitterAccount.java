package interfaces.twitter;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class TwitterAccount {
	
	private String account;
	
	private Collection<TwitterAccount> follows = new ArrayList<>();
	private Collection<TwitterAccount> followers = new ArrayList<>();
	
	private List<Tweet> tweets = new ArrayList<Tweet>();
	
	public TwitterAccount(String name) {
		this.account = name;
	}

	public String getUserName() {
		return account;
	}
	
	public void follow(TwitterAccount account) {
		if (this == account){
			throw new IllegalArgumentException("Cannot follow yourself");
		}
		if (! follows.contains(account)) {
			follows.add(account);
			account.followers.add(this);
		}
	}
	
	public void unfollow(TwitterAccount account) {
		if (follows.contains(account)) {
			follows.remove(account);
			account.followers.remove(this);
		}
	}
	
	public boolean isFollowing(TwitterAccount account) {
		return follows.contains(account);
	}
	
	public boolean isFollowedBy(TwitterAccount account) {
		return followers.contains(account);
		//Preferred, terse syntax over if-loops. 
	}
	
	public void tweet(String tweetText) {
		tweets.add(new Tweet(this, tweetText));
	}
	
	public void retweet(Tweet tweet) {
		tweets.add(new Tweet(this, tweet));
	}
	
	public Tweet getTweet(int i) {
		return tweets.get(tweets.size() - i);
	}
	
	public int getTweetCount() {
		return tweets.size();
	}
	public int getRetweetCount() {
		int counter = 0;
		for (Tweet tweet: tweets) {
			counter += tweet.getRetweetCount(); 
		}
		return counter;
	}
	
	public int getFollowerCount() {
		return this.followers.size();
	}
	
	public static void main(String[] args) {
		TwitterAccount acc1 = new TwitterAccount("Kristoffer");
		TwitterAccount acc2 = new TwitterAccount("Federico");
		TwitterAccount acc3 = new TwitterAccount("Gleb");
		acc2.follow(acc1);
		acc1.follow(acc3);
		System.out.println(acc3.getUserName());
		acc1.unfollow(acc3);
		acc1.tweet("Big ouf mkay");
		System.out.println(acc1.getTweetCount());
		//System.out.println(acc1.getTweet(0));
		System.out.println(acc1.getFollowerCount());
	}

}
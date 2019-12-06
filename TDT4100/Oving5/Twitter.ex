<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Twitter">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Tweet class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Tweet"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the TwitterAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.TwitterAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Tweet class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Tweet"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the TwitterAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.TwitterAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TweetTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.TweetTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TwitterAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.TwitterAccountTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the Tweet class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Tweet" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the TwitterAccount class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.TwitterAccount" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672666319" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="10" className="objectstructures.Tweet">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class Tweet {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550746276731" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="30" errorCount="1" warningCount="6" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private TwitterAccount account;&#xA;&#x9;private String tweetText;&#xA;&#x9;private Tweet orgTweet = null;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void Tweet(TwitterAccount account, String tweetText) {&#xA;&#x9;&#x9;this.account = account;&#xA;&#x9;&#x9;this.tweetText = tweetText;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void Tweet(TwitterAccount account, Tweet orgTweet) {&#xA;&#x9;&#x9;Tweet parentOrgTweet = orgTweet.getOriginalTweet(); &#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="48" end="-88"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="410" charEnd="428" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550750887584" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="52" warningCount="2" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private int retweets = 0;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void Tweet(TwitterAccount account, String tweetText) {&#xA;&#x9;&#x9;this.account = account;&#xA;&#x9;&#x9;this.tweetText = tweetText;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void Tweet(TwitterAccount account, Tweet orgTweet) {&#xA;&#x9;&#x9;Tweet parentOrgTweet = orgTweet.getOriginalTweet(); &#xA;&#x9;&#x9;if (orgTweet.getOwner() == account || parentOrgTweet != null &amp;&amp; orgTweet.getOwner() == account) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Cannot retweet your own tweet&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.account = account;&#xA;&#x9;&#x9;this.tweetText = this.getOriginalTweet().getText();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.orgTweet = (parentOrgTweet != null ? parentOrgTweet : orgTweet); // Ternary operator&#xA;&#x9;&#x9;this.orgTweet.retweets++;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public TwitterAccount getOwner() {&#xA;&#x9;&#x9;return account;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;return orgTweet;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getText() {&#xA;&#x9;&#x9;return tweetText;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return retweets;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="143" end="-89"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="312" charEnd="357" severity="1" problemCategory="80" problemType="67108974"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550751432552" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="52" errorCount="1" warningCount="2" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Tweet tweet1 = new Tweet(Nyvoll, &quot;Nå fungerer programmet&quot;);" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="1072" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="48" charStart="1097" charEnd="1103" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550751540333" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="52" errorCount="1" warningCount="2" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="account" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1097" end="-37"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="48" charStart="1097" charEnd="1104" severity="2" problemCategory="50" problemType="33554506"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550751721310" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="53" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Tweet(TwitterAccount account, String tweetText) {&#xA;&#x9;&#x9;this.account = account;&#xA;&#x9;&#x9;this.tweetText = tweetText;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet(TwitterAccount account, Tweet orgTweet) {&#xA;&#x9;&#x9;Tweet parentOrgTweet = orgTweet.getOriginalTweet(); &#xA;&#x9;&#x9;if (orgTweet.getOwner() == account || parentOrgTweet != null &amp;&amp; orgTweet.getOwner() == account) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Cannot retweet your own tweet&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.account = account;&#xA;&#x9;&#x9;this.tweetText = this.getOriginalTweet().getText();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;this.orgTweet = (parentOrgTweet != null ? parentOrgTweet : orgTweet); // Ternary operator&#xA;&#x9;&#x9;this.orgTweet.retweets++;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public TwitterAccount getOwner() {&#xA;&#x9;&#x9;return account;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;return orgTweet;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getText() {&#xA;&#x9;&#x9;return tweetText;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return retweets;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;TwitterAccount tw = new TwitterAccount();&#xA;&#x9;&#x9;Tweet tweet1 = new Tweet(tw" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="183" end="-37"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="49" charStart="1112" charEnd="1118" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550751983188" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="57" errorCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="itterAccount derp = new TwitterAccount();&#xA;&#x9;&#x9;Tweet tweet1 = new Tweet(tw, &quot;Nå fungerer programmet&quot;);&#xA;&#x9;&#x9;Tweet tweet2 = new Tweet(tw, &quot;Dette er min andre tweet&quot;);&#xA;&#x9;&#x9;derp.Tweet(tw, tweet1);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="1108" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="52" charStart="1275" charEnd="1280" severity="2" problemCategory="50" problemType="67108964"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550752092488" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="58" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(tweet1.getText());&#xA;&#x9;&#x9;System.out.println(tweet2.getOwner()" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1270" end="-14"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="49" charStart="1121" charEnd="1125" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550752761385" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="56" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(parentOrgTweet != null &amp;&amp; orgTweet.getOwner() == account)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Cannot retweet your own tweet&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.account = account;&#xA;&#x9;&#x9;this.orgTweet = (parentOrgTweet != null ? parentOrgTweet : orgTweet); // Ternary operator&#xA;&#x9;&#x9;this.orgTweet.retweets++;&#xA;&#x9;&#x9;this.tweetText = this.getOriginalTweet().getText();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public TwitterAccount getOwner() {&#xA;&#x9;&#x9;return account;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Tweet getOriginalTweet() {&#xA;&#x9;&#x9;return orgTweet;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getText() {&#xA;&#x9;&#x9;return tweetText;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return retweets;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="445" end="-346"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="47" charStart="1118" charEnd="1122" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550753412364" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="54" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1347" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="47" charStart="1118" charEnd="1122" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550753585667" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="54" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1352"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="47" charStart="1118" charEnd="1122" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550753697003" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="54" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="tw2" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1118" end="-231"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="47" charStart="1118" charEnd="1121" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550753922870" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="54" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot;Alfred&quot;);&#xA;&#x9;&#x9;TwitterAccount tw2 = new TwitterAccount(&quot;Roger&quot;" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="1098" end="-209"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="47" charStart="1126" charEnd="1129" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550754158712" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="54" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// Simple tweet&#xA;&#x9;public Tweet(TwitterAccount account, String tweetText) {&#xA;&#x9;&#x9;this.account = account;&#xA;&#x9;&#x9;this.tweetText = tweetText;&#xA;&#x9;}&#xA;&#x9;// Retweet of an existing tweet" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="174" end="-1074"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="47" charStart="1172" charEnd="1175" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550769832159" resourcePath="/ovinger/src/objectstructures/Tweet.java" sizeMeasure="53" warningCount="1" className="objectstructures.Tweet">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="1058" end="-352"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="46" charStart="1170" charEnd="1173" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672641095" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="10" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class TwitterAccount {&#xA;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550742283419" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="43" warningCount="5" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;import java.util.List;&#xA;&#xA;public class TwitterAccount {&#xA;&#x9;&#xA;&#x9;private String usrName;&#xA;&#x9;&#xA;//&#x9;private Collection&lt;TwitterAccount> follows = new ArrayList&lt;>();&#xA;//&#x9;private Collection&lt;TwitterAccount> followers = new ArrayList&lt;>();&#xA;//&#x9;&#xA;//&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;&#xA;&#x9;public void TwitterAccount(String name) {&#xA;&#x9;&#x9;this.usrName = name;&#xA;&#x9;}&#xA;//&#xA;//&#x9;public String getUserName() {&#xA;//&#x9;&#x9;return usrName;&#xA;//&#x9;}&#xA;//&#x9;&#xA;//&#x9;public void follow(TwitterAccount account) {&#xA;//&#x9;&#x9;if (this == account){&#xA;//&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Cannot follow yourself&quot;);&#xA;//&#x9;&#x9;}&#xA;//&#x9;&#x9;if (! follows.contains(account)) {&#xA;//&#x9;&#x9;&#x9;follows.add(account);&#xA;//&#x9;&#x9;&#x9;account.followers.add(this);&#xA;//&#x9;&#x9;}&#xA;//&#x9;}&#xA;//&#x9;&#xA;//&#x9;public void unfollow(TwitterAccount account) {&#xA;//&#x9;&#x9;if ()&#xA;//&#x9;}&#xA;//&#x9;&#xA;//&#x9;public static void main(String[] args) {&#xA;//&#x9;&#x9;// TODO Auto-generated method stub&#xA;//&#xA;//" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="27" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="16" charStart="378" charEnd="405" severity="1" problemCategory="80" problemType="67108974"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550752948640" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="43" warningCount="4" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="T" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="373" end="-546"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="156" charEnd="163" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550752985212" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="43" warningCount="4" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="account;&#xA;&#x9;&#xA;//&#x9;private Collection&lt;TwitterAccount> follows = new ArrayList&lt;>();&#xA;//&#x9;private Collection&lt;TwitterAccount> followers = new ArrayList&lt;>();&#xA;//&#x9;&#xA;//&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;this.account" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="156" end="-503"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="9" charStart="156" charEnd="163" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550752998745" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="43" warningCount="5" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void " edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="373" end="-547"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="91" charEnd="105" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550753861622" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="43" warningCount="4" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="T" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="373" end="-546"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="91" charEnd="105" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550754433912" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="49" warningCount="1" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private Collection&lt;TwitterAccount> follows = new ArrayList&lt;>();&#xA;&#x9;private Collection&lt;TwitterAccount> followers = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;private List&lt;Tweet> tweets = new ArrayList&lt;Tweet>();&#xA;&#x9;&#xA;&#x9;public TwitterAccount(String name) {&#xA;&#x9;&#x9;this.account = name;&#xA;&#x9;}&#xA;&#xA;&#x9;public String getUserName() {&#xA;&#x9;&#x9;return account;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void follow(TwitterAccount account) {&#xA;&#x9;&#x9;if (this == account){&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Cannot follow yourself&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (! follows.contains(account)) {&#xA;&#x9;&#x9;&#x9;follows.add(account);&#xA;&#x9;&#x9;&#x9;account.followers.add(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void unfollow(TwitterAccount account) {&#xA;&#x9;&#x9;if (! follows.contains(account)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;You do not follow this account&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (follows.contains(account) &amp;&amp; this != account) {&#xA;&#x9;&#x9;&#x9;follows.remove(account);&#xA;&#x9;&#x9;&#x9;account.followers.remove(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="167" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="14" charStart="322" charEnd="328" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550754841745" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="50" errorCount="1" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="follows.contains(account)) {&#xA;&#x9;&#x9;&#x9;follows.remove(account);&#xA;&#x9;&#x9;&#x9;account.followers.remove(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;if (follows.contains(this))" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="772" end="-93"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="42" charStart="955" charEnd="956" severity="2" problemCategory="20" problemType="1610612967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550755270524" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="68" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return followers.contains(account);&#xA;&#x9;&#x9;//Preferred syntax over the isFollowing(). &#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void tweet(String tweetText) {&#xA;&#x9;&#x9;tweets.add(new Tweet(this, tweetText));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void retweet(Tweet tweet) {&#xA;&#x9;&#x9;tweets.add(new Tweet(this, tweet));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="956" end="-90"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550755611902" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="77" errorCount="2" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public Tweet getTweet(int i) {&#xA;&#x9;&#x9;return tweets.get(tweets.size() - i);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTweetCount() {&#xA;&#x9;&#x9;return tweets.size();&#xA;&#x9;}&#xA;&#x9;public int getRetweetCount() {&#xA;&#x9;&#x9;return &#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.8/@edit" start="1310" end="-90"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="69" charStart="1477" charEnd="1483" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550758538484" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="81" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int counter = 0;&#xA;&#x9;&#x9;for (Tweet tweet: tweets) {&#xA;&#x9;&#x9;&#x9;counter += tweet.getRetweetCount(); &#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return counter;" edit="/1/@proposals.0/@proposals.1/@attempts.9/@edit" start="1477" end="-93"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550761845320" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="78" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return follows.contains(this)" edit="/1/@proposals.0/@proposals.1/@attempts.10/@edit" start="929" end="-685"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550762673159" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="82" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="TwitterAccount acc1 = new TwitterAccount(&quot;Kristoffer&quot;);&#xA;&#x9;&#x9;TwitterAccount acc2 = new TwitterAccount(&quot;Emil&quot;);&#xA;&#x9;&#x9;TwitterAccount acc3 = new TwitterAccount(&quot;Oscar&quot;);&#xA;&#x9;&#x9;acc2.follow(acc1);&#xA;&#x9;&#x9;acc1.follow(acc3);" edit="/1/@proposals.0/@proposals.1/@attempts.11/@edit" start="1600" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550762712405" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="83" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;System.out.println(acc3.getUserName());&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.12/@edit" start="1803" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550762786626" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="83" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Federico&quot;);&#xA;&#x9;&#x9;TwitterAccount acc3 = new TwitterAccount(&quot;Gleb" edit="/1/@proposals.0/@proposals.1/@attempts.13/@edit" start="1700" end="-96"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550762927444" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;acc1.unfollow(acc3);&#xA;&#x9;&#x9;acc1.tweet(&quot;Big ouf mkay&quot;);&#xA;&#x9;&#x9;System.out.println(acc1.getTweet(1));&#xA;" edit="/1/@proposals.0/@proposals.1/@attempts.14/@edit" start="1848" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550762940804" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0" edit="/1/@proposals.0/@proposals.1/@attempts.15/@edit" start="1936" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550762977350" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.1/@attempts.16/@edit" start="1936" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550763052648" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Count(" edit="/1/@proposals.0/@proposals.1/@attempts.17/@edit" start="1935" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550763086659" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;System.out.println(acc1.getTweet(0));" edit="/1/@proposals.0/@proposals.1/@attempts.18/@edit" start="1945" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550763107748" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//" edit="/1/@proposals.0/@proposals.1/@attempts.19/@edit" start="1947" end="-45"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550768704546" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="89" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (follows.contains(this)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false" edit="/1/@proposals.0/@proposals.1/@attempts.20/@edit" start="929" end="-1036"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550768721687" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return follows.contains(this)" edit="/1/@proposals.0/@proposals.1/@attempts.21/@edit" start="929" end="-1036"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550768796106" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//if (follows.contains(account)) {&#xA;&#x9;&#x9;&#x9;follows.remove(account);&#xA;&#x9;&#x9;&#x9;//account.followers.remove(this);&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.1/@attempts.22/@edit" start="768" end="-1128"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550769188080" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="account" edit="/1/@proposals.0/@proposals.1/@attempts.23/@edit" start="959" end="-1037"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550769203417" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this" edit="/1/@proposals.0/@proposals.1/@attempts.24/@edit" start="1057" end="-939"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550769215081" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="account" edit="/1/@proposals.0/@proposals.1/@attempts.25/@edit" start="1057" end="-939"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550769450718" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="91" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Collection&lt;TwitterAccount> getfollowedAccounts() {&#xA;&#x9;&#x9;return this.followers;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return follows.contains(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;return account.getfollowedAccounts().contains(this);&#xA;&#x9;&#x9;//" edit="/1/@proposals.0/@proposals.1/@attempts.26/@edit" start="887" end="-972"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550769527800" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="90" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (follows.contains(account)) {&#xA;&#x9;&#x9;&#x9;follows.remove(account);&#xA;&#x9;&#x9;&#x9;account.followers.remove(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;//&#x9;public Collection&lt;TwitterAccount> getfollowedAccounts() {&#xA;//&#x9;&#x9;return this.followers;&#xA;//&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowing(TwitterAccount account) {&#xA;&#x9;&#x9;return follows.contains(account);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isFollowedBy(TwitterAccount account) {&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.27/@edit" start="768" end="-972"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550769566981" resourcePath="/ovinger/src/objectstructures/TwitterAccount.java" sizeMeasure="86" className="objectstructures.TwitterAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.28/@edit" start="873" end="-1123"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550751721185" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550752092342" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nå fungerer programmet
objectstructures.TwitterAccount@6d00a15d
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550752764680" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nå fungerer programmet
objectstructures.TwitterAccount@6d00a15d
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550753040711" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nå fungerer programmet
objectstructures.TwitterAccount@6d00a15d
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550753922741" mode="run" className="objectstructures.Tweet">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Tweet</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Nå fungerer programmet
objectstructures.TwitterAccount@51efea79
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550758542376" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550762717203" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Oscar
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550762930984" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
objectstructures.Tweet@51efea79
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550762940692" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 1 out of bounds for length 1
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/objectstructures.TwitterAccount.getTweet(TwitterAccount.java:59)
	at ovinger/objectstructures.TwitterAccount.main(TwitterAccount.java:82)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550762977239" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
objectstructures.Tweet@6d00a15d
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550763052486" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550763086496" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
Exception in thread &quot;main&quot; java.lang.IndexOutOfBoundsException: Index 1 out of bounds for length 1
	at java.base/jdk.internal.util.Preconditions.outOfBounds(Preconditions.java:64)
	at java.base/jdk.internal.util.Preconditions.outOfBoundsCheckIndex(Preconditions.java:70)
	at java.base/jdk.internal.util.Preconditions.checkIndex(Preconditions.java:248)
	at java.base/java.util.Objects.checkIndex(Objects.java:372)
	at java.base/java.util.ArrayList.get(ArrayList.java:458)
	at ovinger/objectstructures.TwitterAccount.getTweet(TwitterAccount.java:59)
	at ovinger/objectstructures.TwitterAccount.main(TwitterAccount.java:83)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550763107635" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550763816765" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550763986143" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550766303318" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550766466125" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550769132951" mode="run" className="objectstructures.TwitterAccount">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.TwitterAccount</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Gleb
1
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550752167378" completion="0.0" testRunName="objectstructures.TweetTest" errorCount="4">
          <errorTests>testGetRetweetCount</errorTests>
          <errorTests>testGetOriginalTweet</errorTests>
          <errorTests>testConstructorNewTweet</errorTests>
          <errorTests>testConstructorRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550752773355" completion="0.0" testRunName="objectstructures.TweetTest" errorCount="4">
          <errorTests>testGetRetweetCount</errorTests>
          <errorTests>testGetOriginalTweet</errorTests>
          <errorTests>testConstructorNewTweet</errorTests>
          <errorTests>testConstructorRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550753418714" completion="0.0" testRunName="objectstructures.TweetTest" errorCount="4">
          <errorTests>testGetRetweetCount</errorTests>
          <errorTests>testGetOriginalTweet</errorTests>
          <errorTests>testConstructorNewTweet</errorTests>
          <errorTests>testConstructorRetweet</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550753872355" completion="1.0" testRunName="objectstructures.TweetTest" successCount="4">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550761858658" completion="1.0" testRunName="objectstructures.TweetTest" successCount="4">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550766283901" completion="1.0" testRunName="objectstructures.TweetTest" successCount="4">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550769580417" completion="1.0" testRunName="objectstructures.TweetTest" successCount="4">
          <successTests>testGetRetweetCount</successTests>
          <successTests>testGetOriginalTweet</successTests>
          <successTests>testConstructorNewTweet</successTests>
          <successTests>testConstructorRetweet</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550758559794" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550761864985" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550763822932" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550766487167" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550768710606" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550769193692" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550769208029" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550769220584" completion="0.8333333333333334" testRunName="objectstructures.TwitterAccountTest" successCount="5" failureCount="1">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550769457924" completion="0.6666666666666666" testRunName="objectstructures.TwitterAccountTest" successCount="4" failureCount="2">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
          <failureTests>testUnfollow</failureTests>
          <failureTests>testFollow</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550769532958" completion="1.0" testRunName="objectstructures.TwitterAccountTest" successCount="6">
          <successTests>testGetTweetIllegal</successTests>
          <successTests>testUnfollow</successTests>
          <successTests>testRetweet</successTests>
          <successTests>testFollow</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testNewTweet</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>

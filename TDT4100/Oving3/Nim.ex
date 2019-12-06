<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Nim">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Nim class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Nim"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Nim class, to test it."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="encapsulation.Nim"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Nim class, by running the NimTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.NimTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Using Eclipse">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548674244250" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="5" className="encapsulation.Nim">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Nim {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548675364802" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="32" errorCount="2" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private int pile1;&#xA;&#x9;private int pile2;&#xA;&#x9;private int pile3;&#xA;&#x9;&#xA;&#x9;public Nim(int pileSize) {&#xA;&#x9;&#x9;this.pile1 = pileSize;&#xA;&#x9;&#x9;this.pile2 = pileSize;&#xA;&#x9;&#x9;this.pile3 = pileSize;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void Nim() {&#xA;&#x9;&#x9;this.pile1 = 10;&#xA;&#x9;&#x9;this.pile2 = 10;&#xA;&#x9;&#x9;this.pile3 = 10;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;boolean isValid() {&#xA;&#x9;&#x9;if () {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (!isValid || number&lt;1) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Input er ugyldig&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="43" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="322" charEnd="323" severity="2" problemCategory="20" problemType="1610612967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548678139510" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="40" errorCount="1" warningCount="4" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="GameOver() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 1 &amp;&amp; (targetPile == 0 || targetPile == 1 || targetPile == 2)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (!isValidMove(number, targetPile)" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="307" end="-74"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="20" charStart="305" charEnd="317" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548680568266" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="40" errorCount="2" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (this.pile1 == )" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="322" end="-355"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="331" charEnd="336" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548685762843" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="36" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Arrays;&#xA;&#xA;public class Nim {&#xA;&#x9;private int[] piles; &#xA;&#x9;&#xA;&#x9;public Nim(int pileSize) {&#xA;&#x9;&#x9;piles = new int[] {pileSize, pileSize, pileSize};&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Nim() {&#xA;&#x9;&#x9;this(10);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;boolean isGameOver() {&#xA;&#x9;&#x9;return (piles[0]==0 || piles[1]==0 || piles[2]==0);" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="24" end="-355"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548686460187" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="48" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" &amp;&amp; !isGameOver()) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (!isValidMove(number, targetPile)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Input er ugyldig&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (isGameOver()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;The game is over, cannot remove pieces&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;piles[targetPile] -= number;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getPile(int targetPile) {&#xA;&#x9;&#x9;return piles[targetPile];&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;There are currently &quot; + piles[0] + &quot; pieces in pile 1. \n&quot;&#xA;&#x9;&#x9;&#x9;&#x9;+&quot;There are currently &quot; + piles[1] + &quot; pieces in pile 2. \n&quot;&#xA;&#x9;&#x9;&#x9;&#x9;+&quot;There are currently &quot; + piles[2] + &quot; pieces in pile 3.&quot;;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="422" end="-8"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548686854367" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="55" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Nim nim = new Nim(13);&#xA;&#x9;&#x9;System.out.println(nim.getPile(2));&#xA;&#x9;&#x9;nim.removePieces(4, 1);&#xA;&#x9;&#x9;System.out.println(nim.getPile(1));&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="1072" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548687081524" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="56" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(nim.toString());&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1244" end="-6"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548687101826" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="54" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="nim.removePieces(4, 1" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1143" end="-48"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548698667262" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="54" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public boolean isGameOver() {&#xA;&#x9;&#x9;return (piles[0]==0 || piles[1]==0 || piles[2]==0);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 1 &amp;&amp; (targetPile == 0 || targetPile == 1 || targetPile == 2) &amp;&amp; !isGameOver()) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (!isValidMove(number, targetPile)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Input er ugyldig&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (isGameOver()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;The game is over, cannot remove pieces&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;piles[targetPile] -= number;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="213" end="-431"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548698731568" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="54" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="piles[targetPile] >= number &amp;&amp; " edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="440" end="-800"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548698806540" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="54" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 1 &amp;&amp; (targetPile == 0 || targetPile == 1 || targetPile == 2) &amp;&amp; piles[targetPile] >= number &amp;&amp; !isGameOver()) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return false;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (!isValidMove(number, targetPile)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Input er ugyldig&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (isGameOver()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;The game is over, cannot remove pieces&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;piles[targetPile] -= number;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isGameOver() {&#xA;&#x9;&#x9;return (piles[0]==0 || piles[1]==0 || piles[2]==0)" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="230" end="-446"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548698916578" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="51" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return (number >= 1 &amp;&amp; (targetPile == 0 || targetPile == 1 || targetPile == 2) &amp;&amp; piles[targetPile] >= number &amp;&amp; (!isGameOver()))" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="272" end="-839"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548699015614" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="51" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//&#x9;public static void main(String[] args) {&#xA;//&#x9;&#x9;Nim nim = new Nim(13);&#xA;//&#x9;&#x9;nim.removePieces(4, 1);&#xA;//&#x9;&#x9;System.out.println(nim.toString());&#xA;//" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1102" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548699194218" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="51" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="isGameOver()) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;The game is over, cannot remove pieces&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (!isValidMove(number, targetPile)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Input er ugyldig" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="472" end="-583"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548699218435" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="51" warningCount="1" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Nim nim = new Nim(13);&#xA;&#x9;&#x9;nim.removePieces(4, 1);&#xA;&#x9;&#x9;System.out.println(nim.toString());&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="1102" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="3" charStart="31" charEnd="47" severity="1" problemCategory="120" problemType="268435844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1548699257703" resourcePath="/ovinger/src/encapsulation/Nim.java" sizeMeasure="49" className="encapsulation.Nim">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="24" end="-1189"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548686856931" mode="run" className="encapsulation.Nim">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Nim</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>13
9
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548687082879" mode="run" className="encapsulation.Nim">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Nim</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>13
9
There are currently 13 pieces in pile 1. 
There are currently 9 pieces in pile 2. 
There are currently 13 pieces in pile 3.
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548687103904" mode="run" className="encapsulation.Nim">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Nim</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>There are currently 13 pieces in pile 1. 
There are currently 9 pieces in pile 2. 
There are currently 13 pieces in pile 3.
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548698667182" mode="run" className="encapsulation.Nim">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Nim</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>There are currently 13 pieces in pile 1. 
There are currently 9 pieces in pile 2. 
There are currently 13 pieces in pile 3.
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1548699257644" mode="run" className="encapsulation.Nim">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>encapsulation.Nim</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>There are currently 13 pieces in pile 1. 
There are currently 9 pieces in pile 2. 
There are currently 13 pieces in pile 3.
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548687120161" completion="0.25" testRunName="encapsulation.NimTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548698407808" completion="0.25" testRunName="encapsulation.NimTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548698675230" completion="0.25" testRunName="encapsulation.NimTest" successCount="1" failureCount="3">
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
          <failureTests>testIsValidMove</failureTests>
          <failureTests>testRemovePieces</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548698732690" completion="0.75" testRunName="encapsulation.NimTest" successCount="3" failureCount="1">
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548698807955" completion="0.75" testRunName="encapsulation.NimTest" successCount="3" failureCount="1">
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548698917827" completion="0.75" testRunName="encapsulation.NimTest" successCount="3" failureCount="1">
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548699020607" completion="0.75" testRunName="encapsulation.NimTest" successCount="3" failureCount="1">
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
          <successTests>testConstructor</successTests>
          <failureTests>testGameOver</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548699195303" completion="1.0" testRunName="encapsulation.NimTest" successCount="4">
          <successTests>testGameOver</successTests>
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548699219488" completion="1.0" testRunName="encapsulation.NimTest" successCount="4">
          <successTests>testGameOver</successTests>
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1548699265593" completion="1.0" testRunName="encapsulation.NimTest" successCount="4">
          <successTests>testGameOver</successTests>
          <successTests>testIsValidMove</successTests>
          <successTests>testRemovePieces</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>

<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Partner">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Partner class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Partner"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Partner class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Partner"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PartnerTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.PartnerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Partner" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550158466990" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="5" className="objectstructures.Partner">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class Partner {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550160074557" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="7" errorCount="1" warningCount="1" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private final String name;&#xA;&#x9;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="51" end="-3"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="73" charEnd="77" severity="2" problemCategory="50" problemType="33554513"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550670999663" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="35" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String name;&#xA;&#x9;private Partner partner;&#xA;&#x9;&#xA;&#x9;public Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;public Partner getPartner() {&#xA;&#x9;&#x9;return partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner partner) {&#xA;&#x9;&#x9;// Cannot marry more than once in my world&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;Partner oldPartner = this.partner;&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;// divorce between this(the executable) and oldPartner&#xA;&#x9;&#x9;if (this.partner == null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// switcheroo bois&#xA;&#x9;&#x9;if (this.partner.getPartner() != null) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="60" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671105322" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="40" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return partner + &quot; is currently in a relationship with &quot; + partner.getPartner();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="257" end="-466"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671201724" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="40" warningCount="1" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="final String name;&#xA;&#x9;private Partner partner;&#xA;&#x9;&#xA;&#x9;public Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;public Partner getPartner() {&#xA;&#x9;&#x9;return partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return partner + &quot; is currently in a relationship with &quot; + partner.getPartner();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner partner) {&#xA;&#x9;&#x9;// Cannot marry more than once in my world&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;Partner oldPartner = this.partner;&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;// divorce between this(the executable) and oldPartner&#xA;&#x9;&#x9;if (oldP" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="60" end="-199"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="673" charEnd="683" severity="1" problemCategory="90" problemType="536871363"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671262664" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="40" warningCount="1" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="g" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="778" end="-67"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="673" charEnd="683" severity="1" problemCategory="90" problemType="536871363"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671717629" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="45" errorCount="1" warningCount="1" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;public Partner getPartner() {&#xA;&#x9;&#x9;return partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return partner + &quot; is currently in a relationship with &quot; + partner.getPartner();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner partner) {&#xA;&#x9;&#x9;// Cannot marry more than once in my world&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;Partner oldPartner = this.partner;&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;// divorce between this(the executable) and oldPartner&#xA;&#x9;&#x9;if (oldPartner == null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// switcheroo bois&#xA;&#x9;&#x9;if (this.getPartner() != null) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Partner partner = new Partner(&quot;Adolf&quot;);&#xA;&#x9;&#x9;Partner partner = new Partner(&quot;Ryggfrid&quot;);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="109" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="674" charEnd="684" severity="1" problemCategory="90" problemType="536871363"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671737518" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="45" errorCount="1" warningCount="1" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="109" end="-867"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="42" charStart="937" charEnd="944" severity="2" problemCategory="60" problemType="536870967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671760630" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="45" errorCount="1" warningCount="1" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="81" end="-894"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="42" charStart="936" charEnd="943" severity="2" problemCategory="60" problemType="536870967"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671847268" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="46" warningCount="2" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate Partner partner;&#xA;&#x9;&#xA;&#x9;public Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;public Partner getPartner() {&#xA;&#x9;&#x9;return partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return partner + &quot; is currently in a relationship with &quot; + partner.getPartner();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner partner) {&#xA;&#x9;&#x9;// Cannot marry more than once in my world&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;Partner oldPartner = this.partner;&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;// divorce between this(the executable) and oldPartner&#xA;&#x9;&#x9;if (oldPartner == null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// switcheroo bois&#xA;&#x9;&#x9;if (this.getPartner() != null) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Partner p1 = new Partner(&quot;Adolf&quot;);&#xA;&#x9;&#x9;Partner p2 = new Partner(&quot;Ryggfrid&quot;);&#xA;&#x9;&#x9;System.out.println(p2.getName());&#xA;&#x9;&#x9;System.out.println(p2.toString());" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="81" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="673" charEnd="683" severity="1" problemCategory="90" problemType="536871363"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671881280" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="46" warningCount="2" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//&#x9;@Override&#xA;//&#x9;public String toString() {&#xA;//&#x9;&#x9;return partner + &quot; is currently in a relationship with &quot; + partner.getPartner();&#xA;//&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner partner) {&#xA;&#x9;&#x9;// Cannot marry more than once in my world&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;Partner oldPartner = this.partner;&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;// divorce between this(the executable) and oldPartner&#xA;&#x9;&#x9;if (oldPartner == null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;// switcheroo bois&#xA;&#x9;&#x9;if (this.getPartner() != null) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Partner p1 = new Partner(&quot;Adolf&quot;);&#xA;&#x9;&#x9;Partner p2 = new Partner(&quot;Ryggfrid&quot;);&#xA;&#x9;&#x9;System.out.println(p2.getName());&#xA;//" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="262" end="-43"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="41" charStart="903" charEnd="905" severity="1" problemCategory="120" problemType="536870973"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671925738" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="47" warningCount="1" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;p1.setPartner(p2);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1046" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="32" charStart="681" charEnd="691" severity="1" problemCategory="90" problemType="536871363"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671965059" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="47" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="!" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="670" end="-401"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550671989798" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;p1.setPartner(null);&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1067" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672010034" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="719" end="-370"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672035525" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="oldP" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="719" end="-370"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672075238" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return partner + &quot; is currently in a relationship with &quot; + partner.getPartner();&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="262" end="-701"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672087322" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="996" end="-86"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672157642" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".getName() + &quot; is currently in a relationship with &quot; + partner.getPartner().getName" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="317" end="-703"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672298563" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" String.format(&quot;[%s and %s are currently in a relattionship]&quot;, name" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="310" end="-702"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672380246" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="48" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Partner %s and partner %s are currently in a relattionship]&quot;, name, (partner != null ? partner.name : null)" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="327" end="-702"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672407139" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="49" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(p1.toString());&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="1109" end="-27"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672421891" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="49" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="%s and" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="327" end="-824"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1550672432654" resourcePath="/ovinger/src/objectstructures/Partner.java" sizeMeasure="49" className="objectstructures.Partner">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="i" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="361" end="-794"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550671851123" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
Exception in thread &quot;main&quot; java.lang.NullPointerException
	at ovinger/objectstructures.Partner.toString(Partner.java:21)
	at ovinger/objectstructures.Partner.main(Partner.java:44)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550671885415" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550671925633" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
Exception in thread &quot;main&quot; java.lang.NullPointerException
	at ovinger/objectstructures.Partner.setPartner(Partner.java:32)
	at ovinger/objectstructures.Partner.main(Partner.java:45)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550671964929" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550671993730" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
Exception in thread &quot;main&quot; java.lang.NullPointerException
	at ovinger/objectstructures.Partner.setPartner(Partner.java:33)
	at ovinger/objectstructures.Partner.main(Partner.java:46)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672014193" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
Exception in thread &quot;main&quot; java.lang.NullPointerException
	at ovinger/objectstructures.Partner.setPartner(Partner.java:33)
	at ovinger/objectstructures.Partner.main(Partner.java:46)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672048308" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672078845" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672087210" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NullPointerException
	at ovinger/objectstructures.Partner.toString(Partner.java:21)
	at ovinger/objectstructures.Partner.main(Partner.java:44)
Ryggfrid
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672157526" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
Exception in thread &quot;main&quot; java.lang.NullPointerException
	at ovinger/objectstructures.Partner.toString(Partner.java:21)
	at ovinger/objectstructures.Partner.main(Partner.java:44)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672301464" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
Exception in thread &quot;main&quot; java.util.MissingFormatArgumentException: Format specifier '%s'
	at java.base/java.util.Formatter.format(Formatter.java:2672)
	at java.base/java.util.Formatter.format(Formatter.java:2609)
	at java.base/java.lang.String.format(String.java:2897)
	at ovinger/objectstructures.Partner.toString(Partner.java:21)
	at ovinger/objectstructures.Partner.main(Partner.java:44)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672382895" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
[Partner Ryggfrid and partner null are currently in a relattionship]
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672409818" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
[Partner Ryggfrid and partner null are currently in a relattionship]
[Partner Adolf and partner Ryggfrid are currently in a relattionship]
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672425493" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
[Ryggfrid and null are currently in a relattionship]
[Adolf and Ryggfrid are currently in a relattionship]
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1550672461548" mode="run" className="objectstructures.Partner">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>objectstructures.Partner</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>Ryggfrid
[Ryggfrid and null are currently in a relationship]
[Adolf and Ryggfrid are currently in a relationship]
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550671113990" completion="0.25" testRunName="objectstructures.PartnerTest" successCount="1" errorCount="3">
          <successTests>testConstructor</successTests>
          <errorTests>testPartner</errorTests>
          <errorTests>testDivorce</errorTests>
          <errorTests>testSwinger</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550671269348" completion="0.25" testRunName="objectstructures.PartnerTest" successCount="1" errorCount="3">
          <successTests>testConstructor</successTests>
          <errorTests>testPartner</errorTests>
          <errorTests>testDivorce</errorTests>
          <errorTests>testSwinger</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550671729868" completion="0.0" testRunName="objectstructures.PartnerTest" errorCount="4">
          <errorTests>testPartner</errorTests>
          <errorTests>testDivorce</errorTests>
          <errorTests>testConstructor</errorTests>
          <errorTests>testSwinger</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550671742315" completion="0.25" testRunName="objectstructures.PartnerTest" successCount="1" errorCount="3">
          <successTests>testConstructor</successTests>
          <errorTests>testPartner</errorTests>
          <errorTests>testDivorce</errorTests>
          <errorTests>testSwinger</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550671765525" completion="0.25" testRunName="objectstructures.PartnerTest" successCount="1" errorCount="3">
          <successTests>testConstructor</successTests>
          <errorTests>testPartner</errorTests>
          <errorTests>testDivorce</errorTests>
          <errorTests>testSwinger</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550671892165" completion="0.25" testRunName="objectstructures.PartnerTest" successCount="1" errorCount="3">
          <successTests>testConstructor</successTests>
          <errorTests>testPartner</errorTests>
          <errorTests>testDivorce</errorTests>
          <errorTests>testSwinger</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550671971435" completion="0.5" testRunName="objectstructures.PartnerTest" successCount="2" errorCount="2">
          <successTests>testPartner</successTests>
          <successTests>testConstructor</successTests>
          <errorTests>testDivorce</errorTests>
          <errorTests>testSwinger</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550672054958" completion="1.0" testRunName="objectstructures.PartnerTest" successCount="4">
          <successTests>testPartner</successTests>
          <successTests>testDivorce</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testSwinger</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1550672467519" completion="1.0" testRunName="objectstructures.PartnerTest" successCount="4">
          <successTests>testPartner</successTests>
          <successTests>testDivorce</successTests>
          <successTests>testConstructor</successTests>
          <successTests>testSwinger</successTests>
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

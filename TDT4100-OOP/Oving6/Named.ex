<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Named interface">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Named interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Named"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Person1 and Person2">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Person1 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Person1"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Person2 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Person2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Person1 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.Person1"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Person2 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.Person2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Person1Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.Person1Test"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Person2Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.Person2Test"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="NamedComparator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the NamedComparator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.NamedComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the NamedComparator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.NamedComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the NamedComparatorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.NamedComparatorTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the Person classes."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.Person*" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the NamedComparator class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.Named*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551350183489" resourcePath="/ovinger/src/interfaces/Named.java" sizeMeasure="5" className="interfaces.Named">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public interface Named {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551350552172" resourcePath="/ovinger/src/interfaces/Named.java" sizeMeasure="13" className="interfaces.Named">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public String setGivenName(String name);&#xA;&#x9;String getGivenName();&#xA;&#x9;&#xA;&#x9;public String setFamilyName(String famName);&#xA;&#x9;String getFamilyName();&#xA;&#x9;&#xA;&#x9;public String setFullName(String fullName);&#xA;&#x9;String getFullName();" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="46" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551352669474" resourcePath="/ovinger/src/interfaces/Named.java" sizeMeasure="13" className="interfaces.Named">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="56" end="-198"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551352690844" resourcePath="/ovinger/src/interfaces/Named.java" sizeMeasure="13" className="interfaces.Named">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="56" end="-198"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551352810368" resourcePath="/ovinger/src/interfaces/Named.java" sizeMeasure="13" className="interfaces.Named">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="n" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="152" end="-104"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551352815442" resourcePath="/ovinger/src/interfaces/Named.java" sizeMeasure="13" className="interfaces.Named">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="n" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="220" end="-32"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551352884264" resourcePath="/ovinger/src/interfaces/Named.java" sizeMeasure="13" className="interfaces.Named">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void setGivenName(String name);&#xA;&#x9;public String getGivenName();&#xA;&#x9;&#xA;&#x9;public void setFamilyName(String name);&#xA;&#x9;public String getFamilyName();&#xA;&#x9;&#xA;&#x9;public void setFullName(String name);&#xA;&#x9;public " edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="56" end="-25"/>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551350691398" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="5" className="interfaces.Person1">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class Person1 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551350798201" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="43" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Named{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setGivenName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#x9;&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFamilyName(String famName) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFullName(String fullName) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="42" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551352821847" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="47" warningCount="1" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private String givenName;&#xA;&#x9;private String familyName;&#xA;&#xA;&#x9;public void Person1(String givenName, String familyName) {&#xA;&#x9;&#x9;this.givenName = givenName;&#xA;&#x9;&#x9;this.familyName = familyName;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public String setGivenName(String givenName) {&#xA;&#x9;&#x9;return this.givenName;&#xA;&#x9;}&#xA;&#x9;&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;return givenName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFamilyName(String name) {&#xA;&#x9;&#x9;return this.familyName" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="60" end="-321"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="131" charEnd="175" severity="1" problemCategory="80" problemType="67108974"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551352828625" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="47" errorCount="1" warningCount="2" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="n" edit="/1/@proposals.1/@proposals.0/@attempts.2/@edit" start="469" end="-324"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="25" charStart="469" charEnd="473" severity="2" problemCategory="50" problemType="33554502"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551353411728" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="46" warningCount="1" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void setGivenName(String name) {&#xA;&#x9;&#x9;this.givenName = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;return givenName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFamilyName(String name) {&#xA;&#x9;&#x9;this.familyName = name;&#xA;&#x9;}&#xA;&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;return familyName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFullName(String fullName) {&#xA;&#x9;&#x9;int index = fullName.indexOf(' ');&#xA;&#x9;&#x9;this.givenName = fullName.substring(0, index);&#xA;&#x9;&#x9;this.familyName = fullName.substring(index);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;return this.givenName + this.familyName" edit="/1/@proposals.1/@proposals.0/@attempts.3/@edit" start="262" end="-9"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="8" charStart="131" charEnd="175" severity="1" problemCategory="80" problemType="67108974"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551353427692" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="46" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="P" edit="/1/@proposals.1/@proposals.0/@attempts.4/@edit" start="126" end="-698"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551357406034" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="46" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this." edit="/1/@proposals.1/@proposals.0/@attempts.5/@edit" start="373" end="-452"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551357448167" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="46" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this." edit="/1/@proposals.1/@proposals.0/@attempts.6/@edit" start="530" end="-300"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551357535684" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="46" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + 1" edit="/1/@proposals.1/@proposals.0/@attempts.7/@edit" start="736" end="-99"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551357689295" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="46" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="givenName) {&#xA;&#x9;&#x9;this.givenName = givenN" edit="/1/@proposals.1/@proposals.0/@attempts.8/@edit" start="282" end="-529"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551357964314" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="46" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="familyName) {&#xA;&#x9;&#x9;this.familyName = familyN" edit="/1/@proposals.1/@proposals.0/@attempts.9/@edit" start="448" end="-372"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551358073038" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="45" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String givenName," edit="/1/@proposals.1/@proposals.0/@attempts.10/@edit" start="63" end="-757"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551358178653" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="45" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//&#x9;&#x9;int index = fullName.indexOf(' ');&#xA;//&#x9;&#x9;this.givenName = fullName.substring(0, index);&#xA;//" edit="/1/@proposals.1/@proposals.0/@attempts.11/@edit" start="604" end="-147"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551358252215" resourcePath="/ovinger/src/interfaces/Person1.java" sizeMeasure="45" className="interfaces.Person1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot; &quot; +" edit="/1/@proposals.1/@proposals.0/@attempts.12/@edit" start="818" end="-25"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551353716577" resourcePath="/ovinger/src/interfaces/Person2.java" sizeMeasure="5" className="interfaces.Person2">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class Person2 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551353765588" resourcePath="/ovinger/src/interfaces/Person2.java" sizeMeasure="41" className="interfaces.Person2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Named{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setGivenName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFamilyName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFullName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.1/@attempts.0/@edit" start="42" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551354710669" resourcePath="/ovinger/src/interfaces/Person2.java" sizeMeasure="43" warningCount="1" className="interfaces.Person2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private String fullName;&#xA;" edit="/1/@proposals.1/@proposals.1/@attempts.1/@edit" start="60" end="-589"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="78" charEnd="86" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551357284942" resourcePath="/ovinger/src/interfaces/Person2.java" sizeMeasure="41" className="interfaces.Person2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public Person2(String fullName) {&#xA;&#x9;&#x9;this.fullName = fullName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setGivenName(String name) {&#xA;&#x9;&#x9;this.fullName = name + &quot; &quot; + getFamilyName();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;return fullName.substring(0, this.fullName.indexOf(&quot; &quot;));&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFamilyName(String name) {&#xA;&#x9;&#x9;this.fullName = this.getGivenName() + &quot; &quot; + name;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;return this.fullName.substring(this.fullName.indexOf(&quot; &quot;) + 1);&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFullName(String name) {&#xA;&#x9;&#x9;this.fullName = name;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;return this.fullName" edit="/1/@proposals.1/@proposals.1/@attempts.2/@edit" start="88" end="-9"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551354711437" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551357300784" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551357421432" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551357454413" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551357544841" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551357987105" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551358078544" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551358186894" completion="0.0" testRunName="interfaces.Person1Test" failureCount="1">
          <failureTests>testPerson1</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551358257040" completion="1.0" testRunName="interfaces.Person1Test" successCount="1">
          <successTests>testPerson1</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551357295759" completion="1.0" testRunName="interfaces.Person2Test" successCount="1">
          <successTests>testPerson2</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1551358295807" completion="1.0" testRunName="interfaces.Person2Test" successCount="1">
          <successTests>testPerson2</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551359489272" resourcePath="/ovinger/src/interfaces/NamedComparator.java" sizeMeasure="5" className="interfaces.NamedComparator">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class NamedComparator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1551360628762" resourcePath="/ovinger/src/interfaces/NamedComparator.java" sizeMeasure="16" className="interfaces.NamedComparator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class NamedComparator implements Comparator&lt;Named>{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compare(Named o1, Named o2) {&#xA;&#x9;&#x9;int difference = o1.getFamilyName().compareTo(o2.getFamilyName());&#xA;&#x9;&#x9;if (difference == 0) {&#xA;&#x9;&#x9;&#x9;difference = o1.getGivenName().compareTo(o2.getGivenName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return difference;&#xA;&#x9;} " edit="/1/@proposals.2/@proposals.0/@attempts.0/@edit" start="21" end="-5"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.3">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.3/@tasks.0/@q" answer="/0/@parts.3/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.3/@tasks.1/@q" answer="/0/@parts.3/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.2/@q" answer="/0/@parts.3/@tasks.2/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551211553335" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344885096" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344892149" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344893900" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344963147" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344966561" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344969261" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344970112" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344970750" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344972294" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344972819" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344973267" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344974398" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344974985" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344975487" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344975903" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.3/@q" answer="/0/@parts.3/@tasks.3/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344877470" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.3/@tasks.4/@q" answer="/0/@parts.3/@tasks.4/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551211834574" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551211869389" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551211889700" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551214555158" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551215341460" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551215723615" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551217055219" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551218161233" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551344799390" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1551344900046" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>

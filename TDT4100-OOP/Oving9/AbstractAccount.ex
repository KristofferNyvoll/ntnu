<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="AbstractAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the abstract AbstractAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.AbstractAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the DebitAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the DebitAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CreditAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CreditAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount2 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount2 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the DebitAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.DebitAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CreditAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CreditAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount2Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccount2Test"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Account*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553689742894" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="5" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public abstract class AbstractAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553690758793" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="24" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;protected double balance;&#xA;&#x9;&#xA;&#x9;public void deposit(double amount) {&#xA;&#x9;&#x9;if (amount >= 0) {this.balance += amount;}&#xA;&#x9;&#x9;else {throw new IllegalArgumentException(&quot;Deposit must be positive&quot;); }&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void withdraw(double amount) {&#xA;&#x9;&#x9;if (amount >= 0) {internalWithdraw(amount);}&#xA;&#x9;&#x9;else {throw new IllegalArgumentException(&quot;Withdraw must be positive&quot;); }&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public AbstractAccount() {balance = 0;}&#xA;&#x9;&#xA;&#x9;protected abstract void internalWithdraw(double amount);&#xA;&#x9;&#xA;&#x9;public double getBalance() {return balance;}&#xA;&#x9;&#xA;&#x9;&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="63" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553690787694" resourcePath="/ovinger/src/inheritance/AbstractAccount.java" sizeMeasure="22" className="inheritance.AbstractAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="569" end="-2"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553690804368" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="5" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class DebitAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553690958947" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="12" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#xA;&#x9;@Override&#xA;&#x9;protected void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if (amount > getBalance()) {throw new IllegalArgumentException(&quot;Cannot withdraw more than you have&quot;);}&#xA;&#x9;&#x9;super.balance -= amount;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="48" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553698535646" resourcePath="/ovinger/src/inheritance/DebitAccount.java" sizeMeasure="12" className="inheritance.DebitAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="State" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="182" end="-86"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553691008245" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="5" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CreditAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553693964195" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="29" errorCount="1" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;private double creditLine;&#xA;&#x9;&#xA;&#x9;public CreditAccount(double creditLine) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;protected void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if (balance - amount > - creditLine) {balance -= amount;}&#xA;&#x9;&#x9;else {throw new IllegalStateException(&quot;Not enough available credits&quot;)}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;if ((creditLine &lt; 0) || (balance &lt; 0 &amp;&amp; balance &lt;= -creditLine)) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Insufficient creditline&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getCreditLine() {return this.creditLine;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="49" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="15" charStart="387" charEnd="388" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553694153983" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="29" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="388" end="-297"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553698462591" resourcePath="/ovinger/src/inheritance/CreditAccount.java" sizeMeasure="28" className="inheritance.CreditAccount">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="creditLine &lt; 0) {throw new IllegalArgumentException(&quot;Invalid creditline. Must be positive&quot;);}&#xA;&#x9;&#x9;if (balance &lt; 0 &amp;&amp; balance &lt;= -creditLine) {throw new IllegalStateException(&quot;Insufficient creditline&quot;);" edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="453" end="-102"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553693996222" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="5" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount2 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553697915408" resourcePath="/ovinger/src/inheritance/SavingsAccount2.java" sizeMeasure="24" className="inheritance.SavingsAccount2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;private int withdrawals;&#xA;&#x9;private double fee;&#xA;&#xA;&#x9;@Override&#xA;&#x9;protected void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if (amount > balance) {throw new IllegalStateException(&quot;Not enough money&quot;);}&#xA;&#x9;&#x9;if (withdrawals > 0) {balance -= amount; withdrawals -= 1;}&#xA;&#x9;&#x9;else if (balance >= (amount + fee)) {balance -= (amount +fee);}&#xA;&#x9;&#x9;else {throw new IllegalStateException(&quot;No withdrawals remaining&quot;);}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int withdrawals, double fee) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.withdrawals = withdrawals;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="51" end="-5"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553698472044" completion="0.5" testRunName="inheritance.DebitAccountTest" successCount="1" failureCount="1">
          <successTests>testDeposit</successTests>
          <failureTests>testWithdraw</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553698538721" completion="1.0" testRunName="inheritance.DebitAccountTest" successCount="2">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553697931027" completion="0.6666666666666666" testRunName="inheritance.CreditAccountTest" successCount="2" failureCount="1">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testSetCreditLine</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553698466629" completion="1.0" testRunName="inheritance.CreditAccountTest" successCount="3">
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <successTests>testSetCreditLine</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
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
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344877470" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
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

<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Train">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the TrainCar superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.TrainCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the TrainCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.TrainCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CargoCar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CargoCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CargoCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CargoCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the PassengerCar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.PassengerCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the PassengerCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.PassengerCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the Train class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.Train"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Train class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.Train"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TrainCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.TrainCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PassengerCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.PassengerCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CargoCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CargoCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TrainTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.TrainTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in *Car classes."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Car" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the Train class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.Train" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611151880" resourcePath="/ovinger/src/inheritance/TrainCar.java" sizeMeasure="24" className="inheritance.TrainCar">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class TrainCar {&#xA;&#x9;&#xA;&#x9;public int weight; &#xA;&#x9;public int deadWeight;&#xA;&#x9;public int cargo;&#xA;&#x9;&#xA;&#x9;public TrainCar(int kg) {&#xA;&#x9;&#x9;this.weight = kg;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight() {&#xA;&#x9;&#x9;return this.weight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setDeadWeight(int dWeight) {&#xA;&#x9;&#x9;this.deadWeight = dWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getDeadWeight() {&#xA;&#x9;&#x9;return this.deadWeight;&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611255585" resourcePath="/ovinger/src/inheritance/TrainCar.java" sizeMeasure="23" className="inheritance.TrainCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="94" end="-248"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611443395" resourcePath="/ovinger/src/inheritance/TrainCar.java" sizeMeasure="22" className="inheritance.TrainCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="rivate int deadWeight;&#xA;&#x9;&#xA;&#x9;public TrainCar(int kg) {&#xA;&#x9;&#x9;this.deadWeight = kg;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight() {&#xA;&#x9;&#x9;return this.deadW" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="50" end="-150"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611583038" resourcePath="/ovinger/src/inheritance/TrainCar.java" sizeMeasure="22" className="inheritance.TrainCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ublic" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="50" end="-275"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553630910020" resourcePath="/ovinger/src/inheritance/TrainCar.java" sizeMeasure="28" className="inheritance.TrainCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;protected String getCarType() {return &quot;TrainCar&quot;;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;This &quot; + getCarType() + &quot; weighs &quot; + getTotalWeight() + &quot; kg.&quot;;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="327" end="-3"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611275548" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="21" className="inheritance.CargoCar">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CargoCar extends TrainCar{&#xA;&#x9;&#xA;&#x9;public int cargo;&#xA;&#x9;&#xA;&#x9;public CargoCar(int kg, int carg) {&#xA;&#x9;&#x9;super(kg);&#xA;&#x9;&#x9;this.weight = kg;&#xA;&#x9;&#x9;this.cargo = carg;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() {&#xA;&#x9;&#x9;return this.cargo;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setCargoWeight(int newCargo) {&#xA;&#x9;&#x9;this.cargo = newCargo;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611661916" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="21" className="inheritance.CargoCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="super.deadW" edit="/1/@proposals.0/@proposals.2/@attempts.0/@edit" start="137" end="-171"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611774942" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="20" className="inheritance.CargoCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="deadWeight, int carg) {&#xA;&#x9;&#x9;super(deadWeight)" edit="/1/@proposals.0/@proposals.2/@attempts.1/@edit" start="106" end="-161"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553611835281" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="20" className="inheritance.CargoCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="c" edit="/1/@proposals.0/@proposals.2/@attempts.2/@edit" start="217" end="-87"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553613113779" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="24" className="inheritance.CargoCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;@Override&#xA;&#x9;public int getTotalWeight(){&#xA;&#x9;&#x9;return super.getTotalWeight() + cargo;&#xA;}&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.3/@edit" start="302" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553630746738" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="26" className="inheritance.CargoCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;protected String getCarType() {return &quot;CargoCar&quot;;}&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.4/@edit" start="301" end="-88"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553631278432" resourcePath="/ovinger/src/inheritance/CargoCar.java" sizeMeasure="30" className="inheritance.CargoCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return super.toString() + &quot; and has &quot; + getCargoWeight() + &quot; kg of cargo.&quot;;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.2/@attempts.5/@edit" start="355" end="-88"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553613121474" resourcePath="/ovinger/src/inheritance/PassengerCar.java" sizeMeasure="7" warningCount="1" className="inheritance.PassengerCar">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class PassengerCar {&#xA;&#xA;&#x9;private final int personWeight = 80; &#xA;&#x9;&#xA;}&#xA;"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="70" charEnd="82" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553613881219" resourcePath="/ovinger/src/inheritance/PassengerCar.java" sizeMeasure="20" warningCount="1" className="inheritance.PassengerCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends TrainCar{&#xA;&#xA;&#x9;private final int personWeight = 80; &#xA;&#x9;private int passengers;&#xA;&#x9;&#xA;&#x9;public PassengerCar(int deadWeight, int numPass) {&#xA;&#x9;&#x9;super(deadWeight);&#xA;&#x9;&#x9;this.passengers = numPass;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPassengerCount() {&#xA;&#x9;&#x9;return this.passengers;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPassengerCount(int newNum) {&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.4/@attempts.0/@edit" start="48" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="86" charEnd="98" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553613893507" resourcePath="/ovinger/src/inheritance/PassengerCar.java" sizeMeasure="20" warningCount="1" className="inheritance.PassengerCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.passengers = newNum;" edit="/1/@proposals.0/@proposals.4/@attempts.1/@edit" start="352" end="-7"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="5" charStart="86" charEnd="98" severity="1" problemCategory="120" problemType="570425421"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553614040094" resourcePath="/ovinger/src/inheritance/PassengerCar.java" sizeMeasure="25" className="inheritance.PassengerCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int getTotalWeight(){&#xA;&#x9;&#x9;return super.getTotalWeight() + (this.getPassengerCount() * personWeight);&#xA;}&#xA;" edit="/1/@proposals.0/@proposals.4/@attempts.2/@edit" start="381" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553631335072" resourcePath="/ovinger/src/inheritance/PassengerCar.java" sizeMeasure="31" className="inheritance.PassengerCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="protected String getCarType() {return &quot;CargoCar&quot;;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return super.toString() + &quot; and has &quot; + getPassengerCount() + &quot; passengers.&quot;;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.4/@attempts.3/@edit" start="384" end="-122"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553631444111" resourcePath="/ovinger/src/inheritance/PassengerCar.java" sizeMeasure="31" className="inheritance.PassengerCar">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Passenger" edit="/1/@proposals.0/@proposals.4/@attempts.4/@edit" start="423" end="-245"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553614421681" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="5" className="inheritance.Train">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class Train {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553616291514" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="21" errorCount="1" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Collection;&#xA;&#xA;public class Train {&#xA;&#x9;private Collection&lt;TrainCar> trainCars;&#xA;&#x9;&#xA;&#x9;public Train() {&#xA;&#x9;&#x9;trainCars = new ArrayList&lt;TrainCar>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean contains(TrainCar trainCar) {&#xA;&#x9;&#x9;return trainCars.contains(trainCar);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight() {&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.6/@attempts.0/@edit" start="22" end="-5"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="17" charStart="310" charEnd="326" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553630137717" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="44" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int total = 0;&#xA;&#x9;&#x9;for (TrainCar unit : trainCars) {&#xA;&#x9;&#x9;&#x9;total += unit.getTotalWeight();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return total;&#xA;&#x9;}&#xA;&#x9;public int getPassengerCount() {&#xA;&#x9;&#x9;int num = 0;&#xA;&#x9;&#x9;for (TrainCar wagon : trainCars) {&#xA;&#x9;&#x9;&#x9;if (wagon instanceof PassengerCar) {&#xA;&#x9;&#x9;&#x9;&#x9;num += ((PassengerCar) wagon).getPassengerCount() ;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return num;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() {&#xA;&#x9;&#x9;int carg = 0;&#xA;&#x9;&#x9;for (TrainCar wagon: trainCars) {&#xA;&#x9;&#x9;&#x9;if (wagon instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;&#x9;carg += ((CargoCar) wagon).getCargoWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return carg;" edit="/1/@proposals.0/@proposals.6/@attempts.1/@edit" start="331" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553630325439" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="49" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;private Collection&lt;TrainCar> trainCars;&#xA;&#x9;&#xA;&#x9;public Train() {&#xA;&#x9;&#x9;trainCars = new ArrayList&lt;TrainCar>();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean contains(TrainCar trainCar) {&#xA;&#x9;&#x9;return trainCars.contains(trainCar);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addTrainCar(TrainCar trainCar) {&#xA;&#x9;&#x9;trainCars.add" edit="/1/@proposals.0/@proposals.6/@attempts.2/@edit" start="102" end="-568"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553630598108" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="65" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;String result = &quot;&quot;;&#xA;&#x9;&#x9;for (TrainCar wagon: trainCars) {&#xA;&#x9;&#x9;&#x9;result += wagon.toString() + &quot;\n&quot;;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Train train = new Train();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;train.addTrainCar(new CargoCar(15000, 40000));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;train.toString();&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.6/@attempts.3/@edit" start="925" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553630627733" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="66" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;" edit="/1/@proposals.0/@proposals.6/@attempts.4/@edit" start="928" end="-302"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553631379076" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="67" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="train.addTrainCar(new PassengerCar(1200, 420));&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.6/@attempts.5/@edit" start="1213" end="-28"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553631399202" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="67" errorCount="1" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(;train.toString()" edit="/1/@proposals.0/@proposals.6/@attempts.6/@edit" start="1266" end="-10"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="64" charStart="1285" charEnd="1286" severity="2" problemCategory="20" problemType="1610612968"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553631402128" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="67" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="t" edit="/1/@proposals.0/@proposals.6/@attempts.7/@edit" start="1285" end="-25"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553631382716" mode="run" className="inheritance.Train">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.Train</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553631405685" mode="run" className="inheritance.Train">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.Train</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>This CargoCar weighs 55000 kg. and has 40000 kg of cargo.
This CargoCar weighs 34800 kg. and has 420 passengers.

</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553631463142" mode="run" className="inheritance.Train">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>inheritance.Train</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>This CargoCar weighs 55000 kg. and has 40000 kg of cargo.
This PassengerCar weighs 34800 kg. and has 420 passengers.

</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553611079114" completion="0.0" testRunName="inheritance.TrainCarTest" errorCount="1">
          <errorTests>testCheckWeight</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553611157422" completion="0.0" testRunName="inheritance.TrainCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553611447797" completion="1.0" testRunName="inheritance.TrainCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553631494088" completion="1.0" testRunName="inheritance.TrainCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553614051390" completion="1.0" testRunName="inheritance.PassengerCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553631500400" completion="1.0" testRunName="inheritance.PassengerCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.10/@q" answer="/0/@parts.0/@tasks.10/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553611793015" completion="0.0" testRunName="inheritance.CargoCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553611838803" completion="0.0" testRunName="inheritance.CargoCarTest" failureCount="1">
          <failureTests>testCheckWeight</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553613122670" completion="1.0" testRunName="inheritance.CargoCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553631507316" completion="1.0" testRunName="inheritance.CargoCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.11/@q" answer="/0/@parts.0/@tasks.11/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553630191833" completion="0.0" testRunName="inheritance.TrainTest" errorCount="4">
          <errorTests>testCheckTotalTrainWeight</errorTests>
          <errorTests>testCheckCargoWeight</errorTests>
          <errorTests>testCheckPassengerCount</errorTests>
          <errorTests>testAddCarToTrain</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553630330217" completion="1.0" testRunName="inheritance.TrainTest" successCount="4">
          <successTests>testCheckTotalTrainWeight</successTests>
          <successTests>testCheckCargoWeight</successTests>
          <successTests>testCheckPassengerCount</successTests>
          <successTests>testAddCarToTrain</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553631489477" completion="1.0" testRunName="inheritance.TrainTest" successCount="4">
          <successTests>testCheckTotalTrainWeight</successTests>
          <successTests>testCheckCargoWeight</successTests>
          <successTests>testCheckPassengerCount</successTests>
          <successTests>testAddCarToTrain</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
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
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344877470" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a">
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

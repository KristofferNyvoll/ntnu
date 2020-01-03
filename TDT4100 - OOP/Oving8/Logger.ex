<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Logger">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the ILogger Interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.ILogger"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Implementations">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StreamLogger Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.StreamLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StreamLogger class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.StreamLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StreamLogger JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.StreamLoggerTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the FilteringLogger Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.FilteringLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the FilteringLogger class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.FilteringLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the FilteringLogger JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.FilteringLoggerTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the DistributingLogger Class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.delegation.DistributingLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the DistributingLogger class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.delegation.DistributingLogger"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the DistributingLogger JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.delegation.DistributingLoggerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.delegation.*Logger" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552906528431" resourcePath="/ovinger/src/patterns/delegation/ILogger.java" sizeMeasure="5" className="patterns.delegation.ILogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public interface ILogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552906650280" resourcePath="/ovinger/src/patterns/delegation/ILogger.java" sizeMeasure="6" className="patterns.delegation.ILogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public String ERROR = &quot;error&quot;, WARNING = &quot;warning&quot;, INFO = &quot;info&quot;;&#xA;&#x9;public void log(String severity, String message, Exception exception);" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="57" end="-4"/>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552906497595" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="5" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public class StreamLogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552907742363" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="27" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.io.OutputStream;&#xA;import java.io.PrintStream;&#xA;&#xA;public class StreamLogger implements ILogger{&#xA;&#xA;&#x9;private PrintStream stream;&#xA;&#x9;private String formatString = &quot;%s: %s (%s)&quot;;&#xA;&#xA;&#x9;public StreamLogger(OutputStream stream) {&#xA;&#x9;&#x9;super();&#xA;&#x9;&#x9;this.stream = new PrintStream(stream);&#xA;&#x9;}&#xA;&#xA;&#x9;public void setFormatString(String logFormat) {&#xA;&#x9;&#x9;this.formatString = logFormat;&#xA;}&#xA;&#x9;@Override&#xA;&#x9;public void log(String severity, String message, Exception exception) {&#xA;&#x9;&#x9;stream.format(formatString, severity, message, exception);&#xA;&#x9;&#x9;stream.println();&#xA;&#x9;&#x9;stream.flush();&#xA;&#x9;}&#xA;&#xA;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="30" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552993078498" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="25" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="580" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553164149298" resourcePath="/ovinger/src/patterns/delegation/StreamLogger.java" sizeMeasure="27" className="patterns.delegation.StreamLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// Apply the formatting&#xA;&#x9;&#x9;this.formatString = logFormat;&#xA;}&#xA;&#x9;@Override&#xA;&#x9;public void log(String severity, String message, Exception exception) {&#xA;&#x9;&#x9;// Format the three last args as given by &quot;logFormat&quot;" edit="/1/@proposals.1/@proposals.0/@attempts.2/@edit" start="362" end="-107"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1552909103303" completion="1.0" testRunName="patterns.delegation.StreamLoggerTest" successCount="3">
          <successTests>testLog</successTests>
          <successTests>testLogException</successTests>
          <successTests>testLogWithFormat</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553025076961" completion="1.0" testRunName="patterns.delegation.StreamLoggerTest" successCount="3">
          <successTests>testLog</successTests>
          <successTests>testLogException</successTests>
          <successTests>testLogWithFormat</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553034781707" completion="1.0" testRunName="patterns.delegation.StreamLoggerTest" successCount="3">
          <successTests>testLog</successTests>
          <successTests>testLogException</successTests>
          <successTests>testLogWithFormat</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553091065879" completion="1.0" testRunName="patterns.delegation.StreamLoggerTest" successCount="3">
          <successTests>testLog</successTests>
          <successTests>testLogException</successTests>
          <successTests>testLogWithFormat</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553162509405" completion="1.0" testRunName="patterns.delegation.StreamLoggerTest" successCount="3">
          <successTests>testLog</successTests>
          <successTests>testLogException</successTests>
          <successTests>testLogWithFormat</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552909252165" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="5" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public class FilteringLogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552923395848" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="12" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements ILogger{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void log(String severity, String message, Exception exception) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;&#x9;" edit="/1/@proposals.1/@proposals.3/@attempts.0/@edit" start="59" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552923905489" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="15" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public FilteringLogger(ILogger logger, String severities) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.1/@proposals.3/@attempts.1/@edit" start="81" end="-132"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552925519800" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="27" errorCount="1" warningCount="2" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.Arrays;&#xA;import java.util.Collection;&#xA;&#xA;public class FilteringLogger implements ILogger{&#xA;&#x9;private final Collection&lt;String> severities;&#xA;&#x9;private ILogger logger;&#xA;&#xA;&#x9;public FilteringLogger(ILogger logger, String... severities) {&#xA;&#x9;&#x9;this.severities = new ArrayList&lt;String>(Arrays.asList(severities));&#xA;&#x9;&#x9;this.logger = logger;&#xA;&#x9;}&#xA;&#x9;public boolean isLogging(String severities) {&#xA;&#x9;&#x9;return severities.contains(severities);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public " edit="/1/@proposals.1/@proposals.3/@attempts.2/@edit" start="30" end="-134"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="522" charEnd="579" severity="2" problemCategory="50" problemType="67109221"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552925602868" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="27" errorCount="1" warningCount="2" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=") {&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.3/@attempts.3/@edit" start="570" end="-13"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="21" charStart="522" charEnd="571" severity="2" problemCategory="50" problemType="67109221"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552931014212" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="27" errorCount="1" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void setLogging()" edit="/1/@proposals.1/@proposals.3/@attempts.4/@edit" start="497" end="-92"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="19" charStart="513" charEnd="514" severity="2" problemCategory="20" problemType="1610612976"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552993300743" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="40" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#xA;&#x9;private final Collection&lt;String> severities;&#xA;&#x9;private ILogger logger;&#xA;&#xA;&#x9;public FilteringLogger(ILogger logger, String... severities) {&#xA;&#x9;&#x9;this.severities = new ArrayList&lt;String>(Arrays.asList(severities));&#xA;&#x9;&#x9;this.logger = logger;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isLogging(String severities) {&#xA;&#x9;&#x9;return severities.contains(severities);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setIsLogging(String severity, boolean val) {&#xA;&#x9;&#x9;if (!val) {&#xA;&#x9;&#x9;&#x9;severities.remove(severity);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (!isLogging(severity)) {&#xA;&#x9;&#x9;&#x9;severities.add(severity);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void log(String severity, String message, Exception e) {&#xA;&#x9;&#x9;if (isLogging(severity)) {&#xA;&#x9;&#x9;&#x9;logger.log(severity, message, e);&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.3/@attempts.5/@edit" start="163" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553034496992" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="40" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(severities.contains(severities));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setIsLogging(String severity, boolean val) {&#xA;&#x9;&#x9;if (!val) {&#xA;&#x9;&#x9;&#x9;severities.remove(severity);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (!isLogging(severity)) {&#xA;&#x9;&#x9;&#x9;severities.add(severity);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void log(String severity, String msg, Exception e) {&#xA;&#x9;&#x9;if (isLogging(severity)) {&#xA;&#x9;&#x9;&#x9;logger.log(severity, msg" edit="/1/@proposals.1/@proposals.3/@attempts.6/@edit" start="457" end="-22"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553034661970" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="38" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.1/@proposals.3/@attempts.7/@edit" start="822" end="-2"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553034898930" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="38" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" " edit="/1/@proposals.1/@proposals.3/@attempts.8/@edit" start="284" end="-541"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553034996201" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;ILogger syserrLogger = new StreamLogger(System.err);&#xA;&#x9;&#x9;FilteringLogger logger = new FilteringLogger(syserrLogger, ILogger.ERROR);&#xA;&#x9;&#x9;logger.log(ILogger.ERROR, &quot;Denne meldingen er alvorlig og skrives til System.err&quot;, null);&#xA;&#x9;&#x9;logger.log(ILogger.WARNING, &quot;Denne meldingen er en advarsel og blir filtrert bort&quot;, null);&#xA;&#x9;&#x9;logger.log(ILogger.INFO, &quot;Denne meldingen er til informasjon og blir filtrert bort&quot;, null);&#xA;&#x9;&#x9;logger.setIsLogging(ILogger.WARNING, true);&#xA;&#x9;&#x9;logger.log(ILogger.WARNING, &quot;Denne meldingen er en advarsel og blir nå skrevet til System.err&quot;, null);&#xA;&#x9;}&#xA;" edit="/1/@proposals.1/@proposals.3/@attempts.9/@edit" start="823" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553035061838" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="s" edit="/1/@proposals.1/@proposals.3/@attempts.10/@edit" start="288" end="-1145"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553035245496" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" val) {&#xA;&#x9;&#x9;&#x9;severities.remove(severity);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (! " edit="/1/@proposals.1/@proposals.3/@attempts.11/@edit" start="562" end="-817"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553091800223" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="... " edit="/1/@proposals.1/@proposals.3/@attempts.12/@edit" start="284" end="-1148"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553091911327" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="severities.contains(severities" edit="/1/@proposals.1/@proposals.3/@attempts.13/@edit" start="457" end="-947"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553092140650" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="essage, Exception exception) {&#xA;&#x9;&#x9;if (isLogging(severity)) {&#xA;&#x9;&#x9;&#x9;logger.log(severity, message, exception" edit="/1/@proposals.1/@proposals.3/@attempts.14/@edit" start="731" end="-625"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553093116088" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="//&#x9;public static void main(String[] args) {&#xA;//&#x9;&#x9;ILogger syserrLogger = new StreamLogger(System.err);&#xA;//&#x9;&#x9;FilteringLogger logger = new FilteringLogger(syserrLogger, ILogger.ERROR);&#xA;//&#x9;&#x9;logger.log(ILogger.ERROR, &quot;Denne meldingen er alvorlig og skrives til System.err&quot;, null);&#xA;//&#x9;&#x9;logger.log(ILogger.WARNING, &quot;Denne meldingen er en advarsel og blir filtrert bort&quot;, null);&#xA;//&#x9;&#x9;logger.log(ILogger.INFO, &quot;Denne meldingen er til informasjon og blir filtrert bort&quot;, null);&#xA;//&#x9;&#x9;logger.setIsLogging(ILogger.WARNING, true);&#xA;//&#x9;&#x9;logger.log(ILogger.WARNING, &quot;Denne meldingen er en advarsel og blir nå skrevet til System.err&quot;, null);&#xA;//" edit="/1/@proposals.1/@proposals.3/@attempts.15/@edit" start="848" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553162580903" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;ILogger syserrLogger = new StreamLogger(System.err);&#xA;&#x9;&#x9;FilteringLogger logger = new FilteringLogger(syserrLogger, ILogger.ERROR);&#xA;&#x9;&#x9;logger.log(ILogger.ERROR, &quot;Denne meldingen er alvorlig og skrives til System.err&quot;, null);&#xA;&#x9;&#x9;logger.log(ILogger.WARNING, &quot;Denne meldingen er en advarsel og blir filtrert bort&quot;, null);&#xA;&#x9;&#x9;logger.log(ILogger.INFO, &quot;Denne meldingen er til informasjon og blir filtrert bort&quot;, null);&#xA;&#x9;&#x9;logger.setIsLogging(ILogger.WARNING, true);&#xA;&#x9;&#x9;logger.log(ILogger.WARNING, &quot;Denne meldingen er en advarsel og blir nå skrevet til System.err&quot;, null);&#xA;" edit="/1/@proposals.1/@proposals.3/@attempts.16/@edit" start="848" end="-6"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553163322672" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this." edit="/1/@proposals.1/@proposals.3/@attempts.17/@edit" start="457" end="-1001"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553163487915" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=") {&#xA;&#x9;&#x9;return this.severities.contains(sev" edit="/1/@proposals.1/@proposals.3/@attempts.18/@edit" start="437" end="-971"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553163680483" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void setIsLogging(String severity, boolean val) {&#xA;&#x9;&#x9;if (! val) {&#xA;&#x9;&#x9;&#x9;severities.remove(severity);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (! isLogging(severity)) {&#xA;&#x9;&#x9;&#x9;severities.add(severity);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isLogging(String sev) {&#xA;&#x9;&#x9;return this.severities.contains(sev);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void log(String sev, String msg, Exception e) {&#xA;&#x9;&#x9;if (isLogging(sev)) {&#xA;&#x9;&#x9;&#x9;logger.log(sev, msg, e" edit="/1/@proposals.1/@proposals.3/@attempts.19/@edit" start="409" end="-625"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553163716148" resourcePath="/ovinger/src/patterns/delegation/FilteringLogger.java" sizeMeasure="48" className="patterns.delegation.FilteringLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=", boolean val) {&#xA;&#x9;&#x9;if (! val) {&#xA;&#x9;&#x9;&#x9;severities.remove(sev);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (! isLogging(sev)) {&#xA;&#x9;&#x9;&#x9;severities.add(sev" edit="/1/@proposals.1/@proposals.3/@attempts.20/@edit" start="437" end="-838"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553035001293" mode="run" className="patterns.delegation.FilteringLogger">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.FilteringLogger</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>error: Denne meldingen er alvorlig og skrives til System.err (null)
warning: Denne meldingen er en advarsel og blir filtrert bort (null)
info: Denne meldingen er til informasjon og blir filtrert bort (null)
warning: Denne meldingen er en advarsel og blir nå skrevet til System.err (null)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553091572854" mode="run" className="patterns.delegation.FilteringLogger">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.FilteringLogger</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>error: Denne meldingen er alvorlig og skrives til System.err (null)
warning: Denne meldingen er en advarsel og blir filtrert bort (null)
info: Denne meldingen er til informasjon og blir filtrert bort (null)
warning: Denne meldingen er en advarsel og blir nå skrevet til System.err (null)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553092395865" mode="run" className="patterns.delegation.FilteringLogger">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.FilteringLogger</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>error: Denne meldingen er alvorlig og skrives til System.err (null)
warning: Denne meldingen er en advarsel og blir filtrert bort (null)
info: Denne meldingen er til informasjon og blir filtrert bort (null)
warning: Denne meldingen er en advarsel og blir nå skrevet til System.err (null)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553162592625" mode="run" className="patterns.delegation.FilteringLogger">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.FilteringLogger</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>error: Denne meldingen er alvorlig og skrives til System.err (null)
warning: Denne meldingen er en advarsel og blir filtrert bort (null)
info: Denne meldingen er til informasjon og blir filtrert bort (null)
warning: Denne meldingen er en advarsel og blir nå skrevet til System.err (null)
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1553163159266" mode="run" className="patterns.delegation.FilteringLogger">
          <launchAttrNames>org.eclipse.jdt.launching.CLASSPATH_PROVIDER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER</launchAttrNames>
          <launchAttrValues>org.eclipse.m2e.launchconfig.classpathProvider</launchAttrValues>
          <launchAttrValues>patterns.delegation.FilteringLogger</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>org.eclipse.m2e.launchconfig.sourcepathProvider</launchAttrValues>
          <consoleOutput>error: Denne meldingen er alvorlig og skrives til System.err (null)
warning: Denne meldingen er en advarsel og blir filtrert bort (null)
info: Denne meldingen er til informasjon og blir filtrert bort (null)
warning: Denne meldingen er en advarsel og blir nå skrevet til System.err (null)
</consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553025068395" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553032408384" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553034426671" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553034504938" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553034512653" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553034669076" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553034905729" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553035067646" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553035251957" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553091080162" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553091544062" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553091932158" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553092145412" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553162310870" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553162518981" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553162581987" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553163152601" completion="0.2" testRunName="patterns.delegation.FilteringLoggerTest" successCount="1" failureCount="4">
          <successTests>testErrorLogging</successTests>
          <failureTests>testInfoToErrorLogger</failureTests>
          <failureTests>testFilteringLoggerErrorAndInfo</failureTests>
          <failureTests>testFilteringLoggerWarningSetIsLoggingError</failureTests>
          <failureTests>testFilteringLoggerNoSeverities</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553163327437" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553163492124" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553163683533" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553163721351" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553164577637" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553165263258" completion="1.0" testRunName="patterns.delegation.FilteringLoggerTest" successCount="5">
          <successTests>testInfoToErrorLogger</successTests>
          <successTests>testFilteringLoggerErrorAndInfo</successTests>
          <successTests>testFilteringLoggerWarningSetIsLoggingError</successTests>
          <successTests>testFilteringLoggerNoSeverities</successTests>
          <successTests>testErrorLogging</successTests>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.6/@q" answer="/0/@parts.1/@tasks.6/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1552993051036" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="5" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.delegation;&#xA;&#xA;public class DistributingLogger {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553025014713" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="29" errorCount="1" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.HashMap;&#xA;import java.util.Map;&#xA;&#xA;public class DistributingLogger implements ILogger{&#xA;&#xA;&#x9;&#xA;&#x9;private Map&lt;String, ILogger> loggers = new HashMap&lt;String, ILogger>();&#xA;&#x9;&#xA;&#x9;public DistributingLogger(ILogger errLog, ILogger warnLog, ILogger infoLog) {&#xA;&#x9;&#x9;setLogger(ILogger.ERROR, errLog);&#xA;&#x9;&#x9;setLogger(ILogger.WARNING, warnLog);&#xA;&#x9;&#x9;setLogger(ILogger.INFO, infoLog);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setLogger(String severity, ILogger logger) {&#xA;&#x9;&#x9;loggers.put(severity, logger);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void log(String severity, String message, Exception exception) {&#xA;&#x9;&#x9;ILogger logger = loggers.get(severity);&#xA;&#x9;&#x9;if (logger != null) {&#xA;&#x9;&#x9;&#x9;logger.log(severity, message, e);&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.6/@attempts.0/@edit" start="30" end="-4"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="26" charStart="685" charEnd="686" severity="2" problemCategory="50" problemType="33554515"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553034414151" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="29" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=")" edit="/1/@proposals.1/@proposals.6/@attempts.1/@edit" start="574" end="-116"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553163898317" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="30" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=", ILogger log) {&#xA;&#x9;&#x9;// Inserts mapping of sev and log into the hashmap&#xA;&#x9;&#x9;loggers.put(sev, log" edit="/1/@proposals.1/@proposals.6/@attempts.2/@edit" start="439" end="-197"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553163930648" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="30" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=", String msg, Exception e) {&#xA;&#x9;&#x9;ILogger logger = loggers.get(sev);&#xA;&#x9;&#x9;if (logger != null) {&#xA;&#x9;&#x9;&#x9;logger.log(sev, msg" edit="/1/@proposals.1/@proposals.6/@attempts.3/@edit" start="577" end="-16"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1553164032342" resourcePath="/ovinger/src/patterns/delegation/DistributingLogger.java" sizeMeasure="31" className="patterns.delegation.DistributingLogger">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="// The hashmap where we contain the logging&#xA;&#x9;private Map&lt;String, ILogger> loggers = new HashMap&lt;String, ILogger>();&#xA;&#x9;&#xA;&#x9;public DistributingLogger(ILogger errLog, ILogger warnLog, ILogger infoLog) {&#xA;&#x9;&#x9;setLogger(ILogger.ERROR, errLog);&#xA;&#x9;&#x9;setLogger(ILogger.WARNING, warnLog);&#xA;&#x9;&#x9;setLogger(ILogger.INFO, infoLog);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setLogger(String sev, ILogger log) {&#xA;&#x9;&#x9;// Inserts mapping of sev and log into the hashmap&#xA;&#x9;&#x9;loggers.put(sev, log);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void log(String sev, String msg, Exception e) {&#xA;&#x9;&#x9;ILogger logger = loggers.get(sev);&#xA;&#x9;&#x9;// Logs if there is no previous content" edit="/1/@proposals.1/@proposals.6/@attempts.4/@edit" start="133" end="-63"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.7/@q" answer="/0/@parts.1/@tasks.7/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.8/@q" answer="/0/@parts.1/@tasks.8/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553025039338" completion="0.0" testRunName="patterns.delegation.DistributingLoggerTest" errorCount="4">
          <errorTests>testLogToInfo</errorTests>
          <errorTests>testLogToWarn</errorTests>
          <errorTests>testChangeInfoLogger</errorTests>
          <errorTests>testLogToError</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553032417008" completion="0.0" testRunName="patterns.delegation.DistributingLoggerTest" errorCount="4">
          <errorTests>testLogToInfo</errorTests>
          <errorTests>testLogToWarn</errorTests>
          <errorTests>testChangeInfoLogger</errorTests>
          <errorTests>testLogToError</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553034419582" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553091074170" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553162513051" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553163905062" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553163933888" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553164049589" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1553165257660" completion="1.0" testRunName="patterns.delegation.DistributingLoggerTest" successCount="4">
          <successTests>testLogToInfo</successTests>
          <successTests>testLogToWarn</successTests>
          <successTests>testChangeInfoLogger</successTests>
          <successTests>testLogToError</successTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a">
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
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1551344877470" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.2/@tasks.3/@q" answer="/0/@parts.2/@tasks.3/@a">
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

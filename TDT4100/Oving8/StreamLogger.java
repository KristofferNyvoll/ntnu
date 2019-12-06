package patterns.delegation;

import java.io.OutputStream;
import java.io.PrintStream;

public class StreamLogger implements ILogger{

	private PrintStream stream;
	private String formatString = "%s: %s (%s)";

	public StreamLogger(OutputStream stream) {
		super();
		this.stream = new PrintStream(stream);
	}

	public void setFormatString(String logFormat) {
		// Apply the formatting
		this.formatString = logFormat;
}
	@Override
	public void log(String severity, String message, Exception exception) {
		// Format the three last args as given by "logFormat"
		stream.format(formatString, severity, message, exception);
		stream.println();
		stream.flush();
	}	
}
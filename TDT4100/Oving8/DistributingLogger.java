package patterns.delegation;

import java.util.HashMap;
import java.util.Map;

public class DistributingLogger implements ILogger{

	// The hashmap where we contain the logging
	private Map<String, ILogger> loggers = new HashMap<String, ILogger>();
	
	public DistributingLogger(ILogger errLog, ILogger warnLog, ILogger infoLog) {
		setLogger(ILogger.ERROR, errLog);
		setLogger(ILogger.WARNING, warnLog);
		setLogger(ILogger.INFO, infoLog);
		
	}
	
	public void setLogger(String sev, ILogger log) {
		// Inserts mapping of sev and log into the hashmap
		loggers.put(sev, log);
	}
	
	@Override
	public void log(String sev, String msg, Exception e) {
		ILogger logger = loggers.get(sev);
		// Logs if there is no previous content
		if (logger != null) {
			logger.log(sev, msg, e);
		}
	}
}

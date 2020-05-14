package patterns.delegation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public class FilteringLogger implements ILogger{
	
	
	private final Collection<String> severities;
	private ILogger logger;

	public FilteringLogger(ILogger logger, String... severities) {
		this.severities = new ArrayList<String>(Arrays.asList(severities));
		this.logger = logger;
	}
	
	public void setIsLogging(String sev, boolean val) {
		if (! val) {
			severities.remove(sev);
		}
		else if (! isLogging(sev)) {
			severities.add(sev);
		}
	}
	
	public boolean isLogging(String sev) {
		return this.severities.contains(sev);
	}
	
	@Override
	public void log(String sev, String msg, Exception e) {
		if (isLogging(sev)) {
			logger.log(sev, msg, e);
		}
		
	}
	
	public static void main(String[] args) {
		ILogger syserrLogger = new StreamLogger(System.err);
		FilteringLogger logger = new FilteringLogger(syserrLogger, ILogger.ERROR);
		logger.log(ILogger.ERROR, "Denne meldingen er alvorlig og skrives til System.err", null);
		logger.log(ILogger.WARNING, "Denne meldingen er en advarsel og blir filtrert bort", null);
		logger.log(ILogger.INFO, "Denne meldingen er til informasjon og blir filtrert bort", null);
		logger.setIsLogging(ILogger.WARNING, true);
		logger.log(ILogger.WARNING, "Denne meldingen er en advarsel og blir nå skrevet til System.err", null);
	}
}

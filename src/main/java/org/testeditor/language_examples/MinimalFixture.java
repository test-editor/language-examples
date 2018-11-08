package org.testeditor.language_examples;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.testeditor.fixture.core.TestRunListener;
import org.testeditor.fixture.core.TestRunReportable;
import org.testeditor.fixture.core.TestRunReporter;
import org.testeditor.fixture.core.TestRunReporter.Action;
import org.testeditor.fixture.core.TestRunReporter.SemanticUnit;
import org.testeditor.fixture.core.TestRunReporter.Status;
import org.testeditor.fixture.core.interaction.FixtureMethod;
import org.testeditor.fixture.core.FixtureException;

public class MinimalFixture implements TestRunListener, TestRunReportable {

	private static Logger logger=LoggerFactory.getLogger(MinimalFixture.class);

	@Override
	public void initWithReporter(TestRunReporter reporter) {
		reporter.addListener(this);
		logger.debug("added fixture as listener to reporter");
	}

	@Override
	public void reported(SemanticUnit unit, Action action, String msg, String id, Status status, Map<String, String> variables) {
		// logger.info("reported called");
	}
	
	@Override
	public void reportAssertionExit(AssertionError e) {
	    // ignore (for now)
	}

	@Override
	public void reportExceptionExit(Exception e) {
	    // ignore (for now)
	}

	@Override
	public void reportFixtureExit(FixtureException e) {
	    // ignore (for now)
	}


	@FixtureMethod
	public void callWithoutParameter() throws FixtureException {
		logger.debug("callWithoutParameter");
	}
    
	@FixtureMethod
	public boolean getBoolean() throws FixtureException {
		logger.debug("getBoolean");
		return true;
	}

}

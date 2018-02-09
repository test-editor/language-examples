package org.testeditor.language_examples;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.testeditor.fixture.core.TestRunListener;
import org.testeditor.fixture.core.TestRunReportable;
import org.testeditor.fixture.core.TestRunReporter;
import org.testeditor.fixture.core.TestRunReporter.Action;
import org.testeditor.fixture.core.TestRunReporter.SemanticUnit;
import org.testeditor.fixture.core.interaction.FixtureMethod;

public class MinimalFixture implements TestRunListener, TestRunReportable {

	private static Logger logger=LoggerFactory.getLogger(MinimalFixture.class);

	@Override
	public void initWithReporter(TestRunReporter reporter) {
		reporter.addListener(this);
		logger.info("added fixture as listener to reporter");
	}

	@Override
	public void reported(SemanticUnit unit, Action action, String msg) {
		// logger.info("reported called");
	}

	@FixtureMethod
    public void callWithoutParameter() {
		logger.info("callWithoutParameter");
    }

}

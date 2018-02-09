package org.testeditor.language_examples

import org.testeditor.fixture.web.*

# MinimalWeb

* Start browser Firefox and navigate to google
	Component: WebBrowser
	- Start <Firefox>
	- Browse "https://www.google.com"

* Close browser
	Component: WebBrowser
	- Wait "5" seconds
	- Close browser

package org.testeditor.language_examples

import org.testeditor.fixture.web.*

# MinimalWeb

* Start browser Firefox and navigate to google
	Component: WebBrowser
	- Start <Firefox>
	- Browse "https://www.google.com"

* Search for "testeditor"
	Component: Searchsite
	- Enter "testeditor" into <Searchfield>
    - Submit element <Searchfield>

* Close browser
	Component: WebBrowser
	- Wait "5" seconds
	- Close browser
// some

* Start browser Firefox and navigate to google
	Component: org.testeditor.fixture.web.WebBrowser
	- Start <Firefox>
	- Browse "https://www.google.com"

* Search for "testeditor"
	Component: Searchsite
	- Enter "testeditor" into <Searchfield>
    - Submit element <Searchfield>

* Close browser
	Component: org.testeditor.fixture.web.WebBrowser
	- Wait "5" seconds
	- Close browser

use testframe Testframe

* Browser Starten
Component: org.testeditor.fixture.web.WebBrowser
  - Start <Firefox>
  - Browse "https://google.de"

* Namen eingeben
Component: org.testeditor.heroes.Heroes
  - Enter "Sancho" into <Name>

* Browser schließen
Component: org.testeditor.fixture.web.WebBrowser
  - Close browser
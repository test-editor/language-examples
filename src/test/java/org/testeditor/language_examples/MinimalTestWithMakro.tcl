* Browser Starten
Component: org.testeditor.fixture.web.WebBrowser
  - Start <Firefox>
  - Browse "https://google.de"

* Namen eingeben
Component: org.testeditor.heroes.Heroes
  - Enter "Sancho" into <Name>

* Macro verwenden
Macro: MinimalMacro
- my first macro call
- my second macro call with firstParam @firstParam and @secondParam @secondParam 

* Browser schließen
Component: org.testeditor.fixture.web.WebBrowser
  - Close browser
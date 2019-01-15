require public user, password

* Browser Starten
Component: org.testeditor.fixture.web.WebBrowser
  - Start <Firefox>
  - Browse "https://google.de"

* Credentials eingeben
Component: org.testeditor.heroes.Heroes
  - Enter "Sancho" into <Name>
  - Enter @user into <Name>

* Browser schließen
Component: org.testeditor.fixture.web.WebBrowser
  - Close browser
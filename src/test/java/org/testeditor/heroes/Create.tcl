package org.testeditor.heroes

# Create implements Create

Setup:
  Component: org.testeditor.fixture.web.WebBrowser
  - Start <Firefox>
  - Browse "http://localhost:4300"
  
  Component: Dashboard
  - Click <HeroesButton>
  

* Create hero "Sancho"
  Component: Heroes
  - Click <Add>
  - Enter "Sancho" into <Name>
  - Submit element <Name>

* Verify hero is in the list
  Component: Heroes
  - actualName = Read <LastListItem>
  - assert actualName = "Sancho"


Cleanup:
  Component: org.testeditor.fixture.web.WebBrowser
  - Close browser

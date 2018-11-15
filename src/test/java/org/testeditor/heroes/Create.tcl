package org.testeditor.heroes

# Create implements Create

Setup:
  Component: org.testeditor.fixture.web.WebBrowser
  - Start <Firefox>
  - Browse "http://sut:4200/heroes"
  Component: Heroes
  - Wait "2" seconds
  - actualName = Read <LastListItem>
  - assert actualName = "20 Tornado"
  
//--------------------------------------------------

* Create hero "Sancho"
  Component: Heroes
  - Wait "2" seconds until <Add> is found
  - Click <Add>
  - Enter "Sancho" into <Name>
  - Wait "2" seconds until <Save> is found
  - Click <Save>

* Verify hero is in the list
  Component: Heroes
  - Wait "2" seconds
  - actualName = Read <LastListItem>
  - assert actualName = "21 Sancho"

//--------------------------------------------------

Cleanup:
  Component: org.testeditor.fixture.web.WebBrowser
  - Close browser

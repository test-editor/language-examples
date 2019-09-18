implements org.testeditor.solution.CreateHero_parameterized

Data:
  Component: org.testeditor.fixture.commons.io.json.ParameterizedTesting
  - heroes = load from CSV file "org/testeditor/solution/heroes.csv"

* Given: I am on the heroes page
  Component: org.testeditor.fixture.web.WebBrowser
  - Start <Firefox>
  - Browse "http://sut:4200/heroes"

* When: I create a hero
  Component: org.testeditor.heroes.Heroes
  - Wait "2" seconds until <Add> is found
  - Click <Add>
  - Enter @heroes.name into <Name>
  - Wait "2" seconds until <Save> is found
  - Click <Save>

* Then: That hero should be the last one of the list
  Component: org.testeditor.heroes.Heroes
  - Wait "2" seconds
  - actualName = Read <LastListItem>
  - assert actualName = heroes.listEntry

  Component: org.testeditor.fixture.web.WebBrowser
  - Close browser
  
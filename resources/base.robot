* Settings * 
Documentation     Base file of the project (Everything starts from here)

Library   Browser

Resource  actions/search.robot

* Keywords *

Start session

  New Browser                       chromium  False
  New Page                          http://parodifood.qaninja.academy/
  # checkpoint
  Get Text                            p    contains    Nunca foi tão engraçado pedir comida
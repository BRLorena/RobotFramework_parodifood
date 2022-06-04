*** Settings ***
Library   Browser

* Test Cases *
Search a restaurant by name
  New Browser   chromium  False
  New Page      http://parodifood.qaninja.academy/
  # checkpoint
  Get Text      p    contains    Nunca foi tão engraçado pedir comida

  Click         text=Estou com fome! 
  # checkpoint
  Get Text      h1  contains  Ta na hora de matar a fome!
  Click         css=.search-link
  Fill Text     css=input[formcontrolname="searchControl"]   Debuger   
  Wait For Elements State   css=.place-info-box   visible   10    
  Get Text      css=.place-info-box-text  contains  DEBUGER KING
  # thinking time
  Sleep         1
  Take Screenshot
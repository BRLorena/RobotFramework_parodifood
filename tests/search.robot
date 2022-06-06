*** Settings ***
Library   Browser

* Test Cases *
Search only one restaurant by name 
  New Browser   chromium  False
  New Page      http://parodifood.qaninja.academy/
  # checkpoint
  Get Text      p    contains    Nunca foi tão engraçado pedir comida
  Click         text=Estou com fome! 

  # checkpoint
  Get Text      h1  contains  Ta na hora de matar a fome!
  Click         css=.search-link

  Fill Text     css=input[formcontrolname="searchControl"]   Debuger    

  # Wait for elemt have the opacity = 1 
  Wait For Elements State   css=div[class="place-info-box"][style="opacity: 1;"]  visible   
  Get Text      css=.place-info-box-text  contains  DEBUGER KING

  # Check if I have only one result
  Get Element Count      css=.place-info-box-text  equal  1
  
  Take Screenshot

  # thinking time
  # Sleep         1


Search for a restaurant by category
  New Browser   chromium  False
  New Page      http://parodifood.qaninja.academy/

  # checkpoint
  Get Text      p    contains    Nunca foi tão engraçado pedir comida
  Click         text=Estou com fome! 

  # checkpoint
  Get Text      h1  contains  Ta na hora de matar a fome!

  Click         css=.search-link
  Fill Text     css=input[formcontrolname="searchControl"]   Cafe 

  Wait For Elements State   css=div[class="place-info-box"][style="opacity: 1;"]  visible 
  Get Text      css=.place-info-box-text  contains  STARBUGS COFFEE   
  
  Take Screenshot 

Search for all restaurant 
  New Browser   chromium  False
  New Page      http://parodifood.qaninja.academy/

  # checkpoint
  Get Text      p    contains    Nunca foi tão engraçado pedir comida
  Click         text=Estou com fome! 

  # checkpoint
  Get Text      h1  contains  Ta na hora de matar a fome!

  Click         css=.search-link
  Fill Text     css=input[formcontrolname="searchControl"]  a
 
  Wait For Elements State   css=.content  visible
  
  # Check if I have five result
  Get Element Count      css=.place-info-box-text  equal  5
  
  sleep                   1
  Take Screenshot

* Settings *
Documentation   Search function actions

* Variables *
${DIV_BOX_RESTAURANT}               css=div[class="place-info-box"][style="opacity: 1;"]

* Keywords *
Go to restaurants 

  # checkpoint
  Click                             text=Estou com fome! 
  Get Text                          h1  contains  Ta na hora de matar a fome!


Search By 
  [Arguments]   ${value}

  Click                             css=.search-link
  Fill Text                         css=input[formcontrolname="searchControl"]   ${value}   


Restaurant should be visible
  [Arguments]   ${name}

  Wait For Elements State          ${DIV_BOX_RESTAURANT}  visible     10
  Get Text                          css=.place-info-box-text  contains  ${name}

Restaurant Count should be
  [Arguments]   ${qtd}

  # Check if I have only one result
  Get Element Count                 css=.place-info-box-text  equal  ${qtd}
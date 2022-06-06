*** Settings ***
 
Resource    ${EXECDIR}/resources/base.robot

Test Setup      Start session
Test Teardown   Take Screenshot


* Test Cases *
Search only one restaurant by name 
  Go to restaurants 
  Search By                       debuger
  Restaurant should be visible    DEBUGER KING
  Restaurant Count should be      1

Search for a restaurant by category
  Go to restaurants 
  Search By                       Cafe
  Restaurant should be visible    STARBUGS COFFEE

Search for all restaurant 
  Go to restaurants 
  Search By                         a
  Restaurant Count should be        5
  sleep                             1



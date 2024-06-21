
traying open url get element attrbuite by locator make sample assertion
*** Settings ***
Library    SeleniumLibrary


 
*** Variables ***
${URL}    http://www.google.com
${BROWSER}    Chrome

*** Keyword ***
 login    
  Input Text    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
  Input Password    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
   Click Button    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    


*** Test Cases ***

...    openbrowser check google  [smoke]
Open Google And Check Title  # Descriptive and clear test case name
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Sleep    2
    Input Text    name=q   robot 
      # Press Enter key
      Press Keys  name=q  CTRL+ENTER  # Ctrl+Enter

    Sleep    4
    # Page Should Contain Title    Google
    Close Browser
    
openorange without custom kewordd  
     Open Browser  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
         Maximize Browser Window
     Sleep    3
     Input Text    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
     Input Password    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input    admin123
     Click Button    xpath=/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
     Sleep    2
     Page Should Contain    Dashboard
     Close All Browsers

 openorange and login withcustom keywordd

     Open Browser  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
         Maximize Browser Window
     Sleep    3
     login   
     Sleep    2
     Page Should Contain    Dashboard
     Close All Browsers


   

*** settings ***
Library             SeleniumLibrary


*** variables ***
${SERVER}               localhost:7272
${BROWSER}              Chrome
${DELAY}                1
${REGISTER_PAGE}        file:///C:/Users/Lenovo/Desktop/TestAutomationLab/StarterFiles/Registration.html
${SUCCESS_PAGE}         file:///C:/Users/Lenovo/Desktop/TestAutomationLab/StarterFiles/Success.html


*** keywords ***
Open Workshop Registration Page
    Open Browser    ${REGISTER_PAGE}                ${BROWSER}
    Maximize Browser Window

Input First Name
    [Arguments]     ${firstname}
    Input Text      id:firstname    ${firstname}
    
Input Last Name 
    [Arguments]     ${lastname}
    Input Text      id:lastname    ${lastname}
    
Input Organization
    [Arguments]     ${organization}
    Input Text      id:organization    ${organization}
    
Input Email 
    [Arguments]     ${email}
    Input Text      id:email    ${email}
    
Input Phone Number 
    [Arguments]     ${phone}
    Input Text      id:phone    ${phone}
    
Click Register Button
    Click Button    id:registerButton

Go to Success Page 
    Location Should Contain    Success.html
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us
    Page Should Contain    We will send a confirmation to your email soon
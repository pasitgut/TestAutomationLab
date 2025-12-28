*** settings ***
Resource            resource.robot


*** test case ***

Empty First Name
    Open Workshop Registration Page
    Input Last Name                 Sodsai
    Input Organization              CS KKU
    Input Email                     somyod@kkumail.com
    Input Phone Number              091-001-1234
    Click Register Button
    Page Should Contain    Please enter your first name!!
    Close Browser
    
    
Empty Last Name
    Open Workshop Registration Page
    Input First Name                Somyod
    Input Organization              CS KKU
    Input Email                     somyod@kkumail.com
    Input Phone Number              091-001-1234
    Click Register Button
    Page Should Contain    Please enter your last name!!
    Close Browser
    
Empty First Name and Last Name
    Open Workshop Registration Page
    Input Organization              CS KKU
    Input Email                     somyod@kkumail.com
    Input Phone Number              091-001-1234
    Click Register Button
    Page Should Contain    Please enter your name!!
    Close Browser

Empty Email
    Open Workshop Registration Page
    Input First Name                Somyod
    Input Last Name                 Sodsai
    Input Organization              CS KKU
    Input Phone Number              091-001-1234
    Click Register Button
    Page Should Contain    Please enter your email!!
    Close Browser

Empty Phone Number
    Open Workshop Registration Page
    Input First Name                Somyod
    Input Last Name                 Sodsai
    Input Organization              CS KKU
    Input Email                     somyod@kkumail.com
    Click Register Button
    Page Should Contain    Please enter your phone number!!
    Close Browser

Invalid Phone Number
    Open Workshop Registration Page
    Input First Name                Somyod
    Input Last Name                 Sodsai
    Input Organization              CS KKU
    Input Email                     somyod@kkumail.com
    Input Phone Number              1234
    Click Register Button
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
    Close Browser

*** Settings ***
Force Tags        timezone
Test Timeout      1 minute


*** Test Cases ***
Get Time with Datetime
    ${ts}=    Get Time
    Set Test Message	${ts}
*** Settings ***
Library     HttpRequestLibrary

*** Test Cases ***
German Double Quotes
    Set Log Level    TRACE
    Create Session    GermanQuotesBug    http://localhost:8080    timeout=15    verify=False    debug=1
    ${headers}=    Create Dictionary    accept=application/json;charset=UTF-8
    ${resp}=    Get Request    GermanQuotesBug    /    headers=${headers}    allow_redirects=True    timeout=15
    Should Be Equal As Strings    '${resp.status_code}'    '200'
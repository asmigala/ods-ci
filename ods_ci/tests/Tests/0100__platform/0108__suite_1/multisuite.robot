*** Settings ***
Library    String
Library    OpenShiftLibrary
Library    OperatingSystem
Resource            ../../../Resources/OCP.resource
Suite Setup         RHOSi Setup
Suite Teardown      RHOSi Teardown

*** Test Cases ***

Verify Dashboard Runing
    Wait For Pods To Be Ready    label_selector=app=${DASHBOARD_APP_NAME}
    ...    namespace=${APPLICATIONS_NAMESPACE}    timeout=60s

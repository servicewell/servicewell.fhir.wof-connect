Profile: WofConnectScheduleContextOperationResponse
Parent: Bundle
Id: wof-connect-schedule-context-operation-response
Title: "WOF Connect GetScheduleContext Operation Response"
Description: "Bundle (searchset) returned by the WOF-CONNECT GetScheduleContext operation."

// Bundle-level constraints
* type 1..1
* type = #searchset        // searchresult-bundle
* timestamp 1..1
* total 1..1 MS
* link 0..* 
* entry 0..* MS
* entry.fullUrl 0..1
* entry.resource 1..1 MS
* entry.search 0..0        // allowed on searchset
* entry.search.mode 0..1   // match | include | outcome

// Slice entries by resource type
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains  //to do: set constraints min/max per slice
    org 0..* and
    hcs 0..* and
    prac 0..* and
    sched 0..* and
    actdef 0..* and
    pracrole 0..*

// Constrain type per slice
* entry[org].resource only WofConnectEconomyOrganization
* entry[hcs].resource only WofConnectHealthcareService
* entry[prac].resource only WofConnectPractitioner
* entry[sched].resource only WofConnectSchedule
* entry[actdef].resource only WofConnectActivityDefinition
* entry[pracrole].resource only WofConnectPractitionerRole

* entry[org] MS
* entry[prac] MS
* entry[sched] MS


Profile: WofConnectScheduleContextOperationResponse
Parent: Bundle
Id: wof-connect-schedule-context-operation-response
Title: "WOF Connect GetScheduleContext Operation Response"
Description: "Bundle (searchset) returned by the WOF-CONNECT GetScheduleContext operation."

* type 1..1
* type = #searchset (exactly)
* meta 1..1
* meta.lastUpdated 1..1
* meta.profile 1..*
* total 1..1
* entry 1..* MS
* entry.resource 1..1 MS

// Liquid does not output entry.search
* entry.search 0..0

// ---- Entry slicing by resource type ----
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false

* entry contains
    org 0..* and
    hcs 0..* and
    actdef 0..* and
    sched 0..* and
    prac 0..* and
    pracrole 0..*

// Constrain profile/type per slice
* entry[org].resource only WofConnectEconomyOrganization
* entry[hcs].resource only WofConnectHealthcareService
* entry[actdef].resource only WofConnectActivityDefinition
* entry[sched].resource only WofConnectSchedule
* entry[prac].resource only WofConnectPractitioner
* entry[pracrole].resource only WofConnectPractitionerRole

* entry[org] MS
* entry[hcs] MS
* entry[sched] MS
* entry[prac] MS
* entry[pracrole] MS
* entry[actdef] MS
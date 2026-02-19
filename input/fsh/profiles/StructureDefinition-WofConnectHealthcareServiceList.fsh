Profile: WofConnectHealthcareServiceList
Parent: List
Id: wof-connect-healthcareservice-list
Title: "Wof Connect HealthcareService List"
Description: "A list of HealthcareService references"

* id 1..1
* id = "HealthcareServiceListId"
* status = #current
* mode = #working
* entry 1..*
* entry.item 1..1
* entry.item only Reference(HealthcareService)
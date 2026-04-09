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



// List fields not used
* identifier 0..0
* title 0..0
* code 0..0
* subject 0..0
* encounter 0..0
* date 0..0
* source 0..0
* orderedBy 0..0
* note 0..0
* emptyReason 0..0
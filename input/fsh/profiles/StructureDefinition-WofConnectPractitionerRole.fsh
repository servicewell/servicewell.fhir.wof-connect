Profile: WofConnectPractitionerRole
Parent: PractitionerRole
Id: wof-connect-practitionerrole
Title: "Wof Connect PractitionerRole"
Description: "PractitionerRole as exposed by WOF Connect integrations."
* ^version = "1.0.0"
* ^status = #active

* id 1..1 MS

* meta.profile 1..*
* meta.source 1..1

* active 1..1 MS

* period 1..1 MS
* period ^short = "The period the practitioner can perform the service"
* period.start 1..1 MS
* period.end 0..1 MS
* period obeys inv-practitionerrole-period

* practitioner 1..1 MS
* practitioner only Reference(WofConnectPractitioner)
* practitioner ^short = "The practitioner who performs the service"
* practitioner.reference 1..1 MS
* practitioner.display 0..1 MS

* organization 0..1 MS
* organization only Reference(WofConnectEconomyOrganization)
* organization ^short = "The organization (e.g. business, cost location) that has the practitioner role"
* organization.reference 1..1 MS
* organization.display 0..1 MS

* healthcareService 0..1 MS
* healthcareService only Reference(WofConnectHealthcareService)
* healthcareService ^short = "The place (e.g. a clinic) that hosts the practitioner role, if applicable"
* healthcareService.reference 1..1 MS
* healthcareService.display 0..1 MS

* endpoint 0..1 MS
* endpoint only Reference(Endpoint)
* endpoint.reference 1..1 MS

* code 1..* MS

* active insert Obligation($serverActor, #SHALL:populate)
* period insert Obligation($serverActor, #SHALL:populate)
* practitioner insert Obligation($serverActor, #SHALL:populate)        
* healthcareService insert Obligation($serverActor, #SHOULD:populate)  
* endpoint insert Obligation($serverActor, #SHALL:populate)           

* organization insert Obligation($serverActor, #MAY:populate)       
* code insert Obligation($serverActor, #MAY:populate)   


Invariant: inv-practitionerrole-period
Description: "If present, period.end must be on or after period.start"
Severity: #error
Expression: "end.empty() or start <= end"
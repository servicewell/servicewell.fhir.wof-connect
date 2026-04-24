Profile: WofConnectPractitionerRole
Parent: PractitionerRole
Id: wof-connect-practitionerrole
Title: "Wof Connect PractitionerRole"
Description: """ **PractitionerRolePortal** represents a practitioner acting in a specific operational and financial context.
It answers the question: __“In which role, at which service location, and under which financial responsibility does this practitioner perform services?“__
"""

* ^version = "1.0.0"
* ^status = #active
* obeys inv-practitionerrole-org-or-healthcareservice
* obeys inv-practitionerrole-period

* id 1..1 MS

* meta.profile 1..*

* active 1..1 MS

* period insert Obligation($clientActor, #SHOULD:populate)
* period 0..1 MS
* period ^short = "The period the practitioner can perform the service"
* period.start 1..1 MS
* period.end 0..1 MS
* period obeys inv-practitionerrole-period

* practitioner 1..1 MS
* practitioner only Reference(WofConnectPractitioner)
* practitioner ^short = "The practitioner who performs the service"
* practitioner.reference insert Obligation($clientActor, #SHOULD:populate)
* practitioner.reference 0..1 MS
* practitioner.display 1..1 MS

* organization 0..1 MS
* organization only Reference(WofConnectBillingOrganization)
* organization ^short = "The organization (e.g. business, cost location) that has the practitioner role"
* organization.reference insert Obligation($clientActor, #SHOULD:populate)
* organization.reference 0..1 MS
* organization.display 1..1 MS

* healthcareService 0..1 MS
* healthcareService only Reference(WofConnectHealthcareService)
* healthcareService ^short = "The place (e.g. a clinic) that hosts the practitioner role, if applicable"
* healthcareService.reference insert Obligation($clientActor, #SHOULD:populate)
* healthcareService.reference 0..1 MS
* healthcareService.display 1..1 MS

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

// ---- Elements not used in this profile - restricted to 0..0 ----

// PractitionerRole fields not used
* identifier 0..0
* specialty 0..0
* location 0..0
* telecom 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0


Profile: WofConnectPractitionerRole
Parent: PractitionerRole
Id: wof-connect-practitionerrole
Title: "Wof Connect PractitionerRole"
Description: "PractitionerRole as exposed by WOF Connect integrations."
* ^version = "1.0.0"
* ^status = #active

* id 1..1 MS
* meta 1..1
* meta.profile 1..*

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

// -------------------------------------
// Obligations: Frenda (producer)
// -------------------------------------

// Frenda SHALL populate 
* active insert Obligation($frendaActor, #SHALL:populate)
* period insert Obligation($frendaActor, #SHALL:populate)
* practitioner insert Obligation($frendaActor, #SHALL:populate)         // Treater for Frenda
* healthcareService insert Obligation($frendaActor, #SHALL:populate)    // 1..1 for Frenda/Clinic
* endpoint insert Obligation($frendaActor, #SHALL:populate)             // TODO: SHALL correct?

// Frenda MAY populate
* organization insert Obligation($frendaActor, #MAY:populate)           // CostLocation for Frenda
* code insert Obligation($frendaActor, #MAY:populate)                   // TODO: MAY correct?

// -------------------------------------
// Obligations: Opus (producer)
// -------------------------------------

// Opus SHALL populate
* active insert Obligation($opusActor, #SHALL:populate)
* period insert Obligation($opusActor, #SHALL:populate)
* practitioner insert Obligation($opusActor, #SHALL:populate)       // Employee for Opus
* endpoint insert Obligation($opusActor, #SHALL:populate)           // TODO: SHALL correct?

// Opus MAY populate
* organization insert Obligation($opusActor, #MAY:populate)         // Business for Opus
* healthcareService insert Obligation($opusActor, #MAY:populate)    // 0..0 for Opus
* code insert Obligation($opusActor, #MAY:populate)                 // TODO: MAY correct?

// -------------------------------------
// Obligations: WOF (consumer/client)
// -------------------------------------

// WOF Client SHALL consume
* active insert Obligation($clientActor, #SHALL:consume)
* period insert Obligation($clientActor, #SHALL:consume)
* practitioner insert Obligation($clientActor, #SHALL:consume)
* endpoint insert Obligation($clientActor, #SHALL:consume)

// WOF Client SHOULD consume
* organization insert Obligation($clientActor, #SHOULD:consume)
* healthcareService insert Obligation($clientActor, #SHOULD:consume)

// WOF Client MAY consume
* code insert Obligation($clientActor, #MAY:consume)

Invariant: inv-practitionerrole-period
Description: "If present, period.end must be on or after period.start"
Severity: #error
Expression: "end.empty() or start <= end"
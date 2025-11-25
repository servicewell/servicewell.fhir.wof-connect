Profile: WofConnectSchedule
Parent: Schedule
Id: wof-connect-schedule
Title: "Wof Connect Schedule"
Description: "Schedule for bookable service availability as exposed by WOF Connect integrations."

* ^version = "1.0.0"
* ^status = #active

* meta 1..1
* meta.profile 1..*

// ServiceType terminology
* serviceType 1..* MS
* serviceType ^short = "Kind of treatment/service"

* serviceType  ^slicing.discriminator.type = #value
* serviceType  ^slicing.discriminator.path = coding.system
* serviceType  ^slicing.rules = #open

* serviceType contains service-type-id 1..1 MS 
* serviceType[service-type-id] ^short = "Service Type Identifier Code and Endpoint Id Code"
* serviceType[service-type-id].coding 2..2

* serviceType[service-type-id].coding ^slicing.discriminator.type = #value
* serviceType[service-type-id].coding ^slicing.discriminator.path = "system"
* serviceType[service-type-id].coding ^slicing.rules = #open
* serviceType[service-type-id].coding contains st-id 1..1 MS and ep-id 1..1 MS
* serviceType[service-type-id].coding[st-id] ^short = "Service Type Identifier Code, e.g., Treatment.Id, ActivityDefinition.Id, used when calling the Appintment API"
* serviceType[service-type-id].coding[st-id].system 1..1 MS
* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code 1..1 MS
* serviceType[service-type-id].coding[ep-id] ^short = "Endpoint Identifier Code, e.g., this Endpoint.Id to make sure the service-type-id is unique per endpoint"
* serviceType[service-type-id].coding[ep-id].system 1..1 MS
* serviceType[service-type-id].coding[ep-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/endpoint-id"
* serviceType[service-type-id].coding[ep-id].code 1..1 MS

// Actors: require at least (PractitionerRole)
* actor 1..* MS
* actor ^short = "Clinic and provider actors in scope for this schedule"
* actor only Reference(WofConnectHealthcareService or WofConnectPractitioner or WofConnectPractitionerRole)

// Slicing by type to require at least one of each
* actor ^slicing.discriminator.type = #type
* actor ^slicing.discriminator.path = "$this"
* actor ^slicing.rules = #open

* actor contains
    healthcareService 0..* MS and
    practitioner 0..* MS and
    practitionerRole 1..1 MS

* actor[healthcareService] only Reference(WofConnectHealthcareService)
* actor[healthcareService] ^short = "The HealthcareService that hosts the schedule if applicable"
* actor[practitioner] only Reference(WofConnectPractitioner)
* actor[practitioner] ^short = "The practitioner who performs the service"
* actor[practitionerRole] only Reference(WofConnectPractitionerRole)
* actor[practitionerRole] ^short = "The practionerRole who performs the service"

// Planning horizon
* planningHorizon 1..1 MS
* planningHorizon ^short = "Interval for which this schedule is valid"
* planningHorizon.start 1..1 MS
* planningHorizon.end 1..1 MS

// Rule: start <= end
* planningHorizon obeys inv-schedule-planning

// -------------------------------------
// Obligations: Frenda (producer)
// -------------------------------------

// Frenda SHALL populate 
* actor[practitionerRole] insert Obligation($frendaActor, #SHALL:populate)
* serviceType[service-type-id].coding[st-id] insert Obligation($frendaActor, #SHALL:populate)
* serviceType[service-type-id].coding[ep-id] insert Obligation($frendaActor, #SHALL:populate)
* planningHorizon.start insert Obligation($frendaActor, #SHALL:populate)
* planningHorizon.end insert Obligation($frendaActor, #SHALL:populate)

// Frenda SHOULD populate
* actor[practitioner] insert Obligation($frendaActor, #SHOULD:able-to-populate)

// Frenda MAY populate
* actor[healthcareService] insert Obligation($frendaActor, #MAY:able-to-populate)

// -------------------------------------
// Obligations: WOF (consumer/client)
// -------------------------------------

// WOF Client SHALL consume
* actor[practitionerRole] insert Obligation($clientActor, #SHALL:consume)
* serviceType[service-type-id].coding[st-id] insert Obligation($clientActor, #SHALL:consume)
* serviceType[service-type-id].coding[ep-id] insert Obligation($clientActor, #SHALL:consume)
* planningHorizon.start insert Obligation($clientActor, #SHALL:consume)
* planningHorizon.end insert Obligation($clientActor, #SHALL:consume)

// WOF Client SHOULD consume
* actor[practitioner] insert Obligation($clientActor, #SHOULD:consume)

// WOF Client MAY consume
* actor[healthcareService] insert Obligation($clientActor, #MAY:consume)

Invariant: inv-schedule-planning
Description: "planningHorizon.start must be on or before planningHorizon.end"
Severity: #error
Expression: "start <= end"
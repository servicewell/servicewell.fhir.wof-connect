Profile: WofConnectSchedule
Parent: Schedule
Id: wof-connect-schedule
Title: "Wof Connect Schedule"
Description: """
**SchedulePortal** represents when a practitioner is planned to work during a given time period.

It answers the question: __“Who is working in the coming weeks, and who can potentially be shown as bookable?”__
"""

* ^version = "1.0.0"
* ^status = #active

* id 1..1

* meta.profile 1..*

// ServiceType terminology
* serviceType 1..* MS
* serviceType ^short = "Kind of treatment/service"

* serviceType  ^slicing.discriminator.type = #value
* serviceType  ^slicing.discriminator.path = coding.system
* serviceType  ^slicing.rules = #open

* serviceType contains service-type-id 1..1 MS 
* serviceType[service-type-id] ^short = "Service Type Identifier Code and Endpoint Id Code"
* serviceType[service-type-id].coding 1..2
* serviceType.text 0..1
* serviceType.text insert Obligation($serverActor, #SHOULD:populate)

* serviceType[service-type-id].coding ^slicing.discriminator.type = #value
* serviceType[service-type-id].coding ^slicing.discriminator.path = "system"
* serviceType[service-type-id].coding ^slicing.rules = #open
* serviceType[service-type-id].coding contains st-id 1..1 MS and ep-id 0..1 MS
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
* actor.display 1..1

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


* actor[practitionerRole] insert Obligation($serverActor, #SHALL:populate)
* serviceType[service-type-id].coding[st-id] insert Obligation($serverActor, #SHALL:populate)
* serviceType[service-type-id].coding[ep-id] insert Obligation($serverActor, #SHALL:populate)
* planningHorizon.start insert Obligation($serverActor, #SHALL:populate)
* planningHorizon.end insert Obligation($serverActor, #SHALL:populate)

* actor[practitioner] insert Obligation($serverActor, #SHOULD:able-to-populate)

* actor[healthcareService] insert Obligation($serverActor, #MAY:able-to-populate)

// ---- Elements not used in this profile - restricted to 0..0 ----


// Schedule fields not used
* identifier 0..0
* active 0..0
* serviceCategory 0..0
* specialty 0..0
* comment 0..0




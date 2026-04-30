Profile: WofConnectAppointment
Parent: ihe-sched-appt // IHE ITI Appointment Profile
Id: wof-connect-appointment
Title: "Wof Connect available Appointment"
Description: "Representation of an available appointment. Inherits IHE Scheduling Appointment."
* ^status = #active

* id 1..1

* meta.profile 1..*


* status 1..1
* status = #proposed (exactly)

* serviceType 1..*
* serviceType.coding 1..*
* serviceType.coding.system 1..1
* serviceType.coding.code 1..1

* start 1..1
* end 1..1
* requestedPeriod 1..1

// SlotId identifier is required for slot-derived appointments
* identifier 1..*
// Attach invariant
* obeys wof-slot-identifier


* participant ^slicing.discriminator.type = #profile
* participant ^slicing.discriminator.path = "actor.resolve()"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 1..1 MS and practitionerRole 1..1 MS
* participant[healthcareService].actor only Reference(WofConnectHealthcareService)
* participant[healthcareService].actor 1..1
* participant[healthcareService].status 1..1

* participant[practitionerRole].actor only Reference(WofConnectPractitionerRole)
* participant[practitionerRole].actor 1..1
* participant[practitionerRole].status 1..1

// ---- Elements not used in this profile - restricted to 0..0 ----

* supportingInformation ^slicing.discriminator.type = #type
* supportingInformation ^slicing.discriminator.path = "$this"
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.description = ""
* supportingInformation ^slicing.ordered = false


* supportingInformation contains billingOrganizationID 0..1 MS
* supportingInformation[billingOrganizationID] ^short = "Identifier for the organization responsible for billing, only used when this information is not available through participant (healthcareService)"
* supportingInformation[billingOrganizationID] ^definition = "Optional supporting information used to carry the billing organization identifier for the appointment, when this is not available through healthcareService. The reference element is not used; only identifier.value is expected."

* supportingInformation[billingOrganizationID].reference 0..0
* supportingInformation[billingOrganizationID].identifier.value 1..1 MS
* supportingInformation[billingOrganizationID].identifier.use 0..0
// Appointment fields not used
* cancelationReason 0..0
* serviceCategory 0..0
* specialty 0..0
* appointmentType 0..0
* reasonCode 0..0
* reasonReference 0..0
* priority 0..0
* description 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* comment 0..0
* patientInstruction 0..0
* basedOn 0..0


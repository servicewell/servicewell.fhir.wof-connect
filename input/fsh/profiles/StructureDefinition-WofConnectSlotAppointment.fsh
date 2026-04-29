Profile: WofConnectAppointment
Parent: ihe-sched-appt // IHE ITI Appointment Profile
Id: wof-connect-appointment
Title: "Wof Connect Appointment"
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

* participant 2..2

* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 1..1 and practitionerRole 1..1
* participant[healthcareService].actor only Reference(WofConnectHealthcareService)
* participant[practitionerRole].actor only Reference(WofConnectPractitionerRole)
* participant[practitionerRole].status 1..1

* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "$this"
* supportingInformation ^slicing.rules = #open
* supportingInformation ^slicing.description = ""
* supportingInformation ^slicing.ordered = false

* supportingInformation contains deviceId 0..1 MS
* supportingInformation[deviceId] ^short = "Identifies the chair or treatment unit required for the booking when a specific device must be used."
* supportingInformation[deviceId] ^definition = "Used when the appointment must be booked against a specific chair or treatment unit. If the practitioner is tied to a specific chair at the time of booking, this information shall be included here. The identifier.value is a logical reference to the unique identifier of that chair or treatment unit."

* supportingInformation[deviceId].identifier.value 1..1 MS
* supportingInformation[deviceId].identifier.value ^short = "Logical reference to the unique identifier of the required chair or treatment unit."
* supportingInformation[deviceId].identifier.value ^definition = "The logical reference to the unique identifier of the chair or treatment unit that must be used for the appointment booking."
* supportingInformation[deviceId].identifier.use 0..0
* supportingInformation[deviceId].reference 0..0
* supportingInformation[deviceId].display 0..0



// ---- Elements not used in this profile - restricted to 0..0 ----


// Appointment fields not used
* cancelationReason 0..0
* serviceCategory 0..0
* specialty 0..0
* appointmentType 0..0
* reasonCode 0..0
* reasonReference 0..0
* priority 0..0
* description 0..0
* supportingInformation 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* comment 0..0
* patientInstruction 0..0
* basedOn 0..0


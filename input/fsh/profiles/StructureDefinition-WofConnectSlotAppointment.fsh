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
* participant.actor 1..1
* participant.status 1..1

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


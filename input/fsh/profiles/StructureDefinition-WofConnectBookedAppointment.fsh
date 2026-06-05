Profile: WofConnectBookingAppointment
Parent: ihe-sched-appt // IHE ITI Appointment Profile
Id: wof-connect-booking-appointment
Title: "Wof Connect Booked Appointment"
Description: "Appointment representation of a booked visit. Inherits IHE Scheduling Appointment."
* ^status = #active

* id 1..1

* meta.profile 1..*

* status 1..1
* obeys wof-booked-status

* serviceType 1..*
* serviceType.coding 1..*
* serviceType.coding.system 1..1
* serviceType.coding.code 1..1

* start 1..1
* end 1..1
* requestedPeriod 1..1

* description 0..1

// Extension slicing
* extension 2..*
* extension contains
    Characteristic named characteristic 1..1 and
    AppointmentUpdate named appointmentUpdate 1..1

* reasonCode 0..*
* reasonCode.text 0..1

* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "actor"
* participant ^slicing.rules = #open
* participant ^slicing.description = ""
* participant ^slicing.ordered = false

* participant contains healthcareService 1..1 MS and practitionerRole 1..1 MS and patient 1..1 MS
* participant[healthcareService].actor only Reference(WofConnectHealthcareService)
* participant[healthcareService].status 1..1
* participant[practitionerRole].actor only Reference(WofConnectPractitionerRole)
* participant[practitionerRole].status 1..1
* participant[patient].actor only Reference(Patient)
* participant[patient].status 1..1



// ---- Elements not used in this profile — restricted to 0..0 ----

// Inherited from Resource / DomainResource

* modifierExtension 0..0


// Appointment fields not used
* cancelationReason 0..0
* serviceCategory 0..0
* specialty 0..0
* appointmentType 0..0
* reasonReference 0..0
* priority 0..0
* minutesDuration 0..0
* slot 0..0
* created 0..0
* comment 0..0
* patientInstruction 0..0
* basedOn 0..0
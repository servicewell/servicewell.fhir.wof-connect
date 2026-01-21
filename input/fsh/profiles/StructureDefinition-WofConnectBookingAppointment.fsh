Profile: WofConnectBookingAppointment
Parent: ihe-sched-appt // IHE ITI Appointment Profile
Id: wof-connect-booking-appointment
Title: "Wof Connect Booking Appointment"
Description: "Appointment representation of a booked visit (Frenda booking mapped to Appointment). Inherits IHE Scheduling Appointment."
* ^status = #active

* id 1..1

* meta 1..1
* meta.tag 1..*
* meta.tag.system 1..1
* meta.tag.code 1..1

* status 1..1
* obeys wof-booked-status

* serviceType 1..*
* serviceType.coding 1..*
* serviceType.coding.system 1..1
* serviceType.coding.code 1..1

* start 1..1
* end 1..1
* requestedPeriod 1..1

// Extension slicing
* extension 2..*
* extension contains
    WofConnectCharacteristic named characteristic 1..1 and
    WofConnectAppointmentUpdate named appointmentUpdate 1..1

* reasonCode 0..*
* reasonCode.text 0..1

* participant 2..2
* participant.actor 1..1
* participant.status 1..1

Invariant: wof-booked-status
Description: "Booked Appointment.status must be one of booked, cancelled, or fulfilled."
Severity: #error
Expression: "status = 'booked' or status = 'cancelled' or status = 'fulfilled'"
Profile: WofConnectSlotAppointment
Parent: ihe-sched-appt // IHE ITI Appointment Profile
Id: wof-connect-slot-appointment
Title: "Wof Connect Slot Appointment"
Description: "Appointment representation of an available slot (Frenda slot mapped to Appointment). Inherits IHE Scheduling Appointment."
* ^status = #active

* id 1..1

* meta 1..1
* meta.tag 1..*
* meta.tag.system 1..1
* meta.tag.code 1..1

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

// Enforce SlotId identifier via invariant
Invariant: wof-slot-identifier
Description: "A slot-derived Appointment SHALL include an identifier with the SlotId system and a value."
Severity: #error
Expression: "identifier.where(system = 'http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id' and value.exists()).exists()"
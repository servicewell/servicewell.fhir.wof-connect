// Alias: $sct  = http://snomed.info/sct

// Profile: ITBAppointment
// Parent: Appointment
// Title: "ITB Appointment"
// Description: "ITBAppointment is used to handle  .."

// * ^version = "1.0.0"

// * extension contains extBookingCommentFromPatient named extBookingCommentFromPatient 0..1 MS

// * id ^short = "Logical id of this artifact"
// * id ^definition = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."

// * meta.tag 0..* MS
// * meta.tag ^short = "Kod för tillgänglighet"
// * meta.tag ^slicing.discriminator.type = #value
// * meta.tag ^slicing.discriminator.path = "tag"
// * meta.tag ^slicing.rules = #open
// * meta.tag ^slicing.description = ""
// * meta.tag ^slicing.ordered = false

// * meta.tag contains 
// AvailableForCancellation 0..1 MS and
// AvailableForReschedule 0..1 MS and
// RequestForConfirmation 0..1

// * meta.tag[AvailableForCancellation].system = "http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForCancellation"
// * meta.tag[AvailableForCancellation].code.value
// * meta.tag[AvailableForCancellation].code.value ^short  = "Is of type bool"
// * meta.tag[AvailableForReschedule].system = "http://portal.wof.purified.link/fhir/CodeSystem/csAvailableForReschedule"
// * meta.tag[AvailableForReschedule].code.value
// * meta.tag[AvailableForReschedule].code.value ^short  = "Is of type bool"
// * meta.tag[RequestForConfirmation].system = "http://portal.wof.purified.link/fhir/CodeSystem/csWofTag-RequestConfirmation"
// * meta.tag[RequestForConfirmation].code.value

// * status 1..1 MS
// * status ^short = "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist"
// * status ^definition = "The overall status of the Appointment. Each of the participants has their own participation status which indicates their involvement in the process, however this status indicates the shared status. -> Vid första anrop vid bokning är denna exempelvis proposed."

// * contained ^slicing.discriminator.type = #value
// * contained ^slicing.discriminator.path = "contained"
// * contained ^slicing.rules = #open
// * contained ^slicing.description = ""
// * contained ^slicing.ordered = false

// * contained contains
// Patient 0..1 MS and
// Task 0..1 MS

// * contained[Patient] only Patient
// * contained[Task] only Task
// * contained[Task] ^short  = "only tasks with code = #communication-task"

// * serviceType 1..*
// * serviceType ^short = "Typ av behandling som skall bokas."
// * serviceType ^slicing.discriminator.type = #value
// * serviceType ^slicing.discriminator.path = "serviceType"
// * serviceType ^slicing.rules = #open
// * serviceType ^slicing.description = ""
// * serviceType ^slicing.ordered = false
// * serviceType contains 
// ITBServiceType 0..1 MS and
// Snomed 0..1 MS

// * serviceType[ITBServiceType] from ITBServiceType
// * serviceType[Snomed] from $sct
// * serviceType.coding.code MS

// * supportingInformation only Reference(ActivityDefinition)
//   * reference
//   * display
//   * id
// * start 0..1 MS
// * start ^short = "Starttid"

// * end 0..1 MS
// * end ^short = "Sluttid"

// * slot 0..* // denna ligger idag som contained, men det borde den inte göra? 
// * slot ^short = "The slots that this appointment is filling"
// * slot ^definition = "I ITBn mot OPUS hanterar vi inte denna referens då vi endast använder start och end för att beskriva tidsintervallet. Det kan dock vara aktuellt att använda slot-referensen vid hantering av t.ex. Pride osv."

// * participant 1..* MS
// * participant.actor 0..1 MS
//   * id MS
//   * display MS
//   * reference MS
// * participant.actor only Reference(Patient or PractitionerRole or HealthcareService or Device)
// * participant.actor ^definition = "Referens till PractitionerRole, kanske även HealthcareService  (Även Patient, Device)"
//   * display
//   * reference
// * participant.status 1..1 MS
// * participant.status ^short = "accepted | declined | tentative | needs-action"
// * participant.status ^definition = "Participation status of the actor."

// Extension: BookingCommentFromPatient
// Id: extBookingCommentFromPatient
// Title: "BookingCommentFromPatient"
// Context: ITBAppointment 
// * valueString 1..1 MS

// Mapping: muntra-booking
// Source: http://ki.purified.link/wof-portal/fhir/StructureDefinition/ITBAppointment
// Target: "muntra-bookings"
// Title: "MuntraBookings"


// * id -> "id"
// * participant.actor -> "booked_by_patient"
// * start -> "dtstart"
// * end -> "dtend"
// * minutesDuration -> "duration_in_minutes"
// * status -> "status"
// * serviceType -> "procedure"

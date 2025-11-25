Profile: ITBAppointmentResponse
Parent: AppointmentResponse
Title: "ITB AppointmentResponse"
Description: "ITBAppointmentResponse is used to handle  .."

* ^version = "1.0.0"
* id 1..1 MS
* id ^short = "Logical id of this artifact"

* appointment only Reference(Appointment)
* appointment 1..1 MS
* appointment ^short = "Appointment this response relates to"
  * id 1..1 MS


* actor 1..1 MS
* actor ^short = "TBD"
* actor only Reference(HealthcareService)
  * display 1..1 MS
  * id 1..1 MS

// ParticipantStatus is repeated in code
* participantStatus 1..1 MS
* participantStatus ^short = "accepted | declined | tentative | needs-action"

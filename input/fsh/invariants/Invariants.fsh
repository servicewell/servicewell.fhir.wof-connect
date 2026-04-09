
Invariant: no-id-requires-identifier
Description: "If id is missing, at least one identifier shall exist."
Severity: #error
Expression: "id.exists().not() implies identifier.exists()"



Invariant: ad-name-or-title
Description: "At least one of name or title must be present."
Severity: #error
Expression: "name.exists() or title.exists()"




Invariant: wof-booked-status
Description: "Booked Appointment.status must be one of booked, cancelled, or fulfilled."
Severity: #error
Expression: "status = 'booked' or status = 'cancelled' or status = 'fulfilled'"


Invariant: hcs-contained-location-required
Description: "A contained Location must be present unless the service is marked as virtual."
Severity: #error
Expression: "
characteristic.coding.where(code = 'virtual').exists()
or
contained.where($this is Location).exists()
"



Invariant: inv-practitionerrole-period
Description: "If present, period.end must be on or after period.start"
Severity: #error
Expression: "end.empty() or start <= end"

Invariant: inv-practitionerrole-org-or-healthcareservice
Description: "At least one of organization or healthcareService must be present."
Severity: #error
Expression: "organization.exists() or healthcareService.exists()"


Invariant: inv-schedule-planning
Description: "planningHorizon.start must be on or before planningHorizon.end"
Severity: #error
Expression: "start <= end"

// Enforce SlotId identifier via invariant
Invariant: wof-slot-identifier
Description: "A slot-derived Appointment SHALL include an identifier with the SlotId system and a value."
Severity: #error
Expression: "identifier.where(system = 'http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id' and value.exists()).exists()"


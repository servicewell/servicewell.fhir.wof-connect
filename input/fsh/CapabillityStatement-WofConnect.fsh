Instance: WofConnectCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* experimental = false
* publisher = "Service Well AB"
* name = "WofConnectCapabilityStatement"
* title = "WOF Connect Capability Statement"
* date = "2026-02-10T07:00:00+00:00"
* description = """
This CapabilityStatement defines the canonical domain model and API principles of **WOF Connect**,
owned and operated by Service Well.

**IHE Scheduling:** This server instantiates IHE.Scheduling.server (v1.0.0).

**Layering principle:**
- **WOF Connect** defines vendor-facing interoperability contracts.
- **WOF Portal** builds on WOF Connect to provide a single, enriched, canonical API.

**Domain separation principles:**
- **ActivityDefinition** represents a shared service concept and SHALL be identified by code, not by resource id.
- **HealthcareService** represents where care is performed.
- **Organization (Economy/Billing)** represents financial responsibility and is independent of service location.
- **PractitionerRole** represents a practitioner acting in a specific operational and financial context.

**Many-to-many relationships are intentional:**
- A HealthcareService MAY be associated with multiple Organizations.
- An Organization MAY provide services at multiple HealthcareServices.
- A Practitioner MAY have multiple PractitionerRoles across services and billing contexts.

**Integration principle:**
- External systems integrate with the platform by implementing **WOF Connect**.
- WOF Portal APIs MAY return enriched and aggregated views not available in WOF Connect.

This CapabilityStatement documents the canonical behavior of the WOF Connect API.
"""

* kind = #capability
* fhirVersion = #4.0.1
* format[+] = #json

* instantiates[+] = "https://profiles.ihe.net/ITI/Scheduling/CapabilityStatement/IHE.Scheduling.server|1.0.0"


// Declare the core resources that define the WOF Connect domain
* rest[0].mode = #server

// ------------------------------------------------------------
// Patient
// ------------------------------------------------------------
* rest[0].resource[+].type = #Patient
* rest[0].resource[=].profile = Canonical(WofConnectPatient)
* rest[0].resource[=].supportedProfile[+] = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePatient|1.1.0"
* rest[0].resource[=].documentation = "Patient resources returned by WOF Connect integrations. Supported interactions: search, read."

* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[=].documentation = "Search Patients: GET [base]/Patient?identifier=system|value."
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].documentation = "Read a Patient by logical id: GET [base]/Patient/{id}."
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = """
Filter by personal identity number using system|value.
Refer to the FHIR base profile defined by the national HL7 affiliate (e.g. HL7 Sweden).
In Sweden, use system=http://electronichealth.se/identifier/personnummer.
Example: GET [base]/Patient?identifier=http://electronichealth.se/identifier/personnummer|197601082394
"""

// ------------------------------------------------------------
// Appointment
// ------------------------------------------------------------
* rest[0].resource[+].type = #Appointment
* rest[0].resource[=].profile = Canonical(WofConnectAppointment)
* rest[0].resource[=].documentation = """
Appointment supports:
- Read/search interactions for retrieving booked appointments (patient-scoped).
- IHE ITI Scheduling operations for finding availability and booking ($find, $hold, $book).

Note: Some endpoints require patient context (e.g. personal identity number) for authorization and/or routing.
"""

// ---- Interactions ----
* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].documentation = "Read Appointment: GET [base]/Appointment/{id} (may require patient context)."
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[=].documentation = "Search Appointments (patient-scoped): GET [base]/Appointment?[params]"
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

// ---- Operations ----
* rest[0].resource[=].operation[+].name = "find"
* rest[0].resource[=].operation[=].definition = Canonical(FindAppointments)
* rest[0].resource[=].operation[=].documentation = "IHE $find to find available appointment opportunities within a time window."
* rest[0].resource[=].operation[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].operation[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].operation[+].name = "book"
* rest[0].resource[=].operation[=].definition = Canonical(BookAppointment)
* rest[0].resource[=].operation[=].documentation = "IHE $book to create/modify/cancel an appointment."
* rest[0].resource[=].operation[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].operation[=].extension[=].valueCode = #SHOULD

* rest[0].resource[=].operation[+].name = "hold"
* rest[0].resource[=].operation[=].definition = "https://profiles.ihe.net/ITI/Scheduling/OperationDefinition/appointment-hold"
* rest[0].resource[=].operation[=].documentation = "IHE $hold to temporarily hold an appointment opportunity."
* rest[0].resource[=].operation[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].operation[=].extension[=].valueCode = #SHALL

// ------------------------------------------------------------
// ActivityDefinition
// ------------------------------------------------------------
* rest[0].resource[+].type = #ActivityDefinition
* rest[0].resource[=].profile = Canonical(WofConnectActivityDefinition)
* rest[0].resource[=].documentation = "ActivityDefinition represents a shared service concept (treatment/visit type) identified by code."

* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].searchParam[+].name = "code"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ActivityDefinition-code"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Search by service concept code (e.g. WOF Connect service-type or service-type-id coding)."

// ------------------------------------------------------------
// HealthcareService
// ------------------------------------------------------------
* rest[0].resource[+].type = #HealthcareService
* rest[0].resource[=].profile = Canonical(WofConnectHealthcareService)
* rest[0].resource[=].documentation = """
HealthcareService represents where care is performed.
In WOF Connect, this typically corresponds to a clinic/location context
used for scheduling and availability.
"""

* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Search by HealthcareService identifier (e.g. clinic id or external system identifier)."

// ------------------------------------------------------------
// PractitionerRole
// ------------------------------------------------------------
* rest[0].resource[+].type = #PractitionerRole
* rest[0].resource[=].profile = Canonical(WofConnectPractitionerRole)
* rest[0].resource[=].documentation = """
PractitionerRole represents a practitioner acting in a specific operational context,
typically tied to a HealthcareService and used for scheduling and booking.
"""

* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].searchParam[+].name = "service"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-service"
* rest[0].resource[=].searchParam[=].type = #reference
* rest[0].resource[=].searchParam[=].documentation = "Filter by PractitionerRole.healthcareService (service)."

* rest[0].resource[=].searchParam[+].name = "practitioner"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
* rest[0].resource[=].searchParam[=].type = #reference
* rest[0].resource[=].searchParam[=].documentation = "Filter by PractitionerRole.practitioner."

// ------------------------------------------------------------
// Organization (Economy/Billing)
// ------------------------------------------------------------
* rest[0].resource[+].type = #Organization
* rest[0].resource[=].profile = Canonical(WofConnectBillingOrganization)
* rest[0].resource[=].documentation = """
Organization represents an economic or billing entity in WOF Connect.
Organizations are typically returned as part of Schedule and PractitionerRole context
and MAY be retrieved directly when referenced.
"""

* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

// Search by logical id
* rest[0].resource[=].searchParam[+].name = "_id"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = "Read or search Organization by logical id."

// Search by identifier (e.g. organization number)
* rest[0].resource[=].searchParam[+].name = "identifier"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = """
Search Organization by business or billing identifier using system|value.
The exact identifier system is vendor-specific but MUST be stable per endpoint.
"""

// ------------------------------------------------------------
// Schedule
// ------------------------------------------------------------
* rest[0].resource[+].type = #Schedule
* rest[0].resource[=].profile = Canonical(WofConnectSchedule)
* rest[0].resource[=].supportedProfile[+] = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/IHE.Scheduling.Schedule|1.0.0"
* rest[0].resource[=].supportedProfile[+] = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule|1.0.0"
* rest[0].resource[=].documentation = "Schedules represent planned working time and related scheduled context."

* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].interaction[+].code = #search-type
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

* rest[0].resource[=].searchParam[+].name = "actor"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Schedule-actor"
* rest[0].resource[=].searchParam[=].type = #reference
* rest[0].resource[=].searchParam[=].documentation = "Filter schedules by Schedule.actor (HealthcareService, Practitioner, PractitionerRole)."

* rest[0].resource[=].searchParam[+].name = "service-type"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Schedule-service-type"
* rest[0].resource[=].searchParam[=].type = #token
* rest[0].resource[=].searchParam[=].documentation = """
Filter schedules by service type (Schedule.serviceType).
Use token system|code where system is typically:
- http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id|{serviceTypeId}

Note: Schedules also carry endpoint-id as an additional coding for uniqueness, but endpoint-id alone is not a service type filter.
"""

* rest[0].resource[=].operation[+].name = "get-schedule-context"
* rest[0].resource[=].operation[=].definition = Canonical(GetScheduleContext)
* rest[0].resource[=].operation[=].documentation = """
Returns a searchset Bundle conforming to WofConnectScheduleContextOperationResponse, containing:
- Organization (WofConnectBillingOrganization)
- HealthcareService (WofConnectHealthcareService)
- ActivityDefinition (WofConnectActivityDefinition)
- Schedule (WofConnectSchedule)
- Practitioner (WofConnectPractitioner)
- PractitionerRole (WofConnectPractitionerRole)
"""

* rest[0].resource[=].operation[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].operation[=].extension[=].valueCode = #SHALL

// ------------------------------------------------------------
// Practitioner
// ------------------------------------------------------------
* rest[0].resource[+].type = #Practitioner
* rest[0].resource[=].profile = Canonical(WofConnectPractitioner)
* rest[0].resource[=].documentation = """
Practitioner resources are returned as scheduling context (e.g., GetScheduleContext)
and MAY be retrieved directly by reference.
"""

* rest[0].resource[=].interaction[+].code = #read
* rest[0].resource[=].interaction[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest[0].resource[=].interaction[=].extension[=].valueCode = #SHALL

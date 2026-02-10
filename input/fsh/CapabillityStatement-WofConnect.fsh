Instance: WOFPortalCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* experimental = false
* publisher = "Service Well AB"
* name = "WOFConnectCapabilityStatement"
* title = "WOF Connect Capability Statement"
* date = "2026-02-02T12:00:00+00:00"
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
- **BillingOrganization** represents financial responsibility and is independent of service location.
- **PractitionerRole** represents a practitioner acting in a specific operational and financial context.

**Many-to-many relationships are intentional:**
- A HealthcareService MAY be associated with multiple BillingOrganizations.
- A BillingOrganization MAY provide services at multiple HealthcareServices.
- A Practitioner MAY have multiple PractitionerRoles across services and billing contexts.

**Integration principle:**
- External systems integrate with the platform by implementing **WOF Connect**.
- WOF Portal APIs MAY return enriched and aggregated views not available in WOF Connect.

This CapabilityStatement documents the canonical behavior of the WOF Connect API.
"""


* kind = #capability
* fhirVersion = #4.0.1
* format[+] = #json
* format[+] = #xml

* instantiates[+] = "https://profiles.ihe.net/ITI/Scheduling/CapabilityStatement/IHE.Scheduling.server|1.0.0"


// Declare the core resources that define the WOF Connect domain
* rest.mode = #server

* rest.resource[+].type = #Patient
* rest.resource[=].profile = Canonical(WofConnectPatient)
* rest.resource[=].supportedProfile[+] = "http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePatient|1.1.0"
* rest.resource[=].documentation = "Portal-scoped locations used as areas. Supported interaction: search."
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[=].documentation = "Read a Patient by logical id: GET [base]/Patient/{id}."
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation =  
"""
Filter by personal identity number using system|value. 
Refer to the FHIR base profile defined by the national HL7 affiliate (e.g. HL7 Sweden).
In Sweden, use system=http://electronichealth.se/identifier/personnummer.
"""


* rest.resource[+].type = #Appointment
* rest.resource[=].profile = Canonical(WofConnectAppointment)
* rest.resource[=].operation[+].name = "find"
* rest.resource[=].operation[=].definition = "https://profiles.ihe.net/ITI/Scheduling/OperationDefinition/appointment-find"
* rest.resource[=].operation[=].documentation = "Document the find operation"
* rest.resource[=].operation[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation[=].extension[=].valueCode = #SHALL

* rest.resource[=].operation[+].name = "book"
* rest.resource[=].operation[=].definition = Canonical(BookAppointment)
* rest.resource[=].operation[=].documentation = "Document the book operation"
* rest.resource[=].operation[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation[=].extension[=].valueCode = #SHOULD

* rest.resource[=].operation[+].name = "hold"
* rest.resource[=].operation[=].definition = "https://profiles.ihe.net/ITI/Scheduling/OperationDefinition/appointment-hold"
* rest.resource[=].operation[=].documentation = "Document the hold operation"
* rest.resource[=].operation[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].operation[=].extension[=].valueCode = #SHALL


// * rest.resource[+].type = #ActivityDefinition
// * rest.resource[=].documentation = "Represents shared service concepts identified by code."
// * rest.resource[=].interaction[+].code = #read
// * rest.resource[=].interaction[+].code = #search-type

// * rest.resource[+].type = #HealthcareService
// * rest.resource[=].documentation = "Represents where healthcare services are performed."
// * rest.resource[=].interaction[+].code = #read
// * rest.resource[=].interaction[+].code = #search-type

// * rest.resource[+].type = #PractitionerRole
// * rest.resource[=].documentation = "Represents practitioners acting in specific operational and financial contexts."
// * rest.resource[=].interaction[+].code = #read
// * rest.resource[=].interaction[+].code = #search-type
// * rest.resource[=].searchParam[+].name = "service"
// * rest.resource[=].searchParam[=].type = #reference
// * rest.resource[=].searchParam[=].documentation = "Filter by PractitionerRole.service (Reference to HealthcareService)."


// * rest.resource[+].type = #Organization
// * rest.resource[=].documentation = """
// Organizations MAY conform to multiple profiles in WOF Portal.
// BillingOrganization is represented as Organization constrained by the OrganizationBilling profile.
// Clients MAY filter by profile when needed (e.g. using _profile), but searches by id and identifier are supported without profile constraints.
// """
// * rest.resource[=].supportedProfile[+] = Canonical(BillingOrganizationPortal)
// * rest.resource[=].interaction[+].code = #read
// * rest.resource[=].interaction[+].code = #search-type

// * rest.resource[=].searchParam[+].name = "_id"
// * rest.resource[=].searchParam[=].type = #token
// * rest.resource[=].searchParam[=].documentation = "Search by Organization resource id."
// * rest.resource[=].searchParam[+].name = "identifier"
// * rest.resource[=].searchParam[=].type = #token
// * rest.resource[=].searchParam[=].documentation = "Search by organization number using system|value."

// * rest.resource[+].type = #Schedule
// * rest.resource[=].documentation = "Represents planned working time, not bookable availability."

// * rest.resource[+].type = #Location
// * rest.resource[=].documentation = "Portal-scoped locations used as areas. Supported interaction: search."
// * rest.resource[=].interaction[+].code = #search-type
// * rest.resource[=].searchParam[+].name = "physical-type"
// * rest.resource[=].searchParam[=].type = #token
// * rest.resource[=].searchParam[=].documentation = "Filter by Location.physicalType (e.g., Area)."

// // Declare canonical operations exposed by WOF Portal
// * rest.operation[+].name = "getOffersContext"
// * rest.operation[=].definition = Canonical(GetOffersContext)
// * rest.operation[=].documentation = "Returns enriched offer context for presentation and selection."



Profile: WofConnectActivityDefinition
Parent: ActivityDefinition
Id: wof-connect-activitydefinition
Title: "Wof Connect ActivityDefinition"
Description: """
**ActivityDefinition** represents what can be offered and booked as a service.

It answers the question: __“What service is the patient booking?”__

"""

* id 1..1 MS

* meta.profile 1..* MS
* meta.profile ^short = "Profiles that this resource claims to conform to"
* meta.tag 1..*
* meta.tag.code 1..1 MS
* meta.tag.code ^short = "System the data originates from"
* meta.tag.system 1..1 MS
* meta.tag.system = "http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* status 1..1 MS
* status ^short = "Publication status of this activity definition"

* name 0..1
* name ^short = "Machine-friendly name"
* title 0..1
* title ^short = "Human-friendly title"
* description 0..1 MS
* description ^short = "Human-readable description of the service"



* code 1..1 MS
* code ^short = "Service type being offered"
* code.coding 1..* MS
* code.coding ^short = "Service type coding"
* code.coding.code 1..1 MS


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = ""
* code.coding ^slicing.ordered = false

* code.coding contains serviceTypeId 1..1 MS and serviceType 0..1 MS

* code.coding[serviceTypeId].system = "$service-type-id"
* code.coding[serviceTypeId].system ^short = "Type of identifersystem for service type."
* code.coding[serviceTypeId].code ^short = "Code for service type as recceived from sourcesystem. e.g primary key in db"


* code.coding[serviceType].system = Canonical(CSServiceType)
* code.coding[serviceType].system ^short = "Coding system for service type"
* code.coding[serviceType].code ^short = "Service type code"

* code.coding.display 0..1
* code.coding.display ^short = "Display for the service type code"
* code.text 0..1 MS
* code.text ^short = "Text representation of the service type"

* timing[x] insert Obligation($serverActor, #SHOULD:populate-if-known)
* timingDuration 0..1 MS
* timingDuration ^short = "Duration in minutes"
* timingDuration.value 1..1 MS
* timingDuration.value ^short = "Numeric duration"
* timingDuration.unit 1..1 
* timingDuration.unit ^short = "Unit display for the duration"
* timingDuration.system 1..1 MS
* timingDuration.code 1..1 MS
* timingDuration.system = $ucum 
* timingDuration.code = #min

* participant insert Obligation($serverActor, #SHOULD:populate)
* participant 0..* MS
* participant ^short = "Who can perform the service"
* participant.type 1..1 MS
* participant.type ^short = "Type of participant"
* participant.type = #practitioner 
* participant.role 1..1 MS
* participant.role ^short = "Role required to perform the service"
* participant.role.coding 1..* MS
* participant.role.coding ^short = "Role coding"
* participant.role.coding.system 1..1 MS
* participant.role.coding.system ^short = "Coding system for role"
* participant.role.coding.code 1..1 MS
* participant.role.coding.code ^short = "Role code"
* participant.role.coding.display 0..1
* participant.role.coding.display ^short = "Display for the role code"
* participant.role.coding.system = $csPractitionerRole 
* participant.role.text 0..1
* participant.role.text ^short = "Text representation of the role"

Invariant: ad-name-or-title
Description: "At least one of name or title must be present."
Severity: #error
Expression: "name.exists() or title.exists()"

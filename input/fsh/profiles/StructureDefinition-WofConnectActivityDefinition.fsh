
Alias: $csServiceType = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/service-type
Alias: $csServiceTypeId = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id
Alias: $ucum = http://unitsofmeasure.org
Alias: $csPractitionerRole = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/practitioner-role

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
* code.coding.system 1..1 MS
* code.coding.system = $csServiceType
* code.coding.system ^short = "Coding system for service type"
* code.coding.code 1..1 MS
* code.coding.code ^short = "Service type code"
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

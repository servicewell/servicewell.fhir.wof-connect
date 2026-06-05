
Profile: WofConnectActivityDefinition
Parent: ActivityDefinition
Id: wof-connect-activitydefinition
Title: "Wof Connect ActivityDefinition"
Description: """
**ActivityDefinition** represents what can be offered and booked as a service.

It answers the question: "What service is the patient booking?"

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

* title 1..1
* title ^short = "Human-friendly title"
* description 0..1 MS
* description ^short = "Human-readable description of the service"



* code 1..1 MS
* code ^short = "Service type being offered"
* code.coding 1..* MS
* code.coding ^short = "Service type coding"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = ""
* code.coding ^slicing.ordered = false

* code.coding contains serviceTypeId 1..1 MS and serviceType 0..1 MS

* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].system ^short = "Type of identifersystem for service type."
* code.coding[serviceTypeId].code ^short = "Code for service type as recceived from sourcesystem. e.g primary key in db"
* code.coding[serviceTypeId].code 1..1 MS



* code.coding.display 0..1
* code.coding.display ^short = "Display for the service type code"
* code.text 0..1 MS
* code.text ^short = "Text representation of the service type"

* timing[x] insert Obligation($serverActor, #SHOULD:populate-if-known)
* timing[x] only Duration
* timingDuration.comparator 0..0 
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
* participant.role.coding.code from VsPractitionerRole
* participant.role.coding.display 0..1
* participant.role.coding.display ^short = "Display for the role code"
* participant.role.coding.system = $csPractitionerRole 
* participant.role.text 0..1
* participant.role.text ^short = "Text representation of the role"


* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = ""
* contained ^slicing.ordered = true

* contained contains healthcareServiceList 1..1 MS
* contained[healthcareServiceList] ^short = "Resources contained within the activity definition resource"
* contained[healthcareServiceList] insert Obligation($serverActor, #SHALL:populate) 
* contained[healthcareServiceList] only WofConnectHealthcareServiceList
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"


// ---- Elements not used in this profile — restricted to 0..0 ----

// ActivityDefinition fields not used


* name 0..0
* subtitle 0..0
* experimental 0..0
* subject[x] 0..0
* date 0..0
* publisher 0..0
* contact 0..0
* useContext 0..0
* jurisdiction 0..0
* purpose 0..0
* usage 0..0
* copyright 0..0
* approvalDate 0..0
* lastReviewDate 0..0
* effectivePeriod 0..0
* topic 0..0
* author 0..0
* editor 0..0
* reviewer 0..0
* endorser 0..0
* relatedArtifact 0..0
* library 0..0
* kind 0..0
* profile 0..0
* intent 0..0
* priority 0..0
* doNotPerform 0..0
* location 0..0
* product[x] 0..0
* quantity 0..0
* dosage 0..0
* bodySite 0..0
* specimenRequirement 0..0
* observationRequirement 0..0
* observationResultRequirement 0..0
* transform 0..0
* dynamicValue 0..0
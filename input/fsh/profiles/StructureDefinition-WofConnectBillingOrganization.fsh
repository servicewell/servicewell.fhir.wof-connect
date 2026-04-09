Profile: WofConnectBillingOrganization
Parent: Organization
Id: wof-connect-billing-organization
Title: "Wof Connect Billing Organization"
Description: """
**BillingOrganization** represents the entity that is financially responsible for healthcare services.

It answers the question: "Who owns invoicing, customer accounts, and statutory reporting for a performed service?"

"""

* id ^short = "will populate business identifier value if its empty"
* id 1..1 MS

* meta.tag 1..*
* meta.tag.code 1..1 MS
* meta.tag.code ^short = "System the data originates from"
* meta.tag.system 1..1 MS
* meta.tag.system = "http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* meta.profile 1..* MS

* name insert Obligation($serverActor, #SHOULD:populate)

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains hsaIdentifier 0..1 MS
* identifier[hsaIdentifier].type.coding.code = #RI
* identifier[hsaIdentifier].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[hsaIdentifier].system 1..1
* identifier[hsaIdentifier].system ^short = "The source system. Shall correspond with meta.tag where system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* identifier[hsaIdentifier].value 1..1

* telecom 0..*
* telecom.system 1..1
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "telecom.system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = ""
* telecom ^slicing.ordered = false

* address 0..*

// ---- Elements not used in this profile — restricted to 0..0 ----

// Inherited from Resource / DomainResource
* modifierExtension 0..0


// Organization fields not used
* active 0..0
* type 0..0
* alias 0..0
* partOf 0..0
* contact 0..0
* endpoint 0..0


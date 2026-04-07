Profile: WofConnectBillingOrganization
Parent: Organization
Id: wof-connect-billing-organization
Title: "Wof Connect Billing Organization"
Description: """
**BillingOrganization** represents the entity that is financially responsible for healthcare services.

It answers the question: __“Who owns invoicing, customer accounts, and statutory reporting for a performed service?”__

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

* identifier contains businessIdentifier 1..1 MS
* identifier[businessIdentifier].type.coding.code = #RI
* identifier[businessIdentifier].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[businessIdentifier].system 1..1
* identifier[businessIdentifier].system ^short = "The source system. Shall correspond with meta.tag where system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* identifier[businessIdentifier].value 1..1

* telecom 0..*
* telecom.system 1..1
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "telecom.system"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = ""
* telecom ^slicing.ordered = false

* address 0..*

Invariant: bid-equals-sourcesystem
Description: "identifier[businessIdentifier].system must equal tag.system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
Severity: #error
Expression: "identifier[businessIdentifier].system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
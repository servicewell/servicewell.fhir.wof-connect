Profile: WofConnectPatient
Parent: Patient
Id: wof-connect-patient
Title: "Wof Connect Patient"
Description: "Patient returned by WOF Connect integrations."
* ^version = "1.0.0"
* ^status = #active

* obeys no-id-requires-identifier 

* id 1..1 MS

* meta 1..1 MS
* meta.id 0..1
* meta.id ^short = "ID for the meta element"
* meta.profile 1..* MS
* meta.profile ^short = "Profile URL for WOF Connect Patient"
* meta.versionId 0..1
* meta.versionId ^short = "Version ID for the meta element"
* meta.tag 1..*
* meta.tag.code 0..1 MS
* meta.tag.code insert Obligation($clientActor, #SHALL:populate)

* meta.tag.code ^short = "System the data originates from"
* meta.tag.system 1..1 MS
* meta.tag.system = "http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* meta.profile 1..* MS

* identifier 1..* MS
* identifier ^short = "Identifier for the patient"
* identifier.type.text MS
* identifier.type.text ^short = "Type of identifier"
* identifier.value 1..1
* identifier.value ^short = "Value of the identifier"
* identifier.system 0..1
* identifier.system ^short = "System that issued the identifier (e.g. hospital, government)"
* identifier.type.coding 0..* MS
* identifier.type.coding ^short = "Coded type of the identifier"
* identifier insert Obligation($serverActor, #SHOULD:populate)

* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type.text"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "type.coding.code"

* identifier ^slicing.rules = #open

* identifier contains personalNumber 1..1 MS
* identifier[personalNumber] ^short = "National personal number for the patient"

* identifier[personalNumber].type.coding.code = #PN
* identifier[personalNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[personalNumber].value 1..1
* identifier[personalNumber].value ^short = "Personal number value"

* identifier[personalNumber].system 1..1
* identifier[personalNumber].system from WofPersonalNumberSystemVS (extensible)
* identifier[personalNumber].system ^short = "System that issued the personal number"
* identifier[personalNumber].system ^comment = "see (url till namingsystem)"
* active 0..1 MS
* active ^short = "Whether the patient record is active or not"

* name 1..* MS
* name ^short = "Name of the patient"
* name.text 1..1 MS
* name.text ^short = "Full name of the patient"
* name.family 0..1
* name.family ^short = "Family name of the patient often called 'surname / last name'"
* name.given 0..1
* name.given ^short = "Given name of the patient often called 'first name'"
* name insert Obligation($serverActor, #SHOULD:populate)

* birthDate 1..1 MS
* birthDate ^short = "Birth date of the patient"
* birthDate insert Obligation($serverActor, #SHOULD:populate)

* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open

* telecom contains
    phone 0..1 MS and
    email 0..1 MS
* telecom[phone].system = #phone
* telecom[phone].system ^short = "Patient phone number"
* telecom[email].system = #email
* telecom[email].system ^short = "Patient email address"
* telecom insert Obligation($serverActor, #SHOULD:populate-if-known)


* extension contains PortalConsentToMarketing named consentToMarketing 0..1 MS
* extension[consentToMarketing] insert Obligation($serverActor, #SHOULD:populate)


Extension: PortalConsentToMarketing
Id: ext-consent-to-marketing
Title: "Portal Consent To Marketing"
Description: "Patient consent to marketing communication."
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^url = "http://portal.wof.purified.link/fhir/StructureDefinition/extConsentToMarketing"
* value[x] only boolean
* valueBoolean 1..1 MS





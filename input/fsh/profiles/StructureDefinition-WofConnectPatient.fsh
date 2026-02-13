Profile: WofConnectPatient
Parent: Patient
Id: wof-connect-patient
Title: "Wof Connect Patient"
Description: "Patient returned by WOF Connect integrations."

* ^version = "1.0.0"
* ^status = #active

* meta.profile 1..*
* meta.source 1..1



* identifier 1..* MS
* identifier ^short = "Identifier for the patient"
* identifier.type.text MS
* identifier.type.text ^short = "Type of identifier"
* identifier.value 1..1
* identifier.value ^short = "Value of the identifier"
* identifier.system 0..1
* identifier.system ^short = "System that issued the identifier (e.g. hospital, government)"
* identifier.type.coding 1..* MS
* identifier.type.coding ^short = "Coded type of the identifier"
* identifier insert Obligation($serverActor, #SHOULD:populate)

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type.coding.code"
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


* extension 1..* MS
* extension ^short = "Consent to receive marketing communication"
* extension.value[x] 0..1
* extension.value[x] ^short = "Value of the consent to marketing communication extension"
* extension insert Obligation($serverActor, #SHOULD:populate)



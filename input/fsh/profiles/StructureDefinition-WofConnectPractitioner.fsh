Profile: WofConnectPractitioner
Parent: Practitioner
Id: wof-connect-practitioner
Title: "Wof Connect Practitioner"
Description: "Practitioner resource as exposed by WOF Connect integrations."

* ^status = #active

* meta.profile 1..*

* id 1..1 MS
* id ^short = "Logical id of the practitioner"

* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open

* identifier contains businessIdentifier 1..1 MS

* identifier[businessIdentifier].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[businessIdentifier].type.coding.code = #RI

* identifier[businessIdentifier].system 1..1 MS
* identifier[businessIdentifier].value 1..1 MS

* active 1..1 MS
* active ^short = "Indicates whether the practitioner record is active"

* name 1..* MS
* name ^short = "Name of the practitioner"

* name.text 1..1 MS
* name.text ^short = "Full display name of the practitioner"

* name.family 0..1
* name.family ^short = "Family name (surname)"

* name.given 0..*
* name.given ^short = "Given name(s). WOF Connect uses the first given name for display."


* id insert Obligation($serverActor, #SHALL:populate)
* identifier insert Obligation($serverActor, #SHALL:populate)
* name insert Obligation($serverActor, #SHALL:populate)
* active insert Obligation($serverActor, #SHALL:populate)


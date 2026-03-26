Profile: WofConnectHealthcareService
Parent: HealthcareService
Id: wof-connect-healthcareservice
Title: "Wof Connect HealthcareService"
Description: """
HealthcareServicePortal represents the place and operational context where care is performed.   
It answers the question: **'Where can the patient receive a service?'**
"""

* ^version = "1.0.0"
* ^status = #active

* meta.tag 1..*
* meta.tag.code 1..1 MS
* meta.tag.code ^short = "System the data originates from"
* meta.tag.system 1..1 MS
* meta.tag.system = "http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* meta.profile 1..* MS

* id 1..1 MS
* id ^short = "logical id for Wof Connect HealthcareService"

* identifier 0..* MS
* identifier ^short = "Identifier for the healthcare service"
* identifier.system 1..1 MS
* identifier.system ^short = "System that issued the identifier (e.g. hospital, government)"
* identifier.value 1..1 MS
* identifier.value ^short = "Value of the identifier"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains businessIdentifier 0..1 MS
* identifier[businessIdentifier].type.coding.code = #RI
* identifier[businessIdentifier].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* identifier[businessIdentifier].system 1..1
* identifier[businessIdentifier].system ^short = "The source system. Shall correspond with meta.tag where system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system"
* identifier[businessIdentifier].value 1..1
* providedBy 1..1 MS
* providedBy ^short = "Organization that provides the healthcare service"
* providedBy only Reference
* providedBy.display 1..1 MS
* providedBy.display ^short = "Name of the organization that provides the healthcare service"

* name 1..1 MS
* name ^short = "Name of the healthcare service"

* telecom 0..* MS

* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open

* telecom contains
    phone 0..1 MS and
    email 0..1 MS

* telecom[phone].system = #phone
* telecom[email].system = #email

* location 1..* MS
* location ^short = "Location where the healthcare service is provided"
* location only Reference(Location)

* contained 0..* MS
* contained ^short = "Resources contained within the healthcare service resource"
* contained only Location or Organization

* characteristic 0..* MS

* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "coding.system"
* characteristic ^slicing.rules = #open

* characteristic contains
    codeCharacteristic 0..1 MS and
    scheduleCharacteristic 0..1 MS

* characteristic[codeCharacteristic].coding 1..1 MS
* characteristic[codeCharacteristic].coding ^short = "Coded characteristic of the healthcare service"
* characteristic[codeCharacteristic].coding.system 1..1 MS
* characteristic[codeCharacteristic].coding.system ^short = "System that defines the coded characteristic"
* characteristic[codeCharacteristic].coding.code 1..1 MS
* characteristic[codeCharacteristic].coding.code ^short = "Code that defines the coded characteristic"
* characteristic[codeCharacteristic].coding.display 1..1 MS
* characteristic[codeCharacteristic].coding.display ^short = "Display text for the coded characteristic"

* characteristic[scheduleCharacteristic].coding 1..*
* characteristic[scheduleCharacteristic].coding ^short = "Coded schedule characteristic of the healthcare service"

* id insert Obligation($serverActor, #SHALL:populate)
* name insert Obligation($serverActor, #SHALL:populate)
* providedBy insert Obligation($serverActor, #SHALL:populate)
* identifier insert Obligation($serverActor, #SHALL:populate)
* location insert Obligation($serverActor, #SHALL:populate)

Invariant: hcs-contained-location-required
Description: "A contained Location must be present unless the service is marked as virtual."
Severity: #error
Expression: "
characteristic.coding.where(code = 'virtual').exists()
or
contained.where($this is Location).exists()
"


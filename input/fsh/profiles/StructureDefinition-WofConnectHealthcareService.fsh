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

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = false

* identifier contains
    hsaIdentifier 0..1 MS

* identifier[hsaIdentifier].value 1..1 MS
* identifier[hsaIdentifier].system 1..1 MS
* identifier[hsaIdentifier].system = "urn:oid:1.2.752.129.2.1.4.1"


* providedBy 1..1 MS
* providedBy ^short = "Organization that provides the healthcare service"
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

* characteristic 0..* MS

* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "coding.code"
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
* characteristic[scheduleCharacteristic].coding.system = Canonical(WCCharacteristic)
* characteristic[scheduleCharacteristic].coding.code from VsWCCharacteristic

* id insert Obligation($serverActor, #SHALL:populate)
* name insert Obligation($serverActor, #SHALL:populate)
* providedBy insert Obligation($serverActor, #SHALL:populate)
* identifier insert Obligation($serverActor, #SHALL:populate)
* location insert Obligation($serverActor, #SHALL:populate)

// ---- Elements not used in this profile - restricted to 0..0 ----

// Inherited from Resource / DomainResource


// HealthcareService fields not used
* active 0..0
* category 0..0
* type 0..0
* specialty 0..0
* comment 0..0
* extraDetails 0..0
* photo 0..0
* coverageArea 0..0
* serviceProvisionCode 0..0
* eligibility 0..0
* program 0..0
* communication 0..0
* referralMethod 0..0
* appointmentRequired 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0
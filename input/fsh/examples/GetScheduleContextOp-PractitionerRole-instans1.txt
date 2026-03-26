Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
//Alias: $csPractitionerRole = http://portal.wof.purified.link/fhir/CodeSystem/csPractitionerRole

Instance: 2087a288-8831-835d-c99f-e53aa04c0d9e
InstanceOf: WofConnectPractitionerRole
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* meta.source = "frenda"
* active = true
* period.start = "2025-10-23T09:19:00+02:00"
* practitioner = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* organization = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* healthcareService = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* code = $csPractitionerRole#Utv "Utv"
* code.text = "Utv"
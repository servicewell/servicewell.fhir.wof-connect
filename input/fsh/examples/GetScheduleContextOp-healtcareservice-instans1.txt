Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system

Instance: 48e428b0-fb37-4224-84df-5783a301a9da
InstanceOf: WofConnectHealthcareService
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice"
* meta.source = "frenda"
* identifier.system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier.value = "hsaid55"
* providedBy = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* name = "Service Well AB"
* telecom[0].system = #phone
* telecom[=].value = "070-738 76 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "kontakt@servicewell.se"
* telecom[=].use = #work
* location = Reference(adressId)
* characteristic.text = "Child Patient Threshold"
* characteristic.extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-characteristic"
* characteristic.extension.extension.url = "scheduling"
* characteristic.extension.extension.extension.url = "childPatientThreshold"
* characteristic.extension.extension.extension.valueInteger = 20
* contained = adressId

Instance: adressId
InstanceOf: Location
Usage: #inline
* physicalType.text = "Site"
* physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* address.use = #work
* address.line = "Grönegatan 1C"
* address.city = "Lund"
* address.postalCode = "22224"
* address.district = "33"
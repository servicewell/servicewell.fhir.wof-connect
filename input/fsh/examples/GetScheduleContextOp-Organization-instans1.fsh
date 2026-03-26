Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system

Instance: 48e428b0-fb37-4224-84df-5783a301a9da-test2
InstanceOf: WofConnectBillingOrganization
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-economy-organization"
* meta.source = "frenda"
* name = "Service Well AB"
* identifier.system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier.value = "hsaid55"
* telecom[0].system = #phone
* telecom[=].value = "070-738 76 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "kontakt@servicewell.se"
* telecom[=].use = #work
* address.use = #work
* address.type = #postal
* address.line = "Grönegatan 1C"
* address.postalCode = "22224"
* address.city = "Lund"
* address.country = "SE"
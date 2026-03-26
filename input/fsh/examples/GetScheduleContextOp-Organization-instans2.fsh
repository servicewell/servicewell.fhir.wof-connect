Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system

Instance: 48e428b0-fb37-4224-84df-5783a301a9da-test
InstanceOf: WofConnectBillingOrganization
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-economy-organization"
* meta.source = "frenda"
* name = "Södertandläkarna Gränden"
* identifier.system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier.value = "SE1234567890-GXDV"
* telecom[0].system = #phone
* telecom[=].value = "08-4421160"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "Granden@sodertandlakarna.se"
* telecom[=].use = #work
* address.use = #work
* address.type = #postal
* address.line = "Västgötagränd 9"
* address.postalCode = "11828"
* address.city = "Stockholm"
* address.country = "SE"
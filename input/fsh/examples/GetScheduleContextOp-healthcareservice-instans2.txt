Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system

Instance: 9bef346f-7264-4f96-86cd-3f0e7f9186bb
InstanceOf: WofConnectHealthcareService
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice"
* meta.source = "frenda"
* identifier.system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier.value = "SE1234567890-FD78"
* providedBy = Reference(Organization/9bef346f-7264-4f96-86cd-3f0e7f9186bb) "Södertandläkarna Bågen"
* name = "Södertandläkarna Bågen"
* telecom[0].system = #phone
* telecom[=].value = "08-4421160"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "bagen@sodertandlakarna.se"
* telecom[=].use = #work
* location = Reference(adressId)
* characteristic.text = "Child Patient Threshold"
* characteristic.extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-characteristic"
* characteristic.extension.extension.url = "scheduling"
* characteristic.extension.extension.extension.url = "childPatientThreshold"
* characteristic.extension.extension.extension.valueInteger = 20
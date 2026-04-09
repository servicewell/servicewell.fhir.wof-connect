Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system

Instance: 701e76bc-117c-4ab6-8f07-2e88242de54c
InstanceOf: WofConnectPractitioner
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitioner"
* meta.source = "frenda"
* identifier[0].system = "https://frenda.se/id/treater"
* identifier[=].value = "701e76bc-117c-4ab6-8f07-2e88242de54c"
* identifier[+].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[=].value = "197001239297"
* active = true
* name[0].text = "Tandhygienist Behandlare Olsson"
* name[=].family = "Olsson"
* name[=].given = "Behandlare"
* name[+].text = "Tandhygienist Behandlare Persson"
* name[=].family = "Persson"
* name[=].given = "Behandlare"
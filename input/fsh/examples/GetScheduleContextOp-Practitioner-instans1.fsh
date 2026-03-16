Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system

Instance: 3dc38cf1-2039-40f1-b85f-6164f202c235
InstanceOf: WofConnectPractitioner
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitioner"
* meta.source = "frenda"
* identifier[0].system = "https://frenda.se/id/treater"
* identifier[=].value = "3dc38cf1-2039-40f1-b85f-6164f202c235"
* identifier[+].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[=].value = "SE165560772419-10K8"
* active = true
* name.text = "Utv Mattias Ekberg"
* name.family = "Ekberg"
* name.given = "Mattias"
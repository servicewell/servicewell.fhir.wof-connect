Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $service-type = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/service-type
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id
Alias: $practitioner-role = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/practitioner-role

Instance: 696b3685-dd39-4781-b410-0e700a8ba010-test
InstanceOf: WofConnectActivityDefinition
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* meta.source = "frenda"
* status = #active
* name = "Akut - vuxen"
* title = "Akut - vuxen"
* description = "Akuttid för vuxna patienter"
* code.coding[0].system = "http://example.org"
* code.coding[0].code = #akut "Akut - vuxen" //riktig data från frenda
* code.text = "Akuttid för vuxna patienter"
* timingDuration = 30 'min' "minute"
* participant.type = #practitioner
* participant.role = $practitioner-role#utv "Utv"
* participant.role.text = "Utv"
* contained = HealthcareServiceListId
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: HealthcareServiceListId
InstanceOf: WofConnectHealthcareServiceList
Usage: #inline
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* status = #current
* mode = #working
* entry.item = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da-test) "Service Well AB"

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* code.coding[+] = $service-type#dummy-id "Temporary dummy to satisfy fixed system"
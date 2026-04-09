

Instance: 0a2a4f2a-aa05-4cfd-a4ae-cd6ebcd95df4
InstanceOf: WofConnectActivityDefinition
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* meta.source = "frenda"
* status = #active
* name = "Airflow"
* title = "Airflow"
* description = "Airflow"
* code.coding[serviceTypeId].code = #profylax
* code.text = "Airflow"
* timingDuration = 30 'min' "minute"
* participant.type = #practitioner
* participant.role = $practitioner-role#tandhygienist "Tandhygienist"
* participant.role.text = "Tandhygienist"
* contained = HealthcareServiceListId
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: HealthcareServiceListId-test
InstanceOf: WofConnectHealthcareServiceList
Usage: #inline
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* status = #current
* mode = #working
* entry.item = Reference(HealthcareService/9bef346f-7264-4f96-86cd-3f0e7f9186bb) "Södertandläkarna Bågen"
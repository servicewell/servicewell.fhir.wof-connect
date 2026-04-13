Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $cs-service-type = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/cs-service-type
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id
Alias: $practitioner-role = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/practitioner-role

Instance: 1f6e2485-bf7b-4f6b-0f01-9ec924b584ba
InstanceOf: Bundle
Usage: #example
* type = #searchset
* meta.lastUpdated = "1996-07-07T00:00:00Z"
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule-context-operation-response"
* entry[0].resource = aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d
* entry[+].resource = dd340ea0-1da4-0f04-129a-3cb4b4f122a7
* entry[+].resource = ae08efb4-fa59-6ae2-c5ac-e5c7c797c567
* entry[+].resource = 78d12e13-3d03-b637-e78c-a24b63f163ff
* entry[+].resource = a6f2f97d-4d1f-4a63-e341-f55e150b46c3
* entry[+].resource = 94cb10b8-0e6a-3742-1016-a77f05148946
* entry[+].resource = c7f70565-e9c1-6431-454d-28c7ca28e822
* entry[+].resource = a7f771ae-d237-257b-e475-61e15a1c01cb
* entry[+].resource = 4e0d4f89-e182-5309-a35e-187ffc90efe3
* entry[+].resource = 6e7212f9-01c8-2a16-2730-57ea7f5b06d3
* entry[+].resource = d5e02055-9d89-e4c9-e459-58ca32380ab7
* entry[+].resource = 82c57164-5fb0-066a-fa6a-c26b17dd0913
* entry[+].resource = cee27e61-908c-bd36-6b36-17a99b972524
* entry[+].resource = eb8b29d5-7aa5-8a6a-4296-006ab45ead91
//* entry[+].resource = 3cd0fb72-5255-035c-690a-c60e1112f19c
* entry[+].resource = ce076ef2-bdd6-9cc9-4f0b-ec04bad4d9bd
* entry[+].resource = 6dcaf480-e672-0b83-a311-e1482db83829
* total = 22

Instance: aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d
InstanceOf: WofConnectHealthcareService
Usage: #inline
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice"
* meta.tag = $pms-system#muntra
* name = "Service Well AB"
* providedBy = Reference(882) "Service Well AB"
* telecom.system = #email
* telecom.value = "marcus.lindblom@servicewell.se"
* location = Reference(loc-aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d)
* contained.resourceType = "Location"
* contained.id = "loc-aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d"
* contained.name = "Service Well AB"
* contained.address.line = "Grönegatan 1C"
* contained.address.city = "Lund"
* contained.address.postalCode = "22224"
* contained.position.latitude = 55.7031053
* contained.position.longitude = 13.1913256

Instance: dd340ea0-1da4-0f04-129a-3cb4b4f122a7
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #4
* title = "Tandhygienistbehandling"
* code.text = "Tandhygienistbehandling"
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/882"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)
* timingDuration = 30 'min' "minute"
* status = #active

Instance: ae08efb4-fa59-6ae2-c5ac-e5c7c797c567
InstanceOf: WofConnectSchedule
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #4
* serviceType.text = "Tandhygienistbehandling"
* actor[0] = Reference(aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d) "Service Well AB"
* actor[+] = Reference(78d12e13-3d03-b637-e78c-a24b63f163ff) "Espen Lever"
* actor[+] = Reference(PractitionerRole/7a67398b-5b22-9d00-6a21-33785526b420) "Espen Lever"
* planningHorizon.start = "2026-04-10"
* planningHorizon.end = "2026-04-10"

Instance: 78d12e13-3d03-b637-e78c-a24b63f163ff
InstanceOf: WofConnectPractitioner
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitioner"
* identifier.system = "urn:muntra:caregiver-id"
* identifier.value = "2697"
* active = true
* name.text = "Espen Lever"
* name.family = "Lever"
* name.given = "Espen"

Instance: a6f2f97d-4d1f-4a63-e341-f55e150b46c3
InstanceOf: WofConnectPractitionerRole
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* active = true
* period.start = "1996-07-07T00:00:00.000Z"
* code = $practitioner-role#dentist "dentist"
* code.text = "Tandläkare"
* practitioner = Reference(Practitioner/2697) "Espen Lever"
* organization = Reference(Organization/882) "Service Well AB"
* healthcareService = Reference(HealthcareService/882) "Service Well AB"

Instance: 94cb10b8-0e6a-3742-1016-a77f05148946
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* title = "Basundersökning av tandläkare"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #2
* code.text = "Basundersökning av tandläkare"
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/882"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)
* timingDuration = 30 'min' "minute"
* status = #active

Instance: c7f70565-e9c1-6431-454d-28c7ca28e822
InstanceOf: WofConnectSchedule
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #2
* serviceType[=].text = "Basundersökning av tandläkare"
* serviceType[+] = $service-type-id#4 "Tandhygienistbehandling"
* serviceType[=].text = "Tandhygienistbehandling"
* actor[0] = Reference(aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d) "Service Well AB"
* actor[+] = Reference(a7f771ae-d237-257b-e475-61e15a1c01cb) "Marcus Lindblom"
* actor[+] = Reference(PractitionerRole/84a09b25-0217-7aef-135f-0283dd772a32) "Marcus Lindblom"
* planningHorizon.start = "2026-04-10"
* planningHorizon.end = "2026-04-10"

Instance: a7f771ae-d237-257b-e475-61e15a1c01cb
InstanceOf: WofConnectPractitioner
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitioner"
* identifier.system = "urn:muntra:caregiver-id"
* identifier.value = "2699"
* active = true
* name.text = "Marcus Lindblom"
* name.family = "Lindblom"
* name.given = "Marcus"

Instance: 4e0d4f89-e182-5309-a35e-187ffc90efe3
InstanceOf: WofConnectPractitionerRole
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* active = true
* period.start = "1996-07-07T00:00:00.000Z"
* code = $practitioner-role#dentist "dentist"
* code.text = "Tandläkare"
* practitioner = Reference(Practitioner/2699) "Marcus Lindblom"
* organization = Reference(Organization/882) "Service Well AB"
* healthcareService = Reference(HealthcareService/882) "Service Well AB"

Instance: 6e7212f9-01c8-2a16-2730-57ea7f5b06d3
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* title = "Basundersökning av tandhygienist"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #3
* code.text = "Basundersökning av tandhygienist"
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/882"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)
* timingDuration = 30 'min' "minute"
* status = #active

Instance: d5e02055-9d89-e4c9-e459-58ca32380ab7
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* title = "sdfbsdfg"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #sdfbsdfg
* code.text = "sdfbsdfg"
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/882"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)
* timingDuration = 30 'min' "minute"
* status = #active

Instance: 82c57164-5fb0-066a-fa6a-c26b17dd0913
InstanceOf: WofConnectSchedule
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #2
* serviceType[=].text = "Basundersökning av tandläkare"
* serviceType[+] = $service-type-id#3 "Basundersökning av tandhygienist"
* serviceType[=].text = "Basundersökning av tandhygienist"
* serviceType[+] = $service-type-id#6 "sdfbsdfg"
* serviceType[=].text = "sdfbsdfg"
* actor[0] = Reference(aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d) "Service Well AB"
* actor[+] = Reference(cee27e61-908c-bd36-6b36-17a99b972524) "Linus Sjöberg"
* actor[+] = Reference(PractitionerRole/9d6423c5-37b2-2c1d-7141-9564c5140cf9) "Linus Sjöberg"
* planningHorizon.start = "2026-04-10"
* planningHorizon.end = "2026-04-10"

Instance: cee27e61-908c-bd36-6b36-17a99b972524
InstanceOf: WofConnectPractitioner
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitioner"
* identifier.system = "urn:muntra:caregiver-id"
* identifier.value = "2703"
* active = true
* name.text = "Linus Sjöberg"
* name.family = "Sjöberg"
* name.given = "Linus"

Instance: eb8b29d5-7aa5-8a6a-4296-006ab45ead91
InstanceOf: WofConnectPractitionerRole
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* active = true
* period.start = "1996-07-07T00:00:00.000Z"
* code = $practitioner-role#dentist "dentist"
* code.text = "Tandläkare"
* practitioner = Reference(Practitioner/2703) "Linus Sjöberg"
* organization = Reference(Organization/882) "Service Well AB"
* healthcareService = Reference(HealthcareService/882) "Service Well AB"

Instance: ce076ef2-bdd6-9cc9-4f0b-ec04bad4d9bd
InstanceOf: WofConnectPractitioner
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitioner"
* identifier.system = "urn:muntra:caregiver-id"
* identifier.value = "2706"
* active = true
* name.text = "Matilda Clevesköld"
* name.family = "Clevesköld"
* name.given = "Matilda"

Instance: 6dcaf480-e672-0b83-a311-e1482db83829
InstanceOf: WofConnectPractitionerRole
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* active = true
* period.start = "1996-07-07T00:00:00.000Z"
* code = $practitioner-role#dentist "dentist"
* code.text = "Tandläkare"
* practitioner = Reference(Practitioner/2706) "Matilda Clevesköld"
* organization = Reference(Organization/882) "Service Well AB"
* healthcareService = Reference(HealthcareService/882) "Service Well AB"



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////    matilda saknar procedures, och därav blir detta exemplet ogiltlig enl conformance ////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*Instance: 3cd0fb72-5255-035c-690a-c60e1112f19c
InstanceOf: WofConnectSchedule
Usage: #inline
* meta.tag = $pms-system#muntra
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* actor[0] = Reference(aed9d881-a5e7-92ab-0caf-9d2a5fe1df8d) "Service Well AB"
* actor[+] = Reference(ce076ef2-bdd6-9cc9-4f0b-ec04bad4d9bd) "Matilda Clevesköld"
* actor[+] = Reference(PractitionerRole/72a85e6e-fac4-9449-c7cf-8bd851c114e3) "Matilda Clevesköld"
* planningHorizon.start = "2026-04-10"
* planningHorizon.end = "2026-04-10"

*/





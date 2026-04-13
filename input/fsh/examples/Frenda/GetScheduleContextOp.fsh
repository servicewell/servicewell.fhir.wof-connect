Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $wc-characteristic = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/wc-characteristic
Alias: $cs-service-type = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/cs-service-type
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id

Instance: c483eca8-e7af-b936-6601-b744ba70df44
InstanceOf: WofConnectScheduleContextOperationResponse
Usage: #example
* type = #searchset
* meta.lastUpdated = "2026-04-08T14:39:42+02:00"
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule-context-operation-response"
* entry[0].resource = 48e428b0-fb37-4224-84df-5783a301a9da
* entry[+].resource = Inline-Instance-for-c483eca8-e7af-b936-6601-b744ba70df44-1
* entry[+].resource = 696b3685-dd39-4781-b410-0e700a8ba010
* entry[+].resource = 4e10ed9b-814e-41c9-999f-3866de9d5343
* entry[+].resource = 949adf08-f5b9-4fca-8423-0e6824b1e3c7
* entry[+].resource = 70de741d-8dd9-40e8-b72a-98b1e2e15381
* entry[+].resource = b358da0c-19e8-4c21-b534-e21133c700ce
* entry[+].resource = 907d178f-e59d-4eee-8529-df62c8a8d1be
* entry[+].resource = ea80a74c-7e6c-86fc-00e1-d9fe9cc5df59
* entry[+].resource = 3dc38cf1-2039-40f1-b85f-6164f202c235
* entry[+].resource = 2087a288-8831-835d-c99f-e53aa04c0d9e
* entry[+].resource = 679e6b0a-0f5e-c873-ad31-faa0e4b9f1bd
* entry[+].resource = 8a6057fa-3dce-413f-8da1-379b4c7d63d4
* entry[+].resource = 866f2aca-10f8-152b-4b51-bbfda4b8966d
* entry[+].resource = f108f69f-23dd-8b34-b12e-4a44a42d4b84
* entry[+].resource = 61c533b7-bd2b-4b4c-b092-d1cf49e3d9f8
* entry[+].resource = 13db6244-e8ab-a507-402b-8602203da705
* total = 17

Instance: 48e428b0-fb37-4224-84df-5783a301a9da
InstanceOf: WofConnectBillingOrganization
Usage: #inline
* meta.tag = $pms-system#frenda
* name = "Service Well AB"
* identifier[hsaIdentifier].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[hsaIdentifier].value = "hsaid55"
* telecom[0].system = #phone
* telecom[=].value = "070-738 76 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "kontakt@servicewell.se"
* telecom[=].use = #work
* address.use = #work
* address.type = #postal
* address.line = "Gr&#246;negatan 1C"
* address.postalCode = "22224"
* address.city = "Lund"
* address.country = "SE"

Instance: Inline-Instance-for-c483eca8-e7af-b936-6601-b744ba70df44-1
InstanceOf: WofConnectHealthcareService
Usage: #inline
* id = "48e428b0-fb37-4224-84df-5783a301a9da"
* identifier[hsaIdentifier].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[hsaIdentifier].value = "hsaid55"
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice"
* providedBy = Reference(48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* name = "Service Well AB"
* telecom[0].system = #phone
* telecom[=].value = "070-738 76 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "kontakt@servicewell.se"
* telecom[=].use = #work
* location = Reference(adressId)
* characteristic[0].text = "Child Patient Threshold"
* characteristic[=].extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-characteristic"
* characteristic[=].extension.extension.url = "scheduling"
* characteristic[=].extension.extension.extension.url = "childPatientThreshold"
* characteristic[=].extension.extension.extension.valueInteger = 20
* characteristic[+] = $wc-characteristic#scheduling-accepts-new "New booking available"
* characteristic[+] = $wc-characteristic#scheduling-accepts-reschedule "Reschedule available"
* characteristic[+] = $wc-characteristic#scheduling-accepts-cancellation "Cancellation available"
* contained.resourceType = "Location"
* contained.id = "adressId"
* contained.physicalType.text = "Site"
* contained.physicalType = urn:oid:2.16.840.1.113883.4.642.3.328#si
* contained.address.use = #work
* contained.address.line = "Grönegatan 1C"
* contained.address.city = "Lund"
* contained.address.postalCode = "22224"
* contained.address.district = "33"


Instance: 696b3685-dd39-4781-b410-0e700a8ba010
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* status = #active
* title = "Akut - vuxen"
* description = "Akuttid för vuxna patienter"
* code.coding[0] = $cs-service-type#akut "Akut - vuxen"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #696b3685-dd39-4781-b410-0e700a8ba010
* code.text = "Akuttid för vuxna patienter"
* timingDuration = 30 'min' "minute"
* participant[0].type = #practitioner
* participant[=].role = $practitioner-role#utv "Utv"
* participant[=].role.text = "Utv"
* participant[+].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* participant[+].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: 4e10ed9b-814e-41c9-999f-3866de9d5343
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* status = #active
* title = "Akut - barn"
* description = "Akuttid för barnpatienter."
* code.coding[0] = $cs-service-type#akut "Akut - barn"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #4e10ed9b-814e-41c9-999f-3866de9d5343
* code.text = "Akuttid för barnpatienter."
* timingDuration = 30 'min' "minute"
* participant.type = #practitioner
* participant.role = $practitioner-role#utv "Utv"
* participant.role.text = "Utv"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: 949adf08-f5b9-4fca-8423-0e6824b1e3c7
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* status = #active
* title = "Undersökning"
* description = "För ej akuta ärenden."
* code.coding[0] = $cs-service-type#undersokning "Undersökning"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #949adf08-f5b9-4fca-8423-0e6824b1e3c7
* code.coding[serviceTypeId].display = "Undersökning"
* code.text = "För ej akuta ärenden."
* timingDuration = 50 'min' "minute"
* participant[0].type = #practitioner
* participant[=].role = $practitioner-role#utv "Utv"
* participant[=].role.text = "Utv"
* participant[+].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* participant[+].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: 70de741d-8dd9-40e8-b72a-98b1e2e15381
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* status = #active
* title = "Tappad fyllning"
* description = "Tappad fyllning utan smärta"
* code.coding[0] = $cs-service-type#fyllningsterapi "Tappad fyllning"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #70de741d-8dd9-40e8-b72a-98b1e2e15381
* code.text = "Tappad fyllning utan smärta"
* timingDuration = 30 'min' "minute"
* participant.type = #practitioner
* participant.role = $practitioner-role#utvecklare "Utvecklare"
* participant.role.text = "Utvecklare"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: b358da0c-19e8-4c21-b534-e21133c700ce
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* status = #active
* title = "Extraktion"
* description = "Extraktion"
* code.coding[0] = $cs-service-type#extraktion "Extraktion"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #b358da0c-19e8-4c21-b534-e21133c700ce
* code.text = "Extraktion"
* timingDuration = 40 'min' "minute"
* participant[0].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* participant[+].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: 907d178f-e59d-4eee-8529-df62c8a8d1be
InstanceOf: WofConnectActivityDefinition
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-activitydefinition"
* status = #active
* title = "Airflow - kampanj"
* description = "Airflow - kampanj"
* code.coding[0] = $cs-service-type#behandling "Airflow - kampanj"
* code.coding[serviceTypeId].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* code.coding[serviceTypeId].code = #907d178f-e59d-4eee-8529-df62c8a8d1be
* code.text = "Airflow - kampanj"
* timingDuration = 30 'min' "minute"
* participant[0].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* participant[+].type = #practitioner
* participant[=].role = $practitioner-role#utvecklare "Utvecklare"
* participant[=].role.text = "Utvecklare"
* contained[healthcareServiceList].resourceType = "List"
* contained[healthcareServiceList].id = "HealthcareServiceListId"
* contained[healthcareServiceList].status = #current
* contained[healthcareServiceList].mode = #working
* contained[healthcareServiceList].meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-healthcareservice-list"
* contained[healthcareServiceList].entry.item.reference = "HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da"
* contained[healthcareServiceList].entry.item.display = "Service Well AB"
* extension.url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-list-reference"
* extension.valueReference = Reference(HealthcareServiceListId)

Instance: ea80a74c-7e6c-86fc-00e1-d9fe9cc5df59
InstanceOf: WofConnectSchedule
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #696b3685-dd39-4781-b410-0e700a8ba010
* serviceType[+] = $service-type-id#4e10ed9b-814e-41c9-999f-3866de9d5343 "Akut - barn"
* serviceType[=].text = "Akuttid för barnpatienter."
* serviceType[+] = $service-type-id#949adf08-f5b9-4fca-8423-0e6824b1e3c7 "Undersökning"
* serviceType[=].text = "För ej akuta ärenden."
* actor[0] = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* actor[+] = Reference(3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* actor[+] = Reference(2087a288-8831-835d-c99f-e53aa04c0d9e) "Utv Mattias Ekberg"
* planningHorizon.start = "2026-04-09"
* planningHorizon.end = "2026-04-03"

Instance: 3dc38cf1-2039-40f1-b85f-6164f202c235
InstanceOf: WofConnectPractitioner
Usage: #inline
* identifier[0].system = "https://frenda.se/id/treater"
* identifier[=].value = "3dc38cf1-2039-40f1-b85f-6164f202c235"
* identifier[+].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[=].value = "SE165560772419-10K8"
* active = true
* name.text = "Utv Mattias Ekberg"
* name.family = "Ekberg"
* name.given = "Mattias"

Instance: 2087a288-8831-835d-c99f-e53aa04c0d9e
InstanceOf: WofConnectPractitionerRole
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* active = true
* period.start = "2026-04-08T14:39:42+02:00"
* practitioner = Reference(3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* organization = Reference(48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* healthcareService = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* code = $csPractitionerRole#Utv "Utv"
* code.text = "Utv"

Instance: 679e6b0a-0f5e-c873-ad31-faa0e4b9f1bd
InstanceOf: WofConnectSchedule
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #696b3685-dd39-4781-b410-0e700a8ba010 
* serviceType[=].text = "Akuttid för vuxna patienter"
* serviceType[+] = $service-type-id#949adf08-f5b9-4fca-8423-0e6824b1e3c7 "Undersökning"
* serviceType[=].text = "För ej akuta ärenden."
* serviceType[+] = $service-type-id#70de741d-8dd9-40e8-b72a-98b1e2e15381 "Tappad fyllning"
* serviceType[=].text = "Tappad fyllning utan smärta"
* serviceType[+] = $service-type-id#b358da0c-19e8-4c21-b534-e21133c700ce "Extraktion"
* serviceType[+] = $service-type-id#907d178f-e59d-4eee-8529-df62c8a8d1be "Airflow - kampanj"
* actor[0] = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* actor[+] = Reference(8a6057fa-3dce-413f-8da1-379b4c7d63d4) "Utvecklare Matilda Clevesköld"
* actor[+] = Reference(866f2aca-10f8-152b-4b51-bbfda4b8966d) "Utvecklare Matilda Clevesköld"
* planningHorizon.start = "2026-04-09"
* planningHorizon.end = "2026-04-03"

Instance: 8a6057fa-3dce-413f-8da1-379b4c7d63d4
InstanceOf: WofConnectPractitioner
Usage: #inline
* identifier[0].system = "https://frenda.se/id/treater"
* identifier[=].value = "8a6057fa-3dce-413f-8da1-379b4c7d63d4"
* identifier[+].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[=].value = "HSA4824"
* active = true
* name.text = "Utvecklare Matilda Clevesköld"
* name.family = "Clevesköld"
* name.given = "Matilda"

Instance: 866f2aca-10f8-152b-4b51-bbfda4b8966d
InstanceOf: WofConnectPractitionerRole
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* active = true
* period.start = "2026-04-08T14:39:42+02:00"
* practitioner = Reference(8a6057fa-3dce-413f-8da1-379b4c7d63d4) "Utvecklare Matilda Clevesköld"
* organization = Reference(48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* healthcareService = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* code = $csPractitionerRole#Utvecklare "Utvecklare"
* code.text = "Utvecklare"

Instance: f108f69f-23dd-8b34-b12e-4a44a42d4b84
InstanceOf: WofConnectSchedule
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #696b3685-dd39-4781-b410-0e700a8ba010
* serviceType[=].text = "Akuttid för vuxna patienter"
* serviceType[+] = $service-type-id#949adf08-f5b9-4fca-8423-0e6824b1e3c7 "Undersökning"
* serviceType[=].text = "För ej akuta ärenden."
* serviceType[+] = $service-type-id#b358da0c-19e8-4c21-b534-e21133c700ce "Extraktion"
* serviceType[+] = $service-type-id#907d178f-e59d-4eee-8529-df62c8a8d1be "Airflow - kampanj"
* actor[0] = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* actor[+] = Reference(61c533b7-bd2b-4b4c-b092-d1cf49e3d9f8) "Utvecklare Marcus Johnsson"
* actor[+] = Reference(13db6244-e8ab-a507-402b-8602203da705) "Utvecklare Marcus Johnsson"
* planningHorizon.start = "2026-04-09"
* planningHorizon.end = "2026-04-03"

Instance: 61c533b7-bd2b-4b4c-b092-d1cf49e3d9f8
InstanceOf: WofConnectPractitioner
Usage: #inline
* identifier[0].system = "https://frenda.se/id/treater"
* identifier[=].value = "61c533b7-bd2b-4b4c-b092-d1cf49e3d9f8"
* identifier[+].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[=].value = "HSA3970"
* active = true
* name.text = "Utvecklare Marcus Johnsson"
* name.family = "Johnsson"
* name.given = "Marcus"

Instance: 13db6244-e8ab-a507-402b-8602203da705
InstanceOf: WofConnectPractitionerRole
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* active = true
* period.start = "2026-04-08T14:39:42+02:00"
* practitioner = Reference(61c533b7-bd2b-4b4c-b092-d1cf49e3d9f8) "Utvecklare Marcus Johnsson"
* organization = Reference(48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* healthcareService = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* code = $csPractitionerRole#Utvecklare "Utvecklare"
* code.text = "Utvecklare"
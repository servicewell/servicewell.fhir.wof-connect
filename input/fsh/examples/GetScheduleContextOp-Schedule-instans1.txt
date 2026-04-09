Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id

Instance: ea80a74c-7e6c-86fc-00e1-d9fe9cc5df59
InstanceOf: WofConnectSchedule
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* meta.source = "frenda"
* serviceType[0] = $service-type-id#696b3685-dd39-4781-b410-0e700a8ba010 "Akut - vuxen"
* serviceType[=].text = "Akuttid för vuxna patienter"
* serviceType[+] = $service-type-id#4e10ed9b-814e-41c9-999f-3866de9d5343 "Akut - barn"
* serviceType[=].text = "Akuttid för barnpatienter."
* serviceType[+] = $service-type-id#949adf08-f5b9-4fca-8423-0e6824b1e3c7 "Undersökning"
* serviceType[=].text = "För ej akuta ärenden."
* actor[0] = Reference(HealthcareService/48e428b0-fb37-4224-84df-5783a301a9da) "Service Well AB"
* actor[+] = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* actor[+] = Reference(PractitionerRole/2087a288-8831-835d-c99f-e53aa04c0d9e) "Utv Mattias Ekberg"
* planningHorizon.start = "2026-02-20"
* planningHorizon.end = "2026-04-03"


// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #dummy-st-id
* serviceType[service-type-id].coding[st-id].display = "Temporary ST ID"

* serviceType[service-type-id].coding[ep-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/endpoint-id"
* serviceType[service-type-id].coding[ep-id].code = #dummy-ep-id
* serviceType[service-type-id].coding[ep-id].display = "Temporary EP ID"
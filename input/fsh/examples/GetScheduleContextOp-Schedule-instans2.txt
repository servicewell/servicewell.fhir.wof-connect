Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id

Instance: 31752227-8595-a0a5-428d-afefdf06e616
InstanceOf: WofConnectSchedule
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule"
* meta.source = "frenda"
* serviceType = $service-type-id#bd191df5-5a5c-43b7-a5ad-6facb28a5ffb "Ny patient Tandhygienist - förebyggande tandvård"
* serviceType.text = "Ny patient Tandhygienist - förebyggande tandvård"
* actor[0] = Reference(HealthcareService/beb6d088-0ffe-4112-9dfc-f1ba5c6caab9) "Södertandläkarna Medborgarplatsen"
* actor[+] = Reference(Practitioner/b608fb33-8dcb-41b7-81c3-413362b462ee) "Tandhygienist Behandlare Johansson"
* actor[+] = Reference(PractitionerRole/5e5bb98d-0028-33f8-47cf-26ce33982a2b) "Tandhygienist Behandlare Johansson"
* planningHorizon.start = "2026-02-20"
* planningHorizon.end = "2026-06-12"


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
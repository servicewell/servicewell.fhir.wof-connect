Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id

Instance: 39b02f0a-b72e-f1b7-4bae-7170805c5f26
InstanceOf: Bundle
Usage: #example
* type = #searchset
* meta.lastUpdated = "2025-10-23T09:19:00+02:00"
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-schedule-context-operation-response"
* entry[0].resource = beb6d088-0ffe-4112-9dfc-f1ba5c6caab9
* entry[+].resource = 14e881ca-5c07-4315-b1d7-dbdb43708858
* entry[+].resource = 31752227-8595-a0a5-428d-afefdf06e616

Instance: beb6d088-0ffe-4112-9dfc-f1ba5c6caab9
InstanceOf: WofConnectBillingOrganization
Usage: #inline
* name = "Södertandläkarna Medborgarplatsen"
// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.tag = $pms-system#frenda

* identifier[businessIdentifier].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[businessIdentifier].value = "SE0000000000-DUMMY"



Instance: 14e881ca-5c07-4315-b1d7-dbdb43708858
InstanceOf: WofConnectPractitioner
Usage: #inline
* active = true
* name.text = "Tandläkare Behandlare Jönsson"

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"

* identifier[businessIdentifier].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[businessIdentifier].value = "SE0000000000-DUMMY"



Instance: 31752227-8595-a0a5-428d-afefdf06e616-testtest
InstanceOf: WofConnectSchedule
Usage: #inline
/* serviceType = $service-type-id#bd191df5-5a5c-43b7-a5ad-6facb28a5ffb "Ny patient Tandhygienist - förebyggande tandvård"
* serviceType.text = "Ny patient Tandhygienist - förebyggande tandvård"*/
* planningHorizon.start = "2026-02-20"
* planningHorizon.end = "2026-06-12"


* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"


* serviceType[service-type-id].coding[st-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* serviceType[service-type-id].coding[st-id].code = #bd191df5-5a5c-43b7-a5ad-6facb28a5ffb
* serviceType[service-type-id].coding[st-id].display = "Ny patient Tandhygienist - förebyggande tandvård"

* serviceType[service-type-id].coding[ep-id].system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/endpoint-id"
* serviceType[service-type-id].coding[ep-id].code = #00000000-0000-0000-0000-000000000002
* serviceType[service-type-id].coding[ep-id].display = "Temporary EP ID"

* serviceType[service-type-id].text = "Ny patient Tandhygienist - förebyggande tandvård"


* actor[practitionerRole].reference = "PractitionerRole/dummy-role"
* actor[practitionerRole].display = "Dummy PractitionerRole"

* planningHorizon.start = "2026-02-20"
* planningHorizon.end = "2026-06-12"
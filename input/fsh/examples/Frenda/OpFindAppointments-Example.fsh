// ==========================================
// ====== Detta är data utifrån tester ======
// ==========================================

Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id

Instance: OpFindAppointments-Example
InstanceOf: Bundle
Usage: #example
* type = #searchset
* meta.lastUpdated = "2026-02-09T11:28:54+00:00"
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-avail-bundle"
* entry[0].resource = 756b2987-2112-d1ea-c06b-0b852fa3ce9d
* entry[+].resource = 1051527c-4be8-faa4-3da6-28aa22d73a84
* entry[+].resource = 34c8d6b1-b463-918f-0a1c-3490475b25e4
* entry[+].resource = a8487527-36ba-95ae-19fc-b8817c938410
* total = 4

Instance: 756b2987-2112-d1ea-c06b-0b852fa3ce9d
InstanceOf: WofConnectAppointment
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-appt"
* identifier.system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier.value = "NDhlNDI4YjAtZmIzNy00MjI0LTg0ZGYtNTc4M2EzMDFhOWRhOzY5NmIzNjg1LWRkMzktNDc4MS1iNDEwLTBlNzAwYThiYTAxMDszZGMzOGNmMS0yMDM5LTQwZjEtYjg1Zi02MTY0ZjIwMmMyMzU7ZjgwMDlhNmEtZGFkOS00MTY5LWE3ZjAtNzg5ZTJkNDBiYjczOzIwMjYtMDItMTAgMDg6MDA="
* serviceType = $service-type-id#696b3685-dd39-4781-b410-0e700a8ba010
* status = #proposed
* start = "2026-02-10T08:00:00Z"
* end = "2026-02-10T08:30:00Z"
* requestedPeriod.start = "2026-02-10T08:00:00Z"
* requestedPeriod.end = "2026-02-10T08:30:00Z"
* participant[0].actor = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* participant[=].status = #accepted
* participant[+].actor = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da)
* participant[=].status = #accepted

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"


Instance: 1051527c-4be8-faa4-3da6-28aa22d73a84
InstanceOf: WofConnectAppointment
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-appt"
* identifier.system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier.value = "NDhlNDI4YjAtZmIzNy00MjI0LTg0ZGYtNTc4M2EzMDFhOWRhOzY5NmIzNjg1LWRkMzktNDc4MS1iNDEwLTBlNzAwYThiYTAxMDszZGMzOGNmMS0yMDM5LTQwZjEtYjg1Zi02MTY0ZjIwMmMyMzU7ZjgwMDlhNmEtZGFkOS00MTY5LWE3ZjAtNzg5ZTJkNDBiYjczOzIwMjYtMDItMTAgMDg6MzA="
* serviceType = $service-type-id#696b3685-dd39-4781-b410-0e700a8ba010
* status = #proposed
* start = "2026-02-10T08:30:00Z"
* end = "2026-02-10T09:00:00Z"
* requestedPeriod.start = "2026-02-10T08:30:00Z"
* requestedPeriod.end = "2026-02-10T09:00:00Z"
* participant[0].actor = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* participant[=].status = #accepted
* participant[+].actor = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da)
* participant[=].status = #accepted

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"


Instance: 34c8d6b1-b463-918f-0a1c-3490475b25e4
InstanceOf: WofConnectAppointment
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-appt"
* identifier.system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier.value = "NDhlNDI4YjAtZmIzNy00MjI0LTg0ZGYtNTc4M2EzMDFhOWRhOzY5NmIzNjg1LWRkMzktNDc4MS1iNDEwLTBlNzAwYThiYTAxMDszZGMzOGNmMS0yMDM5LTQwZjEtYjg1Zi02MTY0ZjIwMmMyMzU7ZjgwMDlhNmEtZGFkOS00MTY5LWE3ZjAtNzg5ZTJkNDBiYjczOzIwMjYtMDItMTAgMDk6MDA="
* serviceType = $service-type-id#696b3685-dd39-4781-b410-0e700a8ba010
* status = #proposed
* start = "2026-02-10T09:00:00Z"
* end = "2026-02-10T09:30:00Z"
* requestedPeriod.start = "2026-02-10T09:00:00Z"
* requestedPeriod.end = "2026-02-10T09:30:00Z"
* participant[0].actor = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* participant[=].status = #accepted
* participant[+].actor = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da)
* participant[=].status = #accepted


// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"


Instance: a8487527-36ba-95ae-19fc-b8817c938410
InstanceOf: WofConnectAppointment
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-appt"
* identifier.system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier.value = "NDhlNDI4YjAtZmIzNy00MjI0LTg0ZGYtNTc4M2EzMDFhOWRhOzY5NmIzNjg1LWRkMzktNDc4MS1iNDEwLTBlNzAwYThiYTAxMDszZGMzOGNmMS0yMDM5LTQwZjEtYjg1Zi02MTY0ZjIwMmMyMzU7ZjgwMDlhNmEtZGFkOS00MTY5LWE3ZjAtNzg5ZTJkNDBiYjczOzIwMjYtMDItMTAgMDk6MzA="
* serviceType = $service-type-id#696b3685-dd39-4781-b410-0e700a8ba010
* status = #proposed
* start = "2026-02-10T09:30:00Z"
* end = "2026-02-10T10:00:00Z"
* requestedPeriod.start = "2026-02-10T09:30:00Z"
* requestedPeriod.end = "2026-02-10T10:00:00Z"
* participant[0].actor = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* participant[=].status = #accepted
* participant[+].actor = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da)
* participant[=].status = #accepted


// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"
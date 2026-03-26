// ==========================================
// ====== Detta är data utifrån tester ======
// ==========================================

Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
Alias: $wc-characteristic = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/wc-characteristic
Alias: $service-type-id = http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id

Instance: Appointment-GetAllExample
InstanceOf: Bundle
Usage: #example
* type = #searchset
* meta.lastUpdated = "2026-02-09T11:49:50+00:00"
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-avail-bundle"
* entry[0].resource = 8f9073da-6e5c-467c-8464-132953582e41
* entry[+].resource = 7a1fc89d-5801-48be-adab-837ba310c7b6
* entry[+].resource = 5999d619-3f28-492d-ac78-12de072f4032
* total = 3

Instance: 8f9073da-6e5c-467c-8464-132953582e41
InstanceOf: WofConnectAppointment
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-appt"
* extension[0].url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-characteristic"
* extension[=].extension.url = "scheduling"
* extension[=].extension.extension[0].url = "minChangeHours"
* extension[=].extension.extension[=].valueInteger = 48
* extension[=].extension.extension[+].url = "webReschedulingCountAllowed"
* extension[=].extension.extension[=].valueInteger = 3
* extension[=].extension.extension[+].url = "schedulingAvailability"
* extension[=].extension.extension[=].valueCodeableConcept.coding[0] = $wc-characteristic#scheduling-accepts-cancellation "Cancellation available"
* extension[=].extension.extension[=].valueCodeableConcept.coding[+] = $wc-characteristic#scheduling-accepts-reschedule "Reschedule available"
* extension[+].url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-appointment-update"
* extension[=].extension[0].url = "webReschedulingCount"
* extension[=].extension[=].valueInteger = 0
* extension[=].extension[+].url = "canBeRescheduled"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "canBeCancelled"
* extension[=].extension[=].valueBoolean = false
* serviceType = $service-type-id#4e10ed9b-814e-41c9-999f-3866de9d5343 "Akuttid för barnpatienter."
* serviceType.text = "Akuttid för barnpatienter."
* description = "Akut"
* start = "2025-12-05T08:00:00+00:00"
* end = "2025-12-05T08:30:00Z"
* requestedPeriod.start = "2025-12-05T08:00:00+00:00"
* requestedPeriod.end = "2025-12-05T08:30:00Z"
* participant[0].actor = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* participant[=].status = #accepted
* participant[+].actor = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da-test) "Service Well AB"
* participant[=].status = #accepted

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"

* identifier.system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier.value = "dummy-slot-id-X"

* status = #proposed
//* status = #cancelled // riktig data från frenda

Instance: 7a1fc89d-5801-48be-adab-837ba310c7b6
InstanceOf: WofConnectAppointment
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-appt"
* extension[0].url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-characteristic"
* extension[=].extension.url = "scheduling"
* extension[=].extension.extension[0].url = "minChangeHours"
* extension[=].extension.extension[=].valueInteger = 48
* extension[=].extension.extension[+].url = "webReschedulingCountAllowed"
* extension[=].extension.extension[=].valueInteger = 3
* extension[=].extension.extension[+].url = "schedulingAvailability"
* extension[=].extension.extension[=].valueCodeableConcept.coding[0] = $wc-characteristic#scheduling-accepts-cancellation "Cancellation available"
* extension[=].extension.extension[=].valueCodeableConcept.coding[+] = $wc-characteristic#scheduling-accepts-reschedule "Reschedule available"
* extension[+].url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-appointment-update"
* extension[=].extension[0].url = "webReschedulingCount"
* extension[=].extension[=].valueInteger = 0
* extension[=].extension[+].url = "canBeRescheduled"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "canBeCancelled"
* extension[=].extension[=].valueBoolean = false
* serviceType = $service-type-id#4e10ed9b-814e-41c9-999f-3866de9d5343 "Akuttid för barnpatienter."
* serviceType.text = "Akuttid för barnpatienter."
* description = "Akut"
* start = "2025-12-05T08:00:00+00:00"
* end = "2025-12-05T08:30:00Z"
* requestedPeriod.start = "2025-12-05T08:00:00+00:00"
* requestedPeriod.end = "2025-12-05T08:30:00Z"
* participant[0].actor = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* participant[=].status = #accepted
* participant[+].actor = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da-test) "Service Well AB"
* participant[=].status = #accepted

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"

* identifier.system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier.value = "dummy-slot-id-X"

* status = #proposed
//* status = #cancelled //riktig data från frenda

Instance: 5999d619-3f28-492d-ac78-12de072f4032
InstanceOf: WofConnectAppointment
Usage: #inline
* meta.tag = $pms-system#frenda
* meta.profile = "https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/ihe-sched-appt"
* extension[0].url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-characteristic"
* extension[=].extension.url = "scheduling"
* extension[=].extension.extension[0].url = "minChangeHours"
* extension[=].extension.extension[=].valueInteger = 48
* extension[=].extension.extension[+].url = "webReschedulingCountAllowed"
* extension[=].extension.extension[=].valueInteger = 3
* extension[=].extension.extension[+].url = "schedulingAvailability"
* extension[=].extension.extension[=].valueCodeableConcept.coding[0] = $wc-characteristic#scheduling-accepts-cancellation "Cancellation available"
* extension[=].extension.extension[=].valueCodeableConcept.coding[+] = $wc-characteristic#scheduling-accepts-reschedule "Reschedule available"
* extension[+].url = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wofconnect-appointment-update"
* extension[=].extension[0].url = "webReschedulingCount"
* extension[=].extension[=].valueInteger = 0
* extension[=].extension[+].url = "canBeRescheduled"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "canBeCancelled"
* extension[=].extension[=].valueBoolean = false
* serviceType = $service-type-id#4e10ed9b-814e-41c9-999f-3866de9d5343 "Akuttid för barnpatienter."
* serviceType.text = "Akuttid för barnpatienter."
* description = "Akut"
* start = "2025-12-05T08:00:00+00:00"
* end = "2025-12-05T08:30:00Z"
* requestedPeriod.start = "2025-12-05T08:00:00+00:00"
* requestedPeriod.end = "2025-12-05T08:30:00Z"
* participant[0].actor = Reference(Practitioner/3dc38cf1-2039-40f1-b85f-6164f202c235) "Utv Mattias Ekberg"
* participant[=].status = #accepted
* participant[+].actor = Reference(Organization/48e428b0-fb37-4224-84df-5783a301a9da-test) "Service Well AB"
* participant[=].status = #accepted

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================


* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"

* identifier.system = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/slot-id"
* identifier.value = "dummy-slot-id-X"

* status = #proposed
//* status = #cancelled //riktig data från frenda
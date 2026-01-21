Instance: GetScheduleContext
InstanceOf: OperationDefinition
Title: "Get Schedule Context"
Description: "Returns a Bundle containing Schedule resources together with related actors and activity definitions for a given period. Only resources that are actually scheduled are included."
Usage: #definition
* name = "GetScheduleContext"
* status = #active
* kind = #operation
* code = #get-schedule-context
* resource = #Schedule      // Operation based on Schedule
* system = false            // Not a system-level operation
* type = true
* instance = false          // Not an instance-level op
* affectsState = false      // Read-only

* outputProfile = Canonical(WofConnectScheduleContextOperationResponse)

// ---- Input parameters ----

// Start of the time period used to filter Schedules and related context (e.g., Slots)
* parameter[+].name = #period-start
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #dateTime
* parameter[=].documentation = "Start of the requested time period (used for Slots and filtering scheduled context)."

// End of the time period
* parameter[+].name = #period-end
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #dateTime
* parameter[=].documentation = "End of the requested time period."

// Restrict to certain HealthcareService resources
* parameter[+].name = #healthcare-service
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #Reference
* parameter[=].targetProfile = Canonical(WofConnectHealthcareService)
* parameter[=].documentation = "Restrict the query to specific HealthcareService resources."

// Filter on specific actors that Schedule.actor can reference
* parameter[+].name = #actor
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #Reference
* parameter[=].targetProfile[0] = Canonical(WofConnectPractitionerRole)
* parameter[=].targetProfile[+] = Canonical(WofConnectPractitioner)
* parameter[=].targetProfile[+] = Canonical(WofConnectEconomyOrganization)
* parameter[=].documentation = "Filter on specific actors referenced by Schedule.actor."

// ---- Output ----

// The resulting Bundle containing the scheduled context
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = """
A Bundle containing Schedule, Slot, Actor, and ActivityDefinition resources that are actually scheduled within the requested period.
The Bundle SHALL conform to the WofConnectScheduleContextOperationResponse profile.
"""
// =====================================================
// NamingSystem: ServiceTypeId
// =====================================================

Instance: ServiceTypeId
InstanceOf: NamingSystem
Title: "Service Type Id as Code"
Description: "NamingSystem describing the dynamic code system used for service types that identifies with an ID, for example treatment.id in Frenda"
Usage: #definition
* id = "service-type-id"
* name = "ServiceTypeId"
* status = #active
* kind = #codesystem
* date = "2025-10-30"
* publisher = "Service Well AB"
* usage = "Used in WofConnect to identify ActivityDefinition ServiceType in case of an identifier example Treatment.Id as a code system in FHIR resources"
* jurisdiction = urn:iso:std:iso:3166#SE "Sweden"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/service-type-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "URI to identify the servicetype by id in a CodeSystem context"
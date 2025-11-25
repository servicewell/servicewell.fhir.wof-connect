// =====================================================
// NamingSystem: EndpointId
// =====================================================

Instance: EndpointId
InstanceOf: NamingSystem
Title: "Endpoint Id as Code"
Description: "NamingSystem describing the dynamic code system used for endpoints that identifies with an ID"
Usage: #definition
* id = "endpoint-id"
* name = "EndpointId"
* status = #active
* kind = #codesystem
* date = "2025-10-30"
* publisher = "Service Well AB"
* usage = "Used in WofConnect in CodableConcept to set the source of the other codings"
* jurisdiction = urn:iso:std:iso:3166#SE "Sweden"
* uniqueId[0].type = #uri
* uniqueId[0].value = "http://canonical.fhir.link/servicewell/wof-connect/identifiercodesystem/endpoint-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "URI to identify the endpointId in a CodeableConcept context"
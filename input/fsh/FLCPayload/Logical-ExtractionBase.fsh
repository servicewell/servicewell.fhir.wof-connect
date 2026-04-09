// ------------------------------------------------------------
// Extract Model: ExtractionBase
// ------------------------------------------------------------
Logical: ExtractionBase
Id: extraction-base
Title: "Extraction Base (Extract Model)"
Description: "Standard base data (meta and data wrapper) captured with each extraction."
* ^status = #draft

* meta 1..1 BackboneElement "Standard metadata captured with each extraction."

// ------------------------------
// Child elements under meta
// ------------------------------
* meta.requestId 1..1 string "Unique identifier for the HTTP request"

* meta.extractDate 1..1 dateTime "UTC timestamp when data was extracted."
* meta.extractDate ^example[+].label = "Extraction timestamp"
* meta.extractDate ^example[=].valueDateTime = "2025-10-31T13:42:00Z"

* meta.sourceSystem 1..1 string "Source system identifier (frenda | opus)."
* meta.sourceSystem ^example[+].label = "Source system"
* meta.sourceSystem ^example[=].valueString = "frenda"

* meta.sourceSystemVersion 1..1 string "Source system version (database or API version)."
* meta.sourceSystemVersion ^example[+].label = "Source system version"
* meta.sourceSystemVersion ^example[=].valueString = "1.7.23"

* meta.FhirQueryParam 0..* BackboneElement "FHIR query parameters from the request (name/value pairs)."
* meta.FhirQueryParam.name 1..1 string "Name of the query parameter."
* meta.FhirQueryParam.value 1..1 string "Query string parameters from the FHIR request (everything after ?)."
* meta.FhirQueryParam.value ^example[+].label = "FHIR query parameters for GET /fhir/Organization/1234?_pretty=true&_format=json"
* meta.FhirQueryParam.value ^example[=].valueString = "_pretty=true&_format=json"

* meta.resourceSubPath 0..1 string "The optional remaining path segment after the FHIR resource type."
* meta.resourceSubPath ^example[+].label = "Resource sub-path for GET /fhir/Organization/1234"
* meta.resourceSubPath ^example[=].valueString = "/1234"

* meta.interactionLevel 0..1 string "The interaction level of the FLC operation (resource | instance)."
* meta.interactionLevel ^example[+].label = "Interaction level"
* meta.interactionLevel ^example[=].valueString = "instance"

* data 1..1 BackboneElement "Wrapper for data."

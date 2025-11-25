Instance: WofCapabilities
InstanceOf: OperationDefinition
Usage: #definition
Title: "WOF Capabilities OperationDefinition"
* id = "wof-capabilities"
* name = "WofCapabilities"
* title = "Get WOF-CONNECT capability extension"
* status = #active
* kind = #operation
* code = #wof-capabilities
* system = true
* type = false
* instance = false
* description = "Returns a Basic resource carrying the WOF-CONNECT capabilities extension (WofConnectCharacteristic) for this endpoint."

// Output: en resource-parameter med vår Basic-profil
* parameter[0].name = #capabilities
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Resource
* parameter[=].targetProfile = Canonical(WofConnectCapabilitiesCarrier)


CodeSystem: CSServiceType
Id: cs-service-type
Title: "WOF Connect Service Types"
Description: "Service types used across PMS adapters."
* ^status = #active
* ^content = #fragment
* ^experimental = false
* ^valueSet = Canonical(VsServiceType)

* #akut "Akut"
* #undersokning "Undersökning"
// TODO: Define which codes that should be added...

ValueSet: VsServiceType
Id: vs-service-type
Title: "WOF Connect Service Types"
Description: "Full ValueSet for WOF Connect service types used across PMS adapters."
* ^status = #active
* ^experimental = false

* include codes from system CSServiceType
CodeSystem: CSPractitionerRole
Id: cs-practitioner-role
Title: "WOF Connect Practitioner Role"
Description: "Practitioner roles used across PMS adapters."
* ^url = $csPractitionerRole
* ^status = #active
* ^content = #fragment
* ^experimental = false
* ^valueSet = Canonical(VsPractitionerRole)

* #dentist "Tandläkare" "Tandläkare"
* #hygienist "Hygienist" "Hygienist"
* #orthodontist "Ortodontist" "Ortodontist"
* #endodontist "Endodontist" "Endodontist"
// TODO: Define which codes that should be added...

ValueSet: VsPractitionerRole
Id: vs-practitioner-role
Title: "WOF Connect Practitioner Role"
Description: "Full ValueSet for WOF Connect practitioner roles used across PMS adapters."
* ^url = $vsPractitionerRole
* ^status = #active
* ^experimental = false

* include codes from system CSPractitionerRole
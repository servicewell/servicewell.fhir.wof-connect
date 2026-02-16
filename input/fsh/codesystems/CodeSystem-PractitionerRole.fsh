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


CodeSystem: CSPractitionerRoleSnomedSupplement
Id: cs-practitioner-role-snomed-supplement
Title: "Practitioner Role SNOMED supplement"
Description: """
Supplement adding SNOMED CT mappings for WOF Connect Practitioner Role codes.
Used as guide to understand how connecters should map their corresponding Role codes.
"""
* ^status = #draft
* ^experimental = false
* ^content = #supplement
* ^supplements = "http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/practitioner-role"
* ^property.code = #Snomed
* ^property.description = "SNOMED conceptId"
* ^property.type = #code
* #dentist
* #dentist ^property.code = #Snomed
* #dentist ^property.valueCode = #106289002
* #hygienist
* #hygienist ^property.code = #Snomed
* #hygienist ^property.valueCode = #45956004
* #orthodontist
* #orthodontist ^property.code = #Snomed
* #orthodontist ^property.valueCode = #37504001
* #endodontist
* #endodontist ^property.code = #Snomed
* #endodontist ^property.valueCode = #50149000
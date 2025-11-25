CodeSystem: PmsSystem
Id: pms-system
Title: "WOF-Connect PMS System"
Description: "Code system for WOF-Connect source Practice Management System"
* ^status = #active
* ^content = #fragment
* ^experimental = false
* ^valueSet = Canonical(VsPmsSystem)

* #frenda  "Frenda"
* #opus "Opus Dental"


ValueSet: VsPmsSystem
Id: pms-system
Title: "WOF-Connect PMS System"
Description: "Full ValueSet for for WOF-Connect source Practice Management System"
* ^status = #active
* ^experimental = false

* include codes from system PmsSystem
Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system
//Alias: $csPractitionerRole = http://portal.wof.purified.link/fhir/CodeSystem/csPractitionerRole

Instance: 34d0c6bb-1827-9af0-05d0-71f5e4e7f200
InstanceOf: WofConnectPractitionerRole
Usage: #example
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructureDefinition/wof-connect-practitionerrole"
* meta.source = "frenda"
* active = true
* period.start = "2025-10-23T09:19:00+02:00"
* practitioner = Reference(Practitioner/0b8e3b0a-a89f-46ce-9496-734101681ec4) "Tandhygienist Behandlare Svensson"
* organization = Reference(Organization/beb6d088-0ffe-4112-9dfc-f1ba5c6caab9) "Södertandläkarna Medborgarplatsen"
* healthcareService = Reference(HealthcareService/beb6d088-0ffe-4112-9dfc-f1ba5c6caab9) "Södertandläkarna Medborgarplatsen"
* code = $csPractitionerRole#Tandhygienist "Tandhygienist"
* code.text = "Tandhygienist"
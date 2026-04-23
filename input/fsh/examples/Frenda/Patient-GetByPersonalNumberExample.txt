// ==========================================
// ====== Detta är data utifrån frenda ======
// ==========================================

Alias: $pms-system = http://canonical.fhir.link/servicewell/wof-connect/CodeSystem/pms-system

Instance: Patient-GetByPersonalNumberExample
InstanceOf: WofConnectPatient
Usage: #example
* identifier.system = "urn:oid:1.2.752.129.2.1.3.1"
* identifier.value = "199001072397"
* meta.tag = $pms-system#frenda
* meta.profile = "http://canonical.fhir.link/servicewell/wof-connect/StructurDefinition/wof-connect-patient"
* name.text = "Darth Vader"
* name.family = "Vader"
* name.given = "Darth"
* telecom[0].system = #email
* telecom[=].value = "darth.vader@example.invalid"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "0763002510"
* telecom[=].use = #mobile

// =======================================================
// TEMPORARY DUMMY DATA TO SATISFY REQUIRED SLICES
// Remove when proper mapping is implemented
// =======================================================

* meta.source = "http://canonical.fhir.link/servicewell/wof-connect/sourcesystem/frenda"
* birthDate = "2024-06-05" //Manuellt tillägg till exempelfilen. Bugg lagd: 8960
* extension.url = "apa" //Manuellt tillägg till exempelfilen. Bugg lagd: 8960
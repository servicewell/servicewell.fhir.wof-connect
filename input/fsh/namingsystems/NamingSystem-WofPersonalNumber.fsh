Instance: WofConnectPersonalNumbers
InstanceOf: NamingSystem
Usage: #definition

* name = "WOF Connect Personal Number System"
* status = #active
* kind = #identifier
* date = "2026-02-12"
* publisher = "Service Well AB"
* description = "This NamingSystem defines the authoritative list of identifier.system values (OID and URI) representing Norwegian and Swedish national personal number systems. It is used in WOF Connect Patient profiles where identifier.type = PN. Implementations SHALL restrict Patient.identifier.system to one of the identifiers defined in this NamingSystem."

* usage = "Used to identify national personal number identifier systems (OID and URI) supported by WOF Connect for Patient.identifier.system."

* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* type.coding.code = #PN

* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.578.1.12.4.1.4.1"
* uniqueId[=].comment = "Norwegian National Identity Number (assigned to residents registered in the National Population Register)"

* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.578.1.12.4.1.4.2"
* uniqueId[=].comment = "Norwegian Temporary Identity Number (D-number)"

* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.578.1.12.4.1.4.3"
* uniqueId[=].comment = "Norwegian Healthcare Identity Number (H-number)"

* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.578.1.12.4.1.4.4"
* uniqueId[=].comment = "Norwegian Temporary Healthcare Identifier (FH-number)"

* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.578.1.12.4.1.4.5"
* uniqueId[=].comment = "Norwegian Immigration Case Identifier (DUF-number)"

* uniqueId[+].type = #oid
* uniqueId[=].value = "1.2.752.129.2.1.3.1"
* uniqueId[=].comment = "Swedish Personal Identity Number"

* uniqueId[+].type = #oid
* uniqueId[=].value = "1.2.752.129.2.1.3.3"
* uniqueId[=].comment = "Swedish Coordination Number"

* uniqueId[+].type = #uri
* uniqueId[=].value = "http://electronichealth.se/identifier/personnummer"

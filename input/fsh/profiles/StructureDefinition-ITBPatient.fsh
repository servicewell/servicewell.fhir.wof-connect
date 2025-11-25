// Profile: ITBPatient
// //Parent: no-basis-Patient
// Parent: Patient
// Title: "ITB Patient"
// Description: "A patient profile in ITB"

// * ^version = "1.0.0"

// * id 0..1 MS
// * meta.profile 0..1 MS

// * identifier 0..* MS
// * identifier ^short = "Extern identifierare. Svenskt personnumer men även andra identifierare"

// * identifier.type.coding.system 0..1 MS
// * identifier.type.coding.code 0..1 MS
// * identifier.system 0..1 MS
// * identifier.value 0..1 MS

// * active 0..1 MS
// // TODO - kan det vara olika system och koder för identifierar-type
// * identifier.type 0..1 MS
// * identifier.type.coding.system from OpusIdentifiers (extensible)

// * active 0..1
// * active ^short = "Här finns möjligheter att signalera om en patient får boka eller inte."

// * name 0..* MS
// * name ^short = "A name associated with the individual. Krävs mellannamn? Finns en extension för detta."
// * name.text 0..1 MS
// * name.family 0..1 MS
// * name.family ^short = "Efternamn"
// * name.given 0..1 MS
// * name.given ^short = "Förnamn"


// * telecom 0..*
// * telecom ^short = "List of contacts related to this specific healthcare service."
// * telecom.system 0..1 MS
// * telecom.system ^short = "phone | email"
// * telecom.value 0..1 MS
// * telecom.use 0..1 MS
// * telecom.use ^short = "mobile | home"


// * generalPractitioner only Reference(PractitionerRole)
// * generalPractitioner 0..* MS 
// * generalPractitioner ^short = "Referens till PractitionerRole känns rimligt om man vill använda denna. PractitionerRole innehåller mycket information och referenser till andra resurser."

// * managingOrganization only Reference(Organization)
// * managingOrganization 0..1 MS 
// * managingOrganization ^short = "Organization that is the custodian of the patient record. Ej viktig men kan bra i ett längre perspektiv."

// * birthDate 0..1 MS
// * birthDate ^short = "Födelsedatum"

// Mapping: Muntra-patients
// Source: http://ki.purified.link/wof-portal/fhir/StructureDefinition/ITBPatient
// Target: "/patients"
// Title: "Muntra Patients"

// * -> "patient"
// * id -> "id"
// * identifier.value -> "social_security_number"
// * name.given -> "first_name"
// * name.family -> "last_name"
// //* n/a -> "maiden_name"
// //* -> "initials"
// //* -> "gender"
// //* -> "address_1"
// //* -> "address_2"
// //* -> "city"
// //* -> "postal_code"
// //* -> "municipality"
// * birthDate -> "date_of_birth"
// //* -> "passport_number"
// * telecom.value -> "phone_number_cell" "where system=phone and use=mobile"
// * telecom.value -> "phone_number_home" "where system=phone and use=home"
// //* -> "phone_number_work"
// //* -> "fax_number"
// * telecom.value -> "e_mail_address" "where system=email"
// //* -> "deleted"
// //* -> "created_at"
// //* -> "updated_at"
// //* -> "patient_number"
// //* -> "invoice_reference"
// * active -> "status"
// //* -> "wants_anestesia"
// //* -> "start_date_free_card"
// //* -> "end_date_free_card"
// //* -> "free_card_number"
// //* -> "county_council_certificate_number"
// //* -> "county_council_certificate_end_date"
// //* -> "euro_certificate_number"
// //* -> "protected_identity"
// //* -> "warning"
// //* -> "warning_text"
// //* -> "xray_id"
// //* -> "notes"
// //* -> "external_dentist"
// //* -> "external_hygienist"
// //* -> "auto_include_email_invitation"
// //* -> "auto_include_sms_invitation"
// //* -> "auto_include_sms_reminder"
// //* -> "auto_include_snail_mail_invitation"
// //* -> "prefers_not_to_be_contacted_by_clinic"
// //* -> "recurring"
// //* -> "referral_source"
// //* -> "teeth_count"
// //* -> "untreated_teeth_count"
// //* -> "signed_at"
// //* -> "booking_status"
// * managingOrganization -> "n/a"

// Mapping: Muntra-booking-attendees
// Source: http://ki.purified.link/wof-portal/fhir/StructureDefinition/ITBPatient
// Target: "/booking-attendees"
// Title: "Muntra booking-attendees"
// Description: ""

// * -> "patient"

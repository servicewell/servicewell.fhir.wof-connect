CodeSystem: WCCharacteristic
Id: wc-characteristic
Title: "WOF-Connect Characteristic"
Description: "WOF-Connect CodeSystem for Characteristic for the source PMS system - e.g., Frenda, Opus Dental, used in WOF-Connect HealthcareService.characteristic"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^valueSet = Canonical(VsWCCharacteristic)
* ^hierarchyMeaning = #grouped-by

* #scheduling-accepts "Grouping Scheduling Accepts Codes"
*   #scheduling-accepts-cancellation "Scheduling Accepts Cancellation" "Indicates that the service accepts cancellations via booking API."
*   #scheduling-accepts-new "Scheduling Accepts New" "Indicates that the service accepts new bookings via booking API."
*   #scheduling-accepts-reschedule "Scheduling Accepts Reschedule" "Indicates that the service accepts rescheduling via booking API."



ValueSet: VsWCCharacteristic
Id:  wc-characteristic   
Title: "WOF-Connect Characteristic"
Description: "WOF-Connect ValueSet for Characteristic for the source PMS system - e.g., Frenda, Opus Dental, used in WOF-Connect HealthcareService.characteristic"
* ^status = #active
* ^experimental = false

* include codes from system WCCharacteristic
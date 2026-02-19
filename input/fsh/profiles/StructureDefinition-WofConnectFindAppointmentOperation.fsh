Profile: WofConnectFindAppointment
Parent: ihe-sched-avail-bundle // IHE ITI available Appointment bundle Profile
Id: wof-connect-find-appointment
Title: "Wof Connect Find Appointment"
Description: """A bundle containing available appointments based on search parameters.
 Returned as the result of the '$find' operation and Appointment search."""
* ^status = #active

* entry[entry-appt].resource only wof-connect-appointment

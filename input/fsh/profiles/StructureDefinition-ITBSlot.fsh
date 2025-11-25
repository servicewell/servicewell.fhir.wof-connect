Profile: ITBSlot
Parent: Slot
Title: "ITB Slot"
Description: "A slot profile in ITB"

* ^version = "1.0.0"

* id 0..1 MS

* identifier 0..* MS
* identifier ^short = "Extern identifiering vid behov."

* serviceType 0..* MS
* serviceType ^short = "Typ av behandling denna slot gäller för. Kan vara flera beroende på hur man vill göra."

* schedule 1..1 MS
* schedule ^short = "Pekar på vilket schema denna slot tillhör."
* schedule.reference 1..1 MS
* schedule.display 1..1 MS

* status 1..1 MS
* status ^short = "busy | free | busy-unavailable | busy-tentative | entered-in-error"
* status ^definition = "Just nu använder vi endast \"free\". Men vill man exempelvis kunna rendera upp en tandläkares schema kan det vara intressant att använda andra koder. Exempelvis \"busy\"."

* start 1..1 MS
* start ^short = "Date/Time that the slot is to begin."

* end 1..1 MS
* end ^short = "Date/Time that the slot is to conclude."




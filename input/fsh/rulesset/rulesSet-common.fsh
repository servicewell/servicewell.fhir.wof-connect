// -----------------------------------------------------------------
// Obligations
// 1. Add the obligation extension instance on the ElementDefinition
// 2. Subextension: actor (canonical)
// 3. Subextension: action (code)
// -----------------------------------------------------------------

RuleSet: Obligation(actorCanonical, actionCode)
* ^extension[+].url = $obligation
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = {actorCanonical}
* ^extension[=].extension[+].url = "action"
* ^extension[=].extension[=].valueCode = {actionCode}
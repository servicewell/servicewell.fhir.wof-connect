
Invariant: no-id-requires-identifier
Description: "If id is missing, at least one identifier shall exist."
Severity: #error
Expression: "id.exists().not() implies identifier.exists()"


---
title: WOF Connect MustSupport
---

# MustSupport i WOF Connect

## Syfte
I WOF Connect används `MustSupport` (`MS`) för att markera dataelement som är nödvändiga för säker och interoperabel bokning/integration.

### Vad MS betyder hos oss
Ett element markerat med `MS` betyder att:

- Producent (server/svarande part) ska stödja element och, om informationen finns i källsystemet, ska den inkluderas i svaret.
- Konsument (klient/anropande part) ska kunna läsa och hantera elementet.
- Elementet är viktigt för integrationens funktion, även om cardinality kan vara `0..1` eller `0..*`.

### Viktig skillnad: MS vs cardinality
- `1..1` betyder att elementet alltid måste finnas i instansen.
- `MS` betyder att implementationen måste stödja elementet.
- Ett fält kan alltså vara `0..1 MS`: inte alltid närvarande, men måste stödjas av båda parter.

### När får MS-element saknas?
MS-element kan saknas i en enskild resurs om:

- informationen inte finns i källsystemet,
- elementet inte är relevant i den specifika situationen,
- eller data inte får delas av policy/juridiska skäl.

Detta är inte ett profilbrott så länge implementationen i övrigt stödjer elementet enligt denna guide.

### Konformans i WOF Connect
För att anses följa WOF Connect ska implementationen:

- stödja in-/utdata för MS-markerade element i relevanta profiler,
- inte ignorera MS-fält vid parsing/serialisering,
- dokumentera eventuella begränsningar per endpoint/adapter.

### Exempel
- `identifier 1..* MS`: ska stödjas och förväntas normalt finnas.
- `telecom 0..* MS`: ska stödjas, men kan saknas för vissa resurser.
- `birthDate 1..1 MS`: både obligatoriskt och MustSupport.

### Versionsnotering
Denna IG använder FHIR R4 (`4.0.1`). `MS` uttrycks därför primärt via profilernas `mustSupport`-markering (`MS` i FSH).


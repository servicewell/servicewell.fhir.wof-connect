---
title: Wof_connect Implementation Guide
description: FHIR-based integration guide for connecting to the Service Well Portal.
---
# Wof_connect Implementation Guide
Welcome to the **Wof_connect Implementation Guide (IG)**.
This IG defines the FHIR-based interfaces and profiles required for external systems to integrate with the **Service Well Portal** — a dental care patient portal that enables patients to **book, rebook, and manage appointments**.
## Purpose
The goal of Wof_connect is to provide a clear and consistent integration standard for vendors and clinics that want to connect to Service Well Portal.
By following this guide, connected systems can exchange scheduling-related information in a reliable, secure, and interoperable way.
## Scope
This IG focuses on appointment scheduling workflows for dental care, including:
- Patient-driven booking and rebooking
- Appointment discovery and availability
- Synchronization of scheduling data between systems
- Standardized resource usage and constraints
## Standards & Interoperability
Wof_connect is built on **HL7® FHIR®** and aligns with the **IHE Scheduling Implementation Guide**, ensuring compatibility with established international scheduling patterns.
## Audience
This guide is intended for:
- EHR / PMS vendors in dental care
- Integration teams connecting clinical systems to Service Well Portal
- Developers implementing FHIR APIs for scheduling workflows
## How to Use This Guide
Start by reviewing:
1. **Profiles & Extensions** — constrained FHIR resources used in Wof_connect
2. **Use Cases & Flows** — how booking and rebooking are performed
3. **Capability Statements** — required server/client capabilities
4. **Terminology** — code systems and value sets used in scheduling
---
If you need help implementing or validating conformance, contact the Service Well integration team.
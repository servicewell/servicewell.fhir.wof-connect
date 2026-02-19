---
title: WOF Connect Billing Organization
---
<ul>
  <li>Owns the invoice number series used for billing.</li>
  <li>Owns the customer accounts (accounts receivable).</li>
  <li>Is responsible for statutory and reimbursement reporting to external authorities.</li>
  <li>Receives payment for performed services.</li>
</ul>

<p>A BillingOrganization is <b>independent of service location</b>:</p>

<ul>
  <li>A BillingOrganization may offer its services at <b>multiple HealthcareServices</b>.</li>
  <li>A HealthcareService may be associated with <b>multiple BillingOrganizations</b>.</li>
</ul>

# Scope & Usage

<p>This supports scenarios where:</p>
<ul>
  <li>Multiple practitioners with separate financial responsibility work at the same service location.</li>
  <li>A single practitioner or billing entity provides services at several locations.</li>
</ul>

<p><b>Important:</b> BillingOrganization represents financial responsibility only. It does <b>not</b> describe where care is performed.</p>

<p><b>Current name in Backoffice:</b> OpusEconomy</p>

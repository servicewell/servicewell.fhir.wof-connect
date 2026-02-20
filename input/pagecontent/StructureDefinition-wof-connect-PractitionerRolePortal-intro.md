<ul>
  <li>Links a <b>PractitionerPortal</b> (the individual person).</li>
  <li>Links a <b>HealthcareServicePortal</b> (where the service is performed).</li>
  <li>Links a <b>BillingOrganizationPortal</b> (who is financially responsible).</li>
</ul>

<p>A PractitionerRole defines the <b>context</b> in which work is performed, not the person itself.</p>

<ul>
  <li>A Practitioner may have <b>multiple PractitionerRolePortals</b>.</li>
  <li>A Practitioner may work at <b>multiple HealthcareServicePortals</b>.</li>
  <li>A Practitioner may act under <b>different BillingOrganizationPortals</b> depending on context.</li>
</ul>

<p>This makes PractitionerRole the central concept for:</p>
<ul>
  <li>Booking and offers</li>
  <li>Pricing and duration rules</li>
  <li>Financial responsibility</li>
  <li>Service-specific configuration</li>
</ul>

<p><b>Important:</b> PractitionerRolePortal is intentionally used to separate the person from the context in which services are delivered and billed.</p>

<p><b>Current name in Backoffice:</b> Practitioner</p>
%dw 2.0
output application/json
---
{
  appName: Mule::p('app.name'),
  description :"ending of reprocess qbotica-po-papi-config",
  functionalIdentifier: Mule::p('functionalIdentifier'),
  correlationId: vars.logvar.correlationId,
  businessIdentifier1: "message id ",
  businessIdentifier1Value: attributes.'sqs.message.id'
}
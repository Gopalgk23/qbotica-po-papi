%dw 2.0
output application/json
---
{
  appName: Mule::p('app.name'),
  description :"starting of reprocess qbotica-po-papi-config",
  functionalIdentifier: Mule::p('functionalIdentifier'),
  correlationId: correlationId,
  businessIdentifier1: "message id ",
  businessIdentifier1Value: attributes.'sqs.message.id'
}
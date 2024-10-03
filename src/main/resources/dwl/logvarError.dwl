%dw 2.0
output application/json
---
{
  appName: Mule::p('app.name'),
  description :"starting of qbotica-po-papi-flow",
  functionalIdentifier: Mule::p('functionalIdentifier'),
  correlationId: vars.logvar.correlationId,
  businessIdentifier1: "message id ",
  businessIdentifier1Value: attributes.'sqs.message.id',
   error:
  {
  	Type: error.errorType.identifier,
    Details: "unable to send message to sqs : " ++ p('secure::aws.sqs.url'),
    Description: error.detailedDescription
    
   }
  
  
}
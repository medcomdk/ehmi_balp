/*
Instance: EHMISampleAuditEvent-2.1-MSH-Sender-msg-received
InstanceOf: EHMISampleAuditEvent
Description: "An example of an EhmiDeliveryStatus."
* id = "2.1"
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging
* subtype.code = $EhmiDeliveryStatusSubTypesValueset#msg-received
* recorded = "2023-10-01T00:00:00.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// ehmiSender
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice 
* agent[ehmiDevice].name = "Systematic Cura EUAPPL"
* agent[ehmiDevice].requestor = true
* agent[ehmiDevice].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#ehmiDEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV12345"
// source
* source.observer.identifier.value = "DEV12345"
* source.type.code = $EhmiDeliveryStatusSourceType#EUP
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"

Instance: EHMISampleAuditEvent-2.2-MSH-Sender-msg-sent
InstanceOf: EHMISampleAuditEvent
Description: "An example of an EhmiDeliveryStatus."
* id = "2.2"
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging
* subtype.code = $EhmiDeliveryStatusSubTypesValueset#msg-sent
* recorded = "2023-10-01T00:00:00.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// ehmiSender
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice 
* agent[ehmiDevice].name = "Systematic Cura MSH"
* agent[ehmiDevice].requestor = true
* agent[ehmiDevice].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#ehmiDEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV123456"
// source
* source.observer.identifier.value = "DEV123456"
* source.type.code = $EhmiDeliveryStatusSourceType#MSH
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
*/
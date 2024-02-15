Instance: EDS_PDS_Create-04.1-AP-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatusPatientCreate
Description: "An example of an EdsBasicDeliveryStatusPatientCreate."
* id = "EBAPC04.1"
* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[ehmiSubType].code = $EhmiDeliveryStatusSubTypes#msg-received
* subtype[ehmiSubType].system = $EhmiDeliveryStatusSubTypes
* recorded = "2023-10-01T00:00:07.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// Client
* agent[client].name = "MultiMed AP"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "AP123456"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "EHMI Delivery Status (EDS)"
* agent[server].requestor = false
* agent[server].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[server].type.coding.code = $AuditEventAgentWhoTypes#110152
* agent[server].type.coding.display = "Destination Role ID"
* agent[server].who.identifier.value = "EDSS1234"
* agent[server].network.address = "http://eds.ehmi.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
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
// source
* source.observer.identifier.value = "AP123456"
* source.type.code = $EhmiDeliveryStatusSourceType#MSH
* source.type.system = $EhmiDeliveryStatusSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"

Instance: EDS_PDS_Create-04.2-AP-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatusPatientCreate
Description: "An example of an EdsBasicDeliveryStatusPatientCreate."
* id = "EBAPC04.2"
* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[ehmiSubType].code = $EhmiDeliveryStatusSubTypesValueSet#msg-sent
* subtype[ehmiSubType].system = $EhmiDeliveryStatusSubTypes
* recorded = "2023-10-01T00:00:08.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// Client
* agent[client].name = "MultiMed AP"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "AP123456"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "EHMI Delivery Status (EDS)"
* agent[server].requestor = false
* agent[server].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[server].type.coding.code = $AuditEventAgentWhoTypes#110152
* agent[server].type.coding.display = "Destination Role ID"
* agent[server].who.identifier.value = "EDSS1234"
* agent[server].network.address = "http://eds.ehmi.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
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
// source
* source.observer.identifier.value = "AP123456"
* source.type.code = $EhmiDeliveryStatusSourceType#EUP
* source.type.system = $EhmiDeliveryStatusSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"

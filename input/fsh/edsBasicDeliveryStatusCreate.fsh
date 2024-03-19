Profile: EdsBasicDeliveryStatusCreate
Parent: IHE.BasicAudit.Create
Description: "*** UNDER SPECIFICATION ***

EHMI profile of the IHE.BasicAudit.Create profile. 

EdsBasicDeliveryStatusCreate is used to define the basic status reporting for EDS from the EDS Client to the EDS Server.

EdsBasicDeliveryStatusCreate is used when a Patient entity is not required, for instance for reporting of Acknowledgments

A basic EdsBasicDeliveryStatus based on the AuditEvent profile for when a RESTful EdsBasicDeliveryStatus Create action happens successfully.

It is used when 

- the resource does not have a Patient subject or is otherwise associated with a Patient

  - when the resource is Patient specific then PatientCreate is used

- And the request is authorized

- Authorization failures should follow FHIR core Access Denied

- When successful

- Note a failure EdsBasicDeliveryStatus may follow this pattern, but would not be a successful outcome and should have an OperationOutcome

- Then the EdsBasicDeliveryStatus recorded will conform
" 
* ^url = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/EdsBasicDeliveryStatusCreate"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the EdsBasicDeliveryStatusCreate.</div>"
* ^text.status = #additional
* ^contact[0].name = "MedCom"
* ^contact[=].telecom.value = "https://www.medcom.dk/"
* ^contact[=].telecom.system = #url
* ^contact[+].name = "OVI"
* ^contact[=].telecom.value = "ovi@medcom.dk"
* ^contact[=].telecom.system = #email
//* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^status = #active
* ^publisher = "MedCom"
* ^date = "2024-01-01"
* ^copyright = "CC0-1.0"
* ^experimental = false
* id 1..
* id MS SU
* type MS SU
* type.system = "http://terminology.hl7.org/CodeSystem/audit-event-type"
* type.code = http://terminology.hl7.org/CodeSystem/audit-event-type#rest
* type.display = "Restful Operation"

* subtype 2..2 MS SU
* subtype contains
    msg-created 0..1 and 
    msg-sent 0..1 and 
    msg-received 0..1 and 
    msg-finalized 0..1 
//* subtype[msg-created]
* subtype[msg-created].code 1..1
* subtype[msg-created].system 1..1
* subtype[msg-created].display 1..1
* subtype[msg-created] = $EhmiDeliveryStatusSubTypes#msg-created "Message created" (exactly)
//* subtype[msg-sent]
* subtype[msg-sent].code 1..1
* subtype[msg-sent].system 1..1
* subtype[msg-sent].display 1..1
* subtype[msg-sent] = $EhmiDeliveryStatusSubTypes#msg-sent "Message sent" (exactly)
//* subtype[msg-received]
* subtype[msg-received].code 1..1
* subtype[msg-received].system 1..1
* subtype[msg-received].display 1..1
* subtype[msg-received] = $EhmiDeliveryStatusSubTypes#msg-received "Message received" (exactly)
//* subtype[msg-finalized]
* subtype[msg-finalized].code 1..1
* subtype[msg-finalized].system 1..1
* subtype[msg-finalized].display 1..1
* subtype[msg-finalized] = $EhmiDeliveryStatusSubTypes#msg-finalized "Message finalized" (exactly)

* action 1..1
* action = http://hl7.org/fhir/audit-event-action#C
* period 0..0
* outcome 1..1 MS SU
* outcome from $EhmiDeliveryStatusOutcomeValueSet
* outcomeDesc 0..0
* purposeOfEvent 0..0

* agent.extension contains OtherId named otherId 0..* MS
* agent contains
    ehmiSender 1..1 and
    ehmiReceiver 1..1 
* agent 4..6
//* ^agent[ehmiSender]
* agent[ehmiSender].extension ^slicing.discriminator[1].type = #value
* agent[ehmiSender].extension ^slicing.discriminator[=].path = "value.ofType(Identifier).type"
* agent[ehmiSender].extension[otherId] contains 
	  gln 0..* 
* agent[ehmiSender].name 0..1 MS 
* agent[ehmiSender].type 1..1 MS 
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type ^short = "$EhmiDeliveryStatusParticipationRoleType#ehmiSender"
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.identifier ^short = "equals SBDH/BusinessScope/Scope[Type=Sender]/InstanceIdentifier"
* agent[ehmiSender].who.type 1..1 MS SU
* agent[ehmiSender].who.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueSet
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiSender].who.type ^short = "$EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR"
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.type ^short = "GLN"
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.value 1..1 MS
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.value ^short = "equals SBDH/Receiver/Identifier"
//* agent[ehmiReceiver]
* agent[ehmiReceiver].extension ^slicing.discriminator[1].type = #value
* agent[ehmiReceiver].extension ^slicing.discriminator[=].path = "value.ofType(Identifier).type"
* agent[ehmiReceiver].extension[otherId] contains 
	  gln 0..* 
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
* agent[ehmiReceiver].who.type 1..1 MS SU
* agent[ehmiReceiver].who.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueSet
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR 
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.type ^short = "GLN"
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.value 1..1 MS
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.value ^short = "equals SBDH/Sender/Identifier"
//source
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from $EhmiDeliveryStatusSourceTypeValueSet
* source.type.system = $EhmiDeliveryStatusSourceType
* source.observer.type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice
* source.observer.identifier 0..1 MS SU

// entity
* entity 2..
* entity contains
    ehmiMessage 1..1 and
    ehmiEnvelope 0..1 and
    ehmiOrigMessage 0..1 and
    ehmiOrigEnvelope 0..1 
* entity.type from $EhmiDeliveryStatusEntityTypeValueSet
//* entity[ehmiMessage]
* entity[ehmiMessage].what.identifier 1..1 MS SU
* entity[ehmiMessage].type 1..1 MS 
* entity[ehmiMessage].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open 
  * ^short = "something short"
* entity[ehmiMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 
* entity[ehmiMessage].detail 2..2
* entity[ehmiMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType (exactly)
//* entity[ehmiMessage].detail[ehmiMessageType].type.code from $MedComMessageDefinitionUriVS
//* entity[ehmiMessage].detail[ehmiMessageType].type.system = $MedComMessageDefinitionUri
* entity[ehmiMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiMessage].detail[ehmiMessageType].valueString ^short = "equals 'SBDH/DocumentIdentification/Standard/[value]' e.g. urn:dk:healthcare:medcom:fhir:structuredefinition:carecommunication"
* entity[ehmiMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion (exactly)
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString 1..1
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString ^short = "equals 'SBDH/DocumentIdentification/TypeVersion/[value]' e.g. 3.0"
//* entity[ehmiEnvelope]
* entity[ehmiEnvelope].what.identifier 1..1 MS SU
* entity[ehmiEnvelope].type 1..1 MS
* entity[ehmiEnvelope].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiEnvelope].type.display = "Envelope"
* entity[ehmiEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open 
  * ^short = "something short"
* entity[ehmiEnvelope].detail contains
    ehmiEnvelopeType 1..1 and
    ehmiEnvelopeVersion 1..1
* entity[ehmiEnvelope].detail 2..2
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType (exactly)
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString 1..1
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString ^short = "= 'SBDH'"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion (exactly)
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString 1..1
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString ^short = "equals SBDH/HeaderVersion/[value] e.g. 1.2"
//* entity[ehmiOrigMessage]
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type 1..1 MS
* entity[ehmiOrigMessage].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiOrigMessage].type.display = "Original Message"
* entity[ehmiOrigMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open  
  * ^short = "something short"
* entity[ehmiOrigMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 
* entity[ehmiOrigMessage].detail 2..2
* entity[ehmiOrigMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString 1..1
//* entity[ehmiOrigEnvelope]
* entity[ehmiOrigEnvelope].what.identifier 1..1 MS SU
* entity[ehmiOrigEnvelope].type 1..1 MS
* entity[ehmiOrigEnvelope].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiOrigEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigEnvelope
* entity[ehmiOrigEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiOrigEnvelope
* entity[ehmiOrigEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiOrigEnvelope].type.display = "Original Envelope"
* entity[ehmiOrigEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
  * ^short = "something short"
* entity[ehmiOrigEnvelope].detail contains
    ehmiEnvelopeType 1..1 and
    ehmiEnvelopeVersion 1..1
* entity[ehmiOrigEnvelope].detail 2..2
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType (exactly)
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].valueString 1..1
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion (exactly)
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].valueString 1..1

/*
Extension: GLNId
Id: ihe-otherId
Title: "AuditEvent.agent other identifiers"
Description: "Carries other identifiers are known for an agent."
* ^context[+].type = #element
* ^context[=].expression = "AuditEvent.agent"
* value[x] only Identifier
* valueIdentifier 1..1
*/
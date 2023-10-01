Profile: EHMIAuditEvent
Parent: AuditEvent
Description: "EHMI profile of the AuditEvent resource."
* id 1..
* id MS SU
* type MS SU
* type from ehmi-auditevent-types-valueset
* type = #EHMI-messaging
* subtype 1..1 MS SU
* subtype from ehmi-auditevent-sub-types-valueset
* action 0..0
* period 0..0
* outcome 1..1 MS SU
* outcome from ehmi-auditevent-outcome-valueset
* outcomeDesc 0..0
* purposeOfEvent 0..0
* agent.modifierExtension 0..0 
* agent.type 1..1 MS 
* agent.type from ehmi-auditevent-participationroletype-valueset
* agent.name 1..1 MS 
* agent.network 0..0
* agent.network.type 0..0
* agent.who 0..1 
* agent.who.type 0..1 
* agent.who.identifier 0..1 
* agent ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* agent contains
    Sender 1..1 and
    Receiver 1..1 and
    Device 1..1
* agent[Sender].who only Reference(Organization)
* agent[Sender].who.identifier 1..1 MS SU
* agent[Sender].who.type 1..1 MS SU
* agent[Sender].who.type.value = #SENDER
//* ^agent[Sender].requestor = true
* agent[Receiver].who only Reference(Organization)
* agent[Receiver].who.identifier 1..1 MS SU
* agent[Receiver].who.type 1..1 MS SU
* agent[Receiver].who.type.value = #RECEIVER
//* ^agent[Receiver].requestor = false
* agent[Device].who only Reference(Device)
* agent[Device].who.identifier 1..1 MS SU
* agent[Device].who.type 1..1 MS SU
* agent[Device].who.type.value = #DEVICE
//* ^agent[Device].requestor = false
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from ehmi-auditevent-source-type-valueset
* entity 1..3 MS
* entity.modifierExtension 0..0 
//* entity.type MS SU
* entity ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity contains
    Patient 1..1 and //check kardinalitet
    Message 1..1 and
    Envelope 1..1
* entity[Patient].modifierExtension 0..0 
* entity[Patient].what only Reference(Patient)
* entity[Patient].what.identifier 1..1 MS SU
* entity[Patient].type 1..1 MS 
* entity[Patient].type from ehmi-auditevent-entity-type-valueset
* entity[Patient].type.code = #Patient
* entity[Message].modifierExtension 0..0 
* entity[Message].what only Reference(MessageHeader)
* entity[Message].what.identifier 1..1 MS SU
* entity[Message].type 1..1 MS 
* entity[Message].type from ehmi-auditevent-entity-type-valueset
* entity[Message].type.code = #Message
* entity[Envelope].modifierExtension 0..0 
* entity[Envelope].what only Reference(MessageHeader)
* entity[Envelope].what.identifier 1..1 MS SU
* entity[Envelope].type 1..1 MS
* entity[Envelope].type from ehmi-auditevent-entity-type-valueset
* entity[Envelope].type.code = #Envelope

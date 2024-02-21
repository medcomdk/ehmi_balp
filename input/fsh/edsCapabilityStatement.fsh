Instance: EdsDeliveryStatusCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* description = """
CapabilityStatement for [Audit Consumer](volume-1.html#152112-audit-consumer) Actor in [BALP](index.html).

This CapabilityStatement replicates the requirements that would come from the ATNA **Audit Consumer* actor supporting **ATNA Retrieve Audit Message Option**.
"""
* name = "EdsDeliveryStatusCapabilityStatement"
* title = "EdsDeliveryStatusCapabilityStatement"
* status = #active
* experimental = false
* date = "2022-10-28"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "EdsDeliveryStatusCapabilityStatement will query for AuditEvent resources."
  * security
    * description = "[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) required, encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
  * resource[+]
    * type = #AuditEvent
    * documentation = "For Retrieve ATNA Audit Event [ITI-81]. Note that all EdsDeliveryStatusContent profiles are listed here."
    // list all profiles defined in BALP
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusCreate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusRead"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusUpdate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusDelete"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusQuery"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusCreate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusRead"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusUpdate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusDelete"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusQuery"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/IHE.IUA.71"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Comprehensive"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Minimal"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Opaque"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusSAMLaccessTokenUse.Comprehensive"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusSAMLaccessTokenUse.Minimal"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusAuthZconsent"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusPrivacyDisclosure.Recipient"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusPrivacyDisclosure.Source"
    * interaction[+].code = #search-type
    * interaction[+].code = #read
    * searchParam[+]
      * name = "_id"
      * type = #token
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "agent.identifier"
      * type = #token
    * searchParam[+]
      * name = "patient.identifier"
      * type = #token
    * searchParam[+]
      * name = "entity.identifier"
      * type = #token
    * searchParam[+]
      * name = "entity-type"
      * type = #token
    * searchParam[+]
      * name = "entity-role"
      * type = #token
    * searchParam[+]
      * name = "source.identifier"
      * type = #token
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "subtype"
      * type = #token
    * searchParam[+]
      * name = "outcome"
      * type = #token




Instance: EdsDeliveryStatus.AuditRecordRepository
InstanceOf: CapabilityStatement
Usage: #definition
* description = """
EdsDeliveryStatusCapabilityStatement for ATNA

CapabilityStatement for [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Audit Record Repository Actor with the ATNA ATX:FHIR Feed Option and Retrieve Audit Message Option defined in [RESTful-ATNA Supplement](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf) that also has support for EdsDeliveryStatusContent.

This Actor is derived off of the ATNA Audit Record Repository actor that is not yet defined fully in an IG. This CapabilityStatement does not represent a formal Actor, but rather a system that has grouped ATNA and BALP.
"""
* name = "IHE_BALP_ATNA_AuditRecordRepository"
* title = "IHE ATNA Audit Record Repository supporting EdsDeliveryStatusContent"
* status = #active
* experimental = false
* date = "2022-10-28"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * security
    * description = "[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) required, encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
  * resource[+]
    * type = #AuditEvent
    * documentation = "For Retrieve ATNA Audit Event [ITI-81] and the FHIR Record Audit Event [ITI-20]. Note that all EdsDeliveryStatusContent profiles are listed here."
    // list all profiles defined in BALP
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusCreate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusRead"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusUpdate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusDelete"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusQuery"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusCreate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusRead"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusUpdate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusDelete"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusQuery"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/IHE.IUA.71"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Comprehensive"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Minimal"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Opaque"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusSAMLaccessTokenUse.Comprehensive"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusSAMLaccessTokenUse.Minimal"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusAuthZconsent"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusPrivacyDisclosure.Recipient"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusPrivacyDisclosure.Source"
    * interaction[+].code = #search-type
    * interaction[+].code = #read
    * interaction[+].code = #create
    * searchParam[+]
      * name = "_id"
      * type = #token
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
    * searchParam[+]
      * name = "date"
      * type = #date
    * searchParam[+]
      * name = "address"
      * type = #string
    * searchParam[+]
      * name = "agent.identifier"
      * type = #token
    * searchParam[+]
      * name = "patient.identifier"
      * type = #token
    * searchParam[+]
      * name = "entity.identifier"
      * type = #token
    * searchParam[+]
      * name = "entity-type"
      * type = #token
    * searchParam[+]
      * name = "entity-role"
      * type = #token
    * searchParam[+]
      * name = "source.identifier"
      * type = #token
    * searchParam[+]
      * name = "type"
      * type = #token
    * searchParam[+]
      * name = "subtype"
      * type = #token
    * searchParam[+]
      * name = "outcome"
      * type = #token



Instance: EdsDeliveryStatus.AuditCreator
InstanceOf: CapabilityStatement
Usage: #definition
* description = """
EdsDeliveryStatusCapabilityStatement for Audit Creator

CapabilityStatement for [Audit Creator](volume-1.html#152111-audit-creator) Actor in [BALP](index.html).

This Actor is derived off of the **ATNA Secure Application** or **Secure Node** actor with **ATNA ATX:FHIR Feed Option** using ITI-20. 
"""
* name = "IHE_BALP_AuditCreator"
* title = "IHE EdsDeliveryStatusAudit Creator"
* status = #active
* experimental = false
* date = "2022-10-28"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "EdsDeliveryStatus**Audit Creator** will CREATE AuditEvent resources, and send them to the **Audit Record Repository** with **ATNA ATX:FHIR Feed Option** using ITI-20 FHIR support."
  * security
    * description = "[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) required, encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
  * resource[+]
    * type = #AuditEvent
    * documentation = "For ATNA Record Audit Event [ITI-20] using FHIR. . Note that all EdsDeliveryStatusContent profiles are listed here."
    * interaction[+].code = #create
    // list all profiles defined in BALP
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusCreate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusRead"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusUpdate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusDelete"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusQuery"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusCreate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusRead"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusUpdate"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusDelete"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsPatientDeliveryStatusQuery"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/IHE.IUA.71"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Comprehensive"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Minimal"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusOAUTHaccessTokenUse.Opaque"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusSAMLaccessTokenUse.Comprehensive"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusSAMLaccessTokenUse.Minimal"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusAuthZconsent"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusPrivacyDisclosure.Recipient"
    * supportedProfile[+] = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinitionEdsBasicDeliveryStatusPrivacyDisclosure.Source"

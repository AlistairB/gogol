{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Healthcare.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Healthcare.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Determines how to redact text from image.
data ImageConfigTextRedactionMode
    = TextRedactionModeUnspecified
      -- ^ @TEXT_REDACTION_MODE_UNSPECIFIED@
      -- No text redaction specified. Same as REDACT_NO_TEXT.
    | RedactAllText
      -- ^ @REDACT_ALL_TEXT@
      -- Redact all text.
    | RedactSensitiveText
      -- ^ @REDACT_SENSITIVE_TEXT@
      -- Redact sensitive text.
    | RedactNoText
      -- ^ @REDACT_NO_TEXT@
      -- Do not redact text.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageConfigTextRedactionMode

instance FromHttpApiData ImageConfigTextRedactionMode where
    parseQueryParam = \case
        "TEXT_REDACTION_MODE_UNSPECIFIED" -> Right TextRedactionModeUnspecified
        "REDACT_ALL_TEXT" -> Right RedactAllText
        "REDACT_SENSITIVE_TEXT" -> Right RedactSensitiveText
        "REDACT_NO_TEXT" -> Right RedactNoText
        x -> Left ("Unable to parse ImageConfigTextRedactionMode from: " <> x)

instance ToHttpApiData ImageConfigTextRedactionMode where
    toQueryParam = \case
        TextRedactionModeUnspecified -> "TEXT_REDACTION_MODE_UNSPECIFIED"
        RedactAllText -> "REDACT_ALL_TEXT"
        RedactSensitiveText -> "REDACT_SENSITIVE_TEXT"
        RedactNoText -> "REDACT_NO_TEXT"

instance FromJSON ImageConfigTextRedactionMode where
    parseJSON = parseJSONText "ImageConfigTextRedactionMode"

instance ToJSON ImageConfigTextRedactionMode where
    toJSON = toJSONText

-- | Specifies which parts of the Message resource to return in the response.
-- When unspecified, equivalent to FULL.
data ProjectsLocationsDataSetsHl7V2StoresMessagesGetView
    = MessageViewUnspecified
      -- ^ @MESSAGE_VIEW_UNSPECIFIED@
      -- Not specified, equivalent to FULL.
    | RawOnly
      -- ^ @RAW_ONLY@
      -- Server responses include all the message fields except parsed_data
      -- field.
    | ParsedOnly
      -- ^ @PARSED_ONLY@
      -- Server responses include all the message fields except data field.
    | Full
      -- ^ @FULL@
      -- Server responses include all the message fields.
    | Basic
      -- ^ @BASIC@
      -- Server responses include only the name field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsDataSetsHl7V2StoresMessagesGetView

instance FromHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    parseQueryParam = \case
        "MESSAGE_VIEW_UNSPECIFIED" -> Right MessageViewUnspecified
        "RAW_ONLY" -> Right RawOnly
        "PARSED_ONLY" -> Right ParsedOnly
        "FULL" -> Right Full
        "BASIC" -> Right Basic
        x -> Left ("Unable to parse ProjectsLocationsDataSetsHl7V2StoresMessagesGetView from: " <> x)

instance ToHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    toQueryParam = \case
        MessageViewUnspecified -> "MESSAGE_VIEW_UNSPECIFIED"
        RawOnly -> "RAW_ONLY"
        ParsedOnly -> "PARSED_ONLY"
        Full -> "FULL"
        Basic -> "BASIC"

instance FromJSON ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    parseJSON = parseJSONText "ProjectsLocationsDataSetsHl7V2StoresMessagesGetView"

instance ToJSON ProjectsLocationsDataSetsHl7V2StoresMessagesGetView where
    toJSON = toJSONText

-- | The content structure in the source location. If not specified, the
-- server treats the input source files as BUNDLE.
data ImportResourcesRequestContentStructure
    = ContentStructureUnspecified
      -- ^ @CONTENT_STRUCTURE_UNSPECIFIED@
      -- If the content structure is not specified, the default value \`BUNDLE\`
      -- is used.
    | Bundle
      -- ^ @BUNDLE@
      -- The source file contains one or more lines of newline-delimited JSON
      -- (ndjson). Each line is a bundle that contains one or more resources. Set
      -- the bundle type to \`history\` to import resource versions.
    | Resource
      -- ^ @RESOURCE@
      -- The source file contains one or more lines of newline-delimited JSON
      -- (ndjson). Each line is a single resource.
    | BundlePretty
      -- ^ @BUNDLE_PRETTY@
      -- The entire file is one JSON bundle. The JSON can span multiple lines.
    | ResourcePretty
      -- ^ @RESOURCE_PRETTY@
      -- The entire file is one JSON resource. The JSON can span multiple lines.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImportResourcesRequestContentStructure

instance FromHttpApiData ImportResourcesRequestContentStructure where
    parseQueryParam = \case
        "CONTENT_STRUCTURE_UNSPECIFIED" -> Right ContentStructureUnspecified
        "BUNDLE" -> Right Bundle
        "RESOURCE" -> Right Resource
        "BUNDLE_PRETTY" -> Right BundlePretty
        "RESOURCE_PRETTY" -> Right ResourcePretty
        x -> Left ("Unable to parse ImportResourcesRequestContentStructure from: " <> x)

instance ToHttpApiData ImportResourcesRequestContentStructure where
    toQueryParam = \case
        ContentStructureUnspecified -> "CONTENT_STRUCTURE_UNSPECIFIED"
        Bundle -> "BUNDLE"
        Resource -> "RESOURCE"
        BundlePretty -> "BUNDLE_PRETTY"
        ResourcePretty -> "RESOURCE_PRETTY"

instance FromJSON ImportResourcesRequestContentStructure where
    parseJSON = parseJSONText "ImportResourcesRequestContentStructure"

instance ToJSON ImportResourcesRequestContentStructure where
    toJSON = toJSONText

-- | Deidentify action for one field.
data FieldMetadataAction
    = ActionUnspecified
      -- ^ @ACTION_UNSPECIFIED@
      -- No action specified.
    | Transform
      -- ^ @TRANSFORM@
      -- Transform the entire field.
    | InspectAndTransform
      -- ^ @INSPECT_AND_TRANSFORM@
      -- Inspect and transform any found PHI.
    | DoNotTransform
      -- ^ @DO_NOT_TRANSFORM@
      -- Do not transform.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FieldMetadataAction

instance FromHttpApiData FieldMetadataAction where
    parseQueryParam = \case
        "ACTION_UNSPECIFIED" -> Right ActionUnspecified
        "TRANSFORM" -> Right Transform
        "INSPECT_AND_TRANSFORM" -> Right InspectAndTransform
        "DO_NOT_TRANSFORM" -> Right DoNotTransform
        x -> Left ("Unable to parse FieldMetadataAction from: " <> x)

instance ToHttpApiData FieldMetadataAction where
    toQueryParam = \case
        ActionUnspecified -> "ACTION_UNSPECIFIED"
        Transform -> "TRANSFORM"
        InspectAndTransform -> "INSPECT_AND_TRANSFORM"
        DoNotTransform -> "DO_NOT_TRANSFORM"

instance FromJSON FieldMetadataAction where
    parseJSON = parseJSONText "FieldMetadataAction"

instance ToJSON FieldMetadataAction where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Specifies the output schema type. Schema type is required.
data SchemaConfigSchemaType
    = SchemaTypeUnspecified
      -- ^ @SCHEMA_TYPE_UNSPECIFIED@
      -- No schema type specified. This type is unsupported.
    | Analytics
      -- ^ @ANALYTICS@
      -- Analytics schema defined by the FHIR community. See
      -- https:\/\/github.com\/FHIR\/sql-on-fhir\/blob\/master\/sql-on-fhir.md.
      -- BigQuery only allows a maximum of 10,000 columns per table. Due to this
      -- limitation, the server will not generate schemas for fields of type
      -- \`Resource\`, which can hold any resource type. The affected fields are
      -- \`Parameters.parameter.resource\`, \`Bundle.entry.resource\`, and
      -- \`Bundle.entry.response.outcome\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchemaConfigSchemaType

instance FromHttpApiData SchemaConfigSchemaType where
    parseQueryParam = \case
        "SCHEMA_TYPE_UNSPECIFIED" -> Right SchemaTypeUnspecified
        "ANALYTICS" -> Right Analytics
        x -> Left ("Unable to parse SchemaConfigSchemaType from: " <> x)

instance ToHttpApiData SchemaConfigSchemaType where
    toQueryParam = \case
        SchemaTypeUnspecified -> "SCHEMA_TYPE_UNSPECIFIED"
        Analytics -> "ANALYTICS"

instance FromJSON SchemaConfigSchemaType where
    parseJSON = parseJSONText "SchemaConfigSchemaType"

instance ToJSON SchemaConfigSchemaType where
    toJSON = toJSONText

-- | Tag filtering profile that determines which tags to keep\/remove.
data DicomConfigFilterProFile
    = TagFilterProFileUnspecified
      -- ^ @TAG_FILTER_PROFILE_UNSPECIFIED@
      -- No tag filtration profile provided. Same as KEEP_ALL_PROFILE.
    | MinimalKeepListProFile
      -- ^ @MINIMAL_KEEP_LIST_PROFILE@
      -- Keep only tags required to produce valid DICOM.
    | AttributeConfidentialityBasicProFile
      -- ^ @ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE@
      -- Remove tags based on DICOM Standard\'s Attribute Confidentiality Basic
      -- Profile (DICOM Standard Edition 2018e)
      -- http:\/\/dicom.nema.org\/medical\/dicom\/2018e\/output\/chtml\/part15\/chapter_E.html.
    | KeepAllProFile
      -- ^ @KEEP_ALL_PROFILE@
      -- Keep all tags.
    | DeidentifyTagContents
      -- ^ @DEIDENTIFY_TAG_CONTENTS@
      -- Inspects within tag contents and replaces sensitive text. The process
      -- can be configured using the TextConfig. Applies to all tags with the
      -- following Value Representation names: AE, LO, LT, PN, SH, ST, UC, UT,
      -- DA, DT, AS
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DicomConfigFilterProFile

instance FromHttpApiData DicomConfigFilterProFile where
    parseQueryParam = \case
        "TAG_FILTER_PROFILE_UNSPECIFIED" -> Right TagFilterProFileUnspecified
        "MINIMAL_KEEP_LIST_PROFILE" -> Right MinimalKeepListProFile
        "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE" -> Right AttributeConfidentialityBasicProFile
        "KEEP_ALL_PROFILE" -> Right KeepAllProFile
        "DEIDENTIFY_TAG_CONTENTS" -> Right DeidentifyTagContents
        x -> Left ("Unable to parse DicomConfigFilterProFile from: " <> x)

instance ToHttpApiData DicomConfigFilterProFile where
    toQueryParam = \case
        TagFilterProFileUnspecified -> "TAG_FILTER_PROFILE_UNSPECIFIED"
        MinimalKeepListProFile -> "MINIMAL_KEEP_LIST_PROFILE"
        AttributeConfidentialityBasicProFile -> "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE"
        KeepAllProFile -> "KEEP_ALL_PROFILE"
        DeidentifyTagContents -> "DEIDENTIFY_TAG_CONTENTS"

instance FromJSON DicomConfigFilterProFile where
    parseJSON = parseJSONText "DicomConfigFilterProFile"

instance ToJSON DicomConfigFilterProFile where
    toJSON = toJSONText

-- | Specifies the parts of the Message to return in the response. When
-- unspecified, equivalent to BASIC. Setting this to anything other than
-- BASIC with a \`page_size\` larger than the default can generate a large
-- response, which impacts the performance of this method.
data ProjectsLocationsDataSetsHl7V2StoresMessagesListView
    = PLDSHVSMLVMessageViewUnspecified
      -- ^ @MESSAGE_VIEW_UNSPECIFIED@
      -- Not specified, equivalent to FULL.
    | PLDSHVSMLVRawOnly
      -- ^ @RAW_ONLY@
      -- Server responses include all the message fields except parsed_data
      -- field.
    | PLDSHVSMLVParsedOnly
      -- ^ @PARSED_ONLY@
      -- Server responses include all the message fields except data field.
    | PLDSHVSMLVFull
      -- ^ @FULL@
      -- Server responses include all the message fields.
    | PLDSHVSMLVBasic
      -- ^ @BASIC@
      -- Server responses include only the name field.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsLocationsDataSetsHl7V2StoresMessagesListView

instance FromHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    parseQueryParam = \case
        "MESSAGE_VIEW_UNSPECIFIED" -> Right PLDSHVSMLVMessageViewUnspecified
        "RAW_ONLY" -> Right PLDSHVSMLVRawOnly
        "PARSED_ONLY" -> Right PLDSHVSMLVParsedOnly
        "FULL" -> Right PLDSHVSMLVFull
        "BASIC" -> Right PLDSHVSMLVBasic
        x -> Left ("Unable to parse ProjectsLocationsDataSetsHl7V2StoresMessagesListView from: " <> x)

instance ToHttpApiData ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    toQueryParam = \case
        PLDSHVSMLVMessageViewUnspecified -> "MESSAGE_VIEW_UNSPECIFIED"
        PLDSHVSMLVRawOnly -> "RAW_ONLY"
        PLDSHVSMLVParsedOnly -> "PARSED_ONLY"
        PLDSHVSMLVFull -> "FULL"
        PLDSHVSMLVBasic -> "BASIC"

instance FromJSON ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    parseJSON = parseJSONText "ProjectsLocationsDataSetsHl7V2StoresMessagesListView"

instance ToJSON ProjectsLocationsDataSetsHl7V2StoresMessagesListView where
    toJSON = toJSONText

-- | The FHIR specification version that this FHIR store supports natively.
-- This field is immutable after store creation. Requests are rejected if
-- they contain FHIR resources of a different version. Version is required
-- for every FHIR store.
data FhirStoreVersion
    = VersionUnspecified
      -- ^ @VERSION_UNSPECIFIED@
      -- Users must specify a version on store creation or an error is returned.
    | DSTU2
      -- ^ @DSTU2@
      -- Draft Standard for Trial Use, [Release
      -- 2](https:\/\/www.hl7.org\/fhir\/DSTU2)
    | STU3
      -- ^ @STU3@
      -- Standard for Trial Use, [Release 3](https:\/\/www.hl7.org\/fhir\/STU3)
    | R4
      -- ^ @R4@
      -- [Release 4](https:\/\/www.hl7.org\/fhir\/R4)
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FhirStoreVersion

instance FromHttpApiData FhirStoreVersion where
    parseQueryParam = \case
        "VERSION_UNSPECIFIED" -> Right VersionUnspecified
        "DSTU2" -> Right DSTU2
        "STU3" -> Right STU3
        "R4" -> Right R4
        x -> Left ("Unable to parse FhirStoreVersion from: " <> x)

instance ToHttpApiData FhirStoreVersion where
    toQueryParam = \case
        VersionUnspecified -> "VERSION_UNSPECIFIED"
        DSTU2 -> "DSTU2"
        STU3 -> "STU3"
        R4 -> "R4"

instance FromJSON FhirStoreVersion where
    parseJSON = parseJSONText "FhirStoreVersion"

instance ToJSON FhirStoreVersion where
    toJSON = toJSONText

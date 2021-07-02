{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Healthcare.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Healthcare.Types
    (
    -- * Service Configuration
      healthcareService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * ExportResourcesRequest
    , ExportResourcesRequest
    , exportResourcesRequest
    , errBigQueryDestination
    , errGcsDestination

    -- * CharacterMaskConfig
    , CharacterMaskConfig
    , characterMaskConfig
    , cmcMaskingCharacter

    -- * InfoTypeTransformation
    , InfoTypeTransformation
    , infoTypeTransformation
    , ittRedactConfig
    , ittCharacterMaskConfig
    , ittInfoTypes
    , ittDateShiftConfig
    , ittReplaceWithInfoTypeConfig
    , ittCryptoHashConfig

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- * RedactConfig
    , RedactConfig
    , redactConfig

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncPubsubTopic

    -- * ImportResourcesResponse
    , ImportResourcesResponse
    , importResourcesResponse

    -- * FhirConfig
    , FhirConfig
    , fhirConfig
    , fcFieldMetadataList

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * TextConfig
    , TextConfig
    , textConfig
    , tcTransformations

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * FhirStore
    , FhirStore
    , fhirStore
    , fsEnableUpdateCreate
    , fsNotificationConfig
    , fsDisableReferentialIntegrity
    , fsDisableResourceVersioning
    , fsName
    , fsVersion
    , fsStreamConfigs
    , fsLabels

    -- * SegmentFields
    , SegmentFields
    , segmentFields
    , sfAddtional

    -- * DataSet
    , DataSet
    , dataSet
    , dsName
    , dsTimeZone

    -- * ImportDicomDataResponse
    , ImportDicomDataResponse
    , importDicomDataResponse

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * ImageConfig
    , ImageConfig
    , imageConfig
    , icTextRedactionMode

    -- * Empty
    , Empty
    , empty

    -- * ImportDicomDataRequest
    , ImportDicomDataRequest
    , importDicomDataRequest
    , iddrGcsSource

    -- * GoogleCloudHealthcareV1DicomBigQueryDestination
    , GoogleCloudHealthcareV1DicomBigQueryDestination
    , googleCloudHealthcareV1DicomBigQueryDestination
    , gchvdbqdForce
    , gchvdbqdTableURI

    -- * Hl7V2Store
    , Hl7V2Store
    , hl7V2Store
    , hvsNotificationConfigs
    , hvsRejectDuplicateMessage
    , hvsName
    , hvsParserConfig
    , hvsLabels

    -- * GoogleCloudHealthcareV1DicomGcsSource
    , GoogleCloudHealthcareV1DicomGcsSource
    , googleCloudHealthcareV1DicomGcsSource
    , gchvdgsURI

    -- * Hl7V2NotificationConfig
    , Hl7V2NotificationConfig
    , hl7V2NotificationConfig
    , hvncPubsubTopic
    , hvncFilter

    -- * GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary
    , googleCloudHealthcareV1DeidentifyDeidentifyFhirStoreSummary

    -- * GoogleCloudHealthcareV1FhirGcsDestination
    , GoogleCloudHealthcareV1FhirGcsDestination
    , googleCloudHealthcareV1FhirGcsDestination
    , gchvfgdURIPrefix

    -- * ExportDicomDataResponse
    , ExportDicomDataResponse
    , exportDicomDataResponse

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SchemaConfig
    , SchemaConfig
    , schemaConfig
    , scRecursiveStructureDepth
    , scSchemaType

    -- * ImageConfigTextRedactionMode
    , ImageConfigTextRedactionMode (..)

    -- * DateShiftConfig
    , DateShiftConfig
    , dateShiftConfig
    , dscCryptoKey

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * DicomFilterConfig
    , DicomFilterConfig
    , dicomFilterConfig
    , dfcResourcePathsGcsURI

    -- * DeidentifySummary
    , DeidentifySummary
    , deidentifySummary

    -- * GoogleCloudHealthcareV1DicomGcsDestination
    , GoogleCloudHealthcareV1DicomGcsDestination
    , googleCloudHealthcareV1DicomGcsDestination
    , gchvdgdURIPrefix
    , gchvdgdMimeType

    -- * Resources
    , Resources
    , resources
    , rResources

    -- * ProgressCounter
    , ProgressCounter
    , progressCounter
    , pcPending
    , pcSuccess
    , pcFailure

    -- * ProjectsLocationsDataSetsHl7V2StoresMessagesGetView
    , ProjectsLocationsDataSetsHl7V2StoresMessagesGetView (..)

    -- * ImportResourcesRequestContentStructure
    , ImportResourcesRequestContentStructure (..)

    -- * GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    , GoogleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary
    , googleCloudHealthcareV1DeidentifyDeidentifyDicomStoreSummary

    -- * FieldMetadataAction
    , FieldMetadataAction (..)

    -- * FieldMetadata
    , FieldMetadata
    , fieldMetadata
    , fmAction
    , fmPaths

    -- * DeidentifyConfig
    , DeidentifyConfig
    , deidentifyConfig
    , dcDicom
    , dcImage
    , dcFhir
    , dcText

    -- * FhirStoreLabels
    , FhirStoreLabels
    , fhirStoreLabels
    , fslAddtional

    -- * DeidentifyDicomStoreRequest
    , DeidentifyDicomStoreRequest
    , deidentifyDicomStoreRequest
    , ddsrConfig
    , ddsrFilterConfig
    , ddsrDestinationStore

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * ReplaceWithInfoTypeConfig
    , ReplaceWithInfoTypeConfig
    , replaceWithInfoTypeConfig

    -- * IngestMessageResponse
    , IngestMessageResponse
    , ingestMessageResponse
    , imrHl7Ack
    , imrMessage

    -- * Xgafv
    , Xgafv (..)

    -- * SchemaConfigSchemaType
    , SchemaConfigSchemaType (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ListHl7V2StoresResponse
    , ListHl7V2StoresResponse
    , listHl7V2StoresResponse
    , lhvsrNextPageToken
    , lhvsrHl7V2Stores

    -- * DicomConfigFilterProFile
    , DicomConfigFilterProFile (..)

    -- * ImportResourcesRequest
    , ImportResourcesRequest
    , importResourcesRequest
    , irrGcsSource
    , irrContentStructure

    -- * Hl7V2StoreLabels
    , Hl7V2StoreLabels
    , hl7V2StoreLabels
    , hvslAddtional

    -- * FhirFilter
    , FhirFilter
    , fhirFilter
    , ffResources

    -- * ParserConfig
    , ParserConfig
    , parserConfig
    , pcSegmentTerminator
    , pcAllowNullHeader

    -- * ProjectsLocationsDataSetsHl7V2StoresMessagesListView
    , ProjectsLocationsDataSetsHl7V2StoresMessagesListView (..)

    -- * HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- * TagFilterList
    , TagFilterList
    , tagFilterList
    , tflTags

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListDataSetsResponse
    , ListDataSetsResponse
    , listDataSetsResponse
    , ldsrNextPageToken
    , ldsrDataSets

    -- * FhirStoreVersion
    , FhirStoreVersion (..)

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * ListFhirStoresResponse
    , ListFhirStoresResponse
    , listFhirStoresResponse
    , lfsrNextPageToken
    , lfsrFhirStores

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * IngestMessageRequest
    , IngestMessageRequest
    , ingestMessageRequest
    , iMessage

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omLogsURL
    , omCounter
    , omEndTime
    , omAPIMethodName
    , omCancelRequested
    , omCreateTime

    -- * Message
    , Message
    , message
    , mData
    , mMessageType
    , mName
    , mPatientIds
    , mLabels
    , mSendTime
    , mSendFacility
    , mCreateTime
    , mParsedData

    -- * CryptoHashConfig
    , CryptoHashConfig
    , cryptoHashConfig
    , chcCryptoKey

    -- * DicomStore
    , DicomStore
    , dicomStore
    , dNotificationConfig
    , dName
    , dLabels

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * Segment
    , Segment
    , segment
    , sSetId
    , sSegmentId
    , sFields

    -- * MessageLabels
    , MessageLabels
    , messageLabels
    , mlAddtional

    -- * SearchResourcesRequest
    , SearchResourcesRequest
    , searchResourcesRequest
    , srrResourceType

    -- * DeidentifyDataSetRequest
    , DeidentifyDataSetRequest
    , deidentifyDataSetRequest
    , dConfig
    , dDestinationDataSet

    -- * ExportResourcesResponse
    , ExportResourcesResponse
    , exportResourcesResponse

    -- * PatientId
    , PatientId
    , patientId
    , piValue
    , piType

    -- * DicomConfig
    , DicomConfig
    , dicomConfig
    , dcSkipIdRedaction
    , dcKeepList
    , dcRemoveList
    , dcFilterProFile

    -- * StreamConfig
    , StreamConfig
    , streamConfig
    , scBigQueryDestination
    , scResourceTypes

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CreateMessageRequest
    , CreateMessageRequest
    , createMessageRequest
    , cmrMessage

    -- * DeidentifyFhirStoreRequest
    , DeidentifyFhirStoreRequest
    , deidentifyFhirStoreRequest
    , dfsrResourceFilter
    , dfsrConfig
    , dfsrDestinationStore

    -- * DicomStoreLabels
    , DicomStoreLabels
    , dicomStoreLabels
    , dslAddtional

    -- * ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrHl7V2Messages

    -- * GoogleCloudHealthcareV1FhirBigQueryDestination
    , GoogleCloudHealthcareV1FhirBigQueryDestination
    , googleCloudHealthcareV1FhirBigQueryDestination
    , gchvfbqdForce
    , gchvfbqdSchemaConfig
    , gchvfbqdDataSetURI

    -- * GoogleCloudHealthcareV1FhirGcsSource
    , GoogleCloudHealthcareV1FhirGcsSource
    , googleCloudHealthcareV1FhirGcsSource
    , gchvfgsURI

    -- * ListDicomStoresResponse
    , ListDicomStoresResponse
    , listDicomStoresResponse
    , lNextPageToken
    , lDicomStores

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * ExportDicomDataRequest
    , ExportDicomDataRequest
    , exportDicomDataRequest
    , eddrBigQueryDestination
    , eddrGcsDestination

    -- * ParsedData
    , ParsedData
    , parsedData
    , pdSegments
    ) where

import Network.Google.Healthcare.Types.Product
import Network.Google.Healthcare.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Healthcare API. This contains the host and root path used as a starting point for constructing service requests.
healthcareService :: ServiceConfig
healthcareService
  = defaultService (ServiceId "healthcare:v1")
      "healthcare.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

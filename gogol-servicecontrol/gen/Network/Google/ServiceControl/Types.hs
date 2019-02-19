{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceControl.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceControl.Types
    (
    -- * Service Configuration
      serviceControlService

    -- * OAuth Scopes
    , serviceControlScope
    , cloudPlatformScope

    -- * AuditLogServiceData
    , AuditLogServiceData
    , auditLogServiceData
    , alsdAddtional

    -- * AuditLogMetadata
    , AuditLogMetadata
    , auditLogMetadata
    , almAddtional

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * RequestMetadata
    , RequestMetadata
    , requestMetadata
    , rmCallerSuppliedUserAgent
    , rmCallerIP
    , rmDestinationAttributes
    , rmCallerNetwork
    , rmRequestAttributes

    -- * ResourceLabels
    , ResourceLabels
    , resourceLabels
    , rlAddtional

    -- * ReportRequest
    , ReportRequest
    , reportRequest
    , rrServiceConfigId
    , rrOperations

    -- * CheckRequest
    , CheckRequest
    , checkRequest
    , crOperation
    , crRequestProjectSettings
    , crServiceConfigId
    , crSkipActivationCheck

    -- * MetricValueLabels
    , MetricValueLabels
    , metricValueLabels
    , mvlAddtional

    -- * Distribution
    , Distribution
    , distribution
    , dSumOfSquaredDeviation
    , dMean
    , dExponentialBuckets
    , dMaximum
    , dLinearBuckets
    , dCount
    , dMinimum
    , dBucketCounts
    , dExplicitBuckets

    -- * QuotaPropertiesQuotaMode
    , QuotaPropertiesQuotaMode (..)

    -- * ExponentialBuckets
    , ExponentialBuckets
    , exponentialBuckets
    , ebGrowthFactor
    , ebScale
    , ebNumFiniteBuckets

    -- * Peer
    , Peer
    , peer
    , pRegionCode
    , pService
    , pIP
    , pPrincipal
    , pLabels
    , pPort

    -- * AuthorizationInfo
    , AuthorizationInfo
    , authorizationInfo
    , aiGranted
    , aiResourceAttributes
    , aiResource
    , aiPermission

    -- * Operation
    , Operation
    , operation
    , oImportance
    , oResourceContainer
    , oStartTime
    , oResources
    , oUserLabels
    , oQuotaProperties
    , oEndTime
    , oOperationName
    , oLabels
    , oOperationId
    , oConsumerId
    , oMetricValueSets
    , oLogEntries

    -- * MetricValueSet
    , MetricValueSet
    , metricValueSet
    , mvsMetricName
    , mvsMetricValues

    -- * LogEntryLabels
    , LogEntryLabels
    , logEntryLabels
    , lelAddtional

    -- * LogEntryProtoPayload
    , LogEntryProtoPayload
    , logEntryProtoPayload
    , leppAddtional

    -- * LinearBuckets
    , LinearBuckets
    , linearBuckets
    , lbOffSet
    , lbWidth
    , lbNumFiniteBuckets

    -- * Auth
    , Auth
    , auth
    , aPresenter
    , aClaims
    , aAudiences
    , aPrincipal
    , aAccessLevels

    -- * QuotaInfo
    , QuotaInfo
    , quotaInfo
    , qiLimitExceeded
    , qiQuotaMetrics
    , qiQuotaConsumed

    -- * Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- * ConsumerInfo
    , ConsumerInfo
    , consumerInfo
    , ciProjectNumber
    , ciConsumerNumber
    , ciType

    -- * AllocateInfo
    , AllocateInfo
    , allocateInfo
    , aiUnusedArguments

    -- * CheckErrorCode
    , CheckErrorCode (..)

    -- * QuotaOperation
    , QuotaOperation
    , quotaOperation
    , qoQuotaMode
    , qoMethodName
    , qoQuotaMetrics
    , qoLabels
    , qoOperationId
    , qoConsumerId

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * CheckError
    , CheckError
    , checkError
    , ceSubject
    , ceStatus
    , ceCode
    , ceDetail

    -- * QuotaOperationQuotaMode
    , QuotaOperationQuotaMode (..)

    -- * QuotaOperationLabels
    , QuotaOperationLabels
    , quotaOperationLabels
    , qolAddtional

    -- * ReportError
    , ReportError
    , reportError
    , reStatus
    , reOperationId

    -- * OperationImportance
    , OperationImportance (..)

    -- * AuthClaims
    , AuthClaims
    , authClaims
    , acAddtional

    -- * HTTPRequest
    , HTTPRequest
    , hTTPRequest
    , httprStatus
    , httprRequestURL
    , httprCacheFillBytes
    , httprRemoteIP
    , httprLatency
    , httprProtocol
    , httprServerIP
    , httprRequestSize
    , httprCacheValidatedWithOriginServer
    , httprUserAgent
    , httprCacheLookup
    , httprResponseSize
    , httprRequestMethod
    , httprCacheHit
    , httprReferer

    -- * AuthenticationInfoThirdPartyPrincipal
    , AuthenticationInfoThirdPartyPrincipal
    , authenticationInfoThirdPartyPrincipal
    , aitppAddtional

    -- * ResourceInfo
    , ResourceInfo
    , resourceInfo
    , riResourceName
    , riResourceContainer
    , riResourceLocation

    -- * MetricValue
    , MetricValue
    , metricValue
    , mvBoolValue
    , mvStartTime
    , mvMoneyValue
    , mvDoubleValue
    , mvStringValue
    , mvDistributionValue
    , mvEndTime
    , mvInt64Value
    , mvLabels

    -- * ResourceLocation
    , ResourceLocation
    , resourceLocation
    , rlOriginalLocations
    , rlCurrentLocations

    -- * PeerLabels
    , PeerLabels
    , peerLabels
    , plAddtional

    -- * QuotaProperties
    , QuotaProperties
    , quotaProperties
    , qpQuotaMode

    -- * Resource
    , Resource
    , resource
    , rService
    , rName
    , rLabels
    , rType

    -- * AllocateQuotaRequest
    , AllocateQuotaRequest
    , allocateQuotaRequest
    , aqrServiceConfigId
    , aqrAllocateOperation

    -- * Xgafv
    , Xgafv (..)

    -- * AuditLogResponse
    , AuditLogResponse
    , auditLogResponse
    , alrAddtional

    -- * RequestHeaders
    , RequestHeaders
    , requestHeaders
    , rhAddtional

    -- * CheckResponse
    , CheckResponse
    , checkResponse
    , cCheckErrors
    , cQuotaInfo
    , cServiceConfigId
    , cCheckInfo
    , cOperationId

    -- * AuditLogResourceOriginalState
    , AuditLogResourceOriginalState
    , auditLogResourceOriginalState
    , alrosAddtional

    -- * ReportResponse
    , ReportResponse
    , reportResponse
    , rReportErrors
    , rReportInfos
    , rServiceConfigId

    -- * LogEntryOperation
    , LogEntryOperation
    , logEntryOperation
    , leoFirst
    , leoProducer
    , leoLast
    , leoId

    -- * ReportInfo
    , ReportInfo
    , reportInfo
    , riQuotaInfo
    , riOperationId

    -- * LogEntry
    , LogEntry
    , logEntry
    , leOperation
    , leSeverity
    , leTextPayload
    , leHTTPRequest
    , leStructPayload
    , leName
    , leInsertId
    , leLabels
    , leProtoPayload
    , leTimestamp
    , leTrace

    -- * AuditLogRequest
    , AuditLogRequest
    , auditLogRequest
    , aAddtional

    -- * OperationLabels
    , OperationLabels
    , operationLabels
    , olAddtional

    -- * CheckInfo
    , CheckInfo
    , checkInfo
    , ciConsumerInfo
    , ciUnusedArguments

    -- * ConsumerInfoType
    , ConsumerInfoType (..)

    -- * AllocateQuotaResponse
    , AllocateQuotaResponse
    , allocateQuotaResponse
    , aAllocateInfo
    , aAllocateErrors
    , aQuotaMetrics
    , aServiceConfigId
    , aOperationId

    -- * LogEntrySeverity
    , LogEntrySeverity (..)

    -- * ExplicitBuckets
    , ExplicitBuckets
    , explicitBuckets
    , ebBounds

    -- * QuotaErrorCode
    , QuotaErrorCode (..)

    -- * QuotaError
    , QuotaError
    , quotaError
    , qeSubject
    , qeCode
    , qeDescription

    -- * AuthenticationInfo
    , AuthenticationInfo
    , authenticationInfo
    , aiThirdPartyPrincipal
    , aiPrincipalEmail
    , aiAuthoritySelector
    , aiServiceAccountKeyName

    -- * QuotaInfoQuotaConsumed
    , QuotaInfoQuotaConsumed
    , quotaInfoQuotaConsumed
    , qiqcAddtional

    -- * AuditLog
    , AuditLog
    , auditLog
    , alRequestMetadata
    , alStatus
    , alResourceName
    , alAuthorizationInfo
    , alServiceData
    , alMethodName
    , alResponse
    , alResourceOriginalState
    , alResourceLocation
    , alServiceName
    , alMetadata
    , alNumResponseItems
    , alAuthenticationInfo
    , alRequest

    -- * OperationUserLabels
    , OperationUserLabels
    , operationUserLabels
    , oulAddtional

    -- * LogEntryStructPayload
    , LogEntryStructPayload
    , logEntryStructPayload
    , lespAddtional

    -- * Request'
    , Request'
    , request'
    , rPath
    , rTime
    , rSize
    , rAuth
    , rFragment
    , rProtocol
    , rReason
    , rHeaders
    , rMethod
    , rQuery
    , rScheme
    , rId
    , rHost
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceControl.Types.Product
import           Network.Google.ServiceControl.Types.Sum

-- | Default request referring to version 'v1' of the Service Control API. This contains the host and root path used as a starting point for constructing service requests.
serviceControlService :: ServiceConfig
serviceControlService
  = defaultService (ServiceId "servicecontrol:v1")
      "servicecontrol.googleapis.com"

-- | Manage your Google Service Control data
serviceControlScope :: Proxy '["https://www.googleapis.com/auth/servicecontrol"]
serviceControlScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DoubleClickBids
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- DoubleClick Bid Manager API allows users to manage and create campaigns
-- and reports.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference>
module Network.Google.DoubleClickBids
    (
    -- * Service Configuration
      doubleClickBidsService

    -- * OAuth Scopes
    , doubleClickBidManagerScope

    -- * API Declaration
    , DoubleClickBidsAPI

    -- * Resources

    -- ** doubleclickbidmanager.lineitems.downloadlineitems
    , module Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems

    -- ** doubleclickbidmanager.lineitems.uploadlineitems
    , module Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems

    -- ** doubleclickbidmanager.queries.createquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery

    -- ** doubleclickbidmanager.queries.deletequery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery

    -- ** doubleclickbidmanager.queries.getquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery

    -- ** doubleclickbidmanager.queries.listqueries
    , module Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries

    -- ** doubleclickbidmanager.queries.runquery
    , module Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery

    -- ** doubleclickbidmanager.reports.listreports
    , module Network.Google.Resource.DoubleClickBidManager.Reports.Listreports

    -- ** doubleclickbidmanager.sdf.download
    , module Network.Google.Resource.DoubleClickBidManager.Sdf.Download

    -- * Types

    -- ** ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrNextPageToken
    , lrrReports
    , lrrKind

    -- ** DisjunctiveMatchStatement
    , DisjunctiveMatchStatement
    , disjunctiveMatchStatement
    , dmsEventFilters

    -- ** QueryMetadataFormat
    , QueryMetadataFormat (..)

    -- ** PathQueryOptionsFilterFilter
    , PathQueryOptionsFilterFilter (..)

    -- ** QueryMetadata
    , QueryMetadata
    , queryMetadata
    , qmGoogleCloudStoragePathForLatestReport
    , qmLocale
    , qmFormat
    , qmGoogleDrivePathForLatestReport
    , qmShareEmailAddress
    , qmRunning
    , qmDataRange
    , qmLatestReportRunTimeMs
    , qmReportCount
    , qmTitle
    , qmSendNotification

    -- ** PathQueryOptions
    , PathQueryOptions
    , pathQueryOptions
    , pqoPathFilters
    , pqoChannelGrouping

    -- ** RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrReportDataEndTimeMs
    , rqrDataRange
    , rqrReportDataStartTimeMs
    , rqrTimezoneCode

    -- ** FilterPair
    , FilterPair
    , filterPair
    , fpValue
    , fpType

    -- ** UploadLineItemsRequest
    , UploadLineItemsRequest
    , uploadLineItemsRequest
    , ulirLineItems
    , ulirFormat
    , ulirDryRun

    -- ** ParametersType
    , ParametersType (..)

    -- ** DownloadLineItemsRequestFilterType
    , DownloadLineItemsRequestFilterType (..)

    -- ** DownloadRequestFilterType
    , DownloadRequestFilterType (..)

    -- ** DownloadLineItemsRequest
    , DownloadLineItemsRequest
    , downloadLineItemsRequest
    , dlirFilterType
    , dlirFormat
    , dlirFileSpec
    , dlirFilterIds

    -- ** DownloadRequestFileTypesItem
    , DownloadRequestFileTypesItem (..)

    -- ** DownloadRequest
    , DownloadRequest
    , downloadRequest
    , drFileTypes
    , drFilterType
    , drVersion
    , drFilterIds

    -- ** ListQueriesResponse
    , ListQueriesResponse
    , listQueriesResponse
    , lqrQueries
    , lqrNextPageToken
    , lqrKind

    -- ** UploadLineItemsResponse
    , UploadLineItemsResponse
    , uploadLineItemsResponse
    , ulirUploadStatus

    -- ** QueryMetadataDataRange
    , QueryMetadataDataRange (..)

    -- ** ParametersMetricsItem
    , ParametersMetricsItem (..)

    -- ** QueryScheduleFrequency
    , QueryScheduleFrequency (..)

    -- ** ReportMetadata
    , ReportMetadata
    , reportMetadata
    , rmStatus
    , rmReportDataEndTimeMs
    , rmGoogleCloudStoragePath
    , rmReportDataStartTimeMs

    -- ** Report
    , Report
    , report
    , rParams
    , rKey
    , rMetadata

    -- ** RowStatus
    , RowStatus
    , rowStatus
    , rsEntityName
    , rsChanged
    , rsPersisted
    , rsRowNumber
    , rsErrors
    , rsEntityId

    -- ** Rule
    , Rule
    , rule
    , rName
    , rDisjunctiveMatchStatements

    -- ** DownloadLineItemsRequestFileSpec
    , DownloadLineItemsRequestFileSpec (..)

    -- ** ReportKey
    , ReportKey
    , reportKey
    , rkQueryId
    , rkReportId

    -- ** UploadLineItemsRequestFormat
    , UploadLineItemsRequestFormat (..)

    -- ** EventFilter
    , EventFilter
    , eventFilter
    , efDimensionFilter

    -- ** ChannelGrouping
    , ChannelGrouping
    , channelGrouping
    , cgRules
    , cgFallbackName
    , cgName

    -- ** PathQueryOptionsFilterMatch
    , PathQueryOptionsFilterMatch (..)

    -- ** UploadStatus
    , UploadStatus
    , uploadStatus
    , usRowStatus
    , usErrors

    -- ** PathQueryOptionsFilter
    , PathQueryOptionsFilter
    , pathQueryOptionsFilter
    , pqofValues
    , pqofFilter
    , pqofMatch

    -- ** QuerySchedule
    , QuerySchedule
    , querySchedule
    , qsFrequency
    , qsStartTimeMs
    , qsEndTimeMs
    , qsNextRunMinuteOfDay
    , qsNextRunTimezoneCode

    -- ** DownloadLineItemsResponse
    , DownloadLineItemsResponse
    , downloadLineItemsResponse
    , dlirLineItems

    -- ** DownloadResponse
    , DownloadResponse
    , downloadResponse
    , drInventorySources
    , drInsertionOrders
    , drCampaigns
    , drLineItems
    , drAdGroups
    , drAds

    -- ** ReportStatus
    , ReportStatus
    , reportStatus
    , rsState
    , rsFinishTimeMs
    , rsFormat
    , rsFailure

    -- ** Query
    , Query
    , query
    , qQueryId
    , qReportDataEndTimeMs
    , qSchedule
    , qKind
    , qParams
    , qMetadata
    , qReportDataStartTimeMs
    , qTimezoneCode

    -- ** Parameters
    , Parameters
    , parameters
    , pMetrics
    , pIncludeInviteData
    , pFilters
    , pGroupBys
    , pOptions
    , pType

    -- ** Xgafv
    , Xgafv (..)

    -- ** PathFilterPathMatchPosition
    , PathFilterPathMatchPosition (..)

    -- ** FilterPairType
    , FilterPairType (..)

    -- ** RunQueryRequestDataRange
    , RunQueryRequestDataRange (..)

    -- ** ReportStatusState
    , ReportStatusState (..)

    -- ** PathFilter
    , PathFilter
    , pathFilter
    , pfEventFilters
    , pfPathMatchPosition

    -- ** Options
    , Options
    , options
    , oPathQueryOptions
    , oIncludeOnlyTargetedUserLists

    -- ** ParametersGroupBysItem
    , ParametersGroupBysItem (..)

    -- ** ReportFailureErrorCode
    , ReportFailureErrorCode (..)

    -- ** DownloadLineItemsRequestFormat
    , DownloadLineItemsRequestFormat (..)

    -- ** ReportFailure
    , ReportFailure
    , reportFailure
    , rfErrorCode

    -- ** ReportStatusFormat
    , ReportStatusFormat (..)
    ) where

import Network.Google.Prelude
import Network.Google.DoubleClickBids.Types
import Network.Google.Resource.DoubleClickBidManager.Lineitems.Downloadlineitems
import Network.Google.Resource.DoubleClickBidManager.Lineitems.Uploadlineitems
import Network.Google.Resource.DoubleClickBidManager.Queries.CreateQuery
import Network.Google.Resource.DoubleClickBidManager.Queries.DeleteQuery
import Network.Google.Resource.DoubleClickBidManager.Queries.GetQuery
import Network.Google.Resource.DoubleClickBidManager.Queries.Listqueries
import Network.Google.Resource.DoubleClickBidManager.Queries.RunQuery
import Network.Google.Resource.DoubleClickBidManager.Reports.Listreports
import Network.Google.Resource.DoubleClickBidManager.Sdf.Download

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the DoubleClick Bid Manager API service.
type DoubleClickBidsAPI =
     QueriesGetQueryResource :<|> QueriesRunQueryResource
       :<|> QueriesDeleteQueryResource
       :<|> QueriesCreateQueryResource
       :<|> QueriesListqueriesResource
       :<|> ReportsListreportsResource
       :<|> LineitemsUploadlineitemsResource
       :<|> LineitemsDownloadlineitemsResource
       :<|> SdfDownloadResource

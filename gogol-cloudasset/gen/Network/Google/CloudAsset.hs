{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudAsset
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The cloud asset API manages the history and inventory of cloud
-- resources.
--
-- /See:/ <https://cloud.google.com/asset-inventory/docs/quickstart Cloud Asset API Reference>
module Network.Google.CloudAsset
    (
    -- * Service Configuration
      cloudAssetService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudAssetAPI

    -- * Resources

    -- ** cloudasset.assets.list
    , module Network.Google.Resource.CloudAsset.Assets.List

    -- * Types

    -- ** GoogleIdentityAccesscontextManagerV1BasicLevel
    , GoogleIdentityAccesscontextManagerV1BasicLevel
    , googleIdentityAccesscontextManagerV1BasicLevel
    , giamvblConditions
    , giamvblCombiningFunction

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , googleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , giamvspcResources
    , giamvspcVPCAccessibleServices
    , giamvspcRestrictedServices
    , giamvspcAccessLevels

    -- ** GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction
    , GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction (..)

    -- ** GoogleIdentityAccesscontextManagerV1AccessLevel
    , GoogleIdentityAccesscontextManagerV1AccessLevel
    , googleIdentityAccesscontextManagerV1AccessLevel
    , giamvalBasic
    , giamvalCustom
    , giamvalName
    , giamvalTitle
    , giamvalDescription

    -- ** GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType
    , GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType (..)

    -- ** GoogleIdentityAccesscontextManagerV1OSConstraintOSType
    , GoogleIdentityAccesscontextManagerV1OSConstraintOSType (..)

    -- ** Asset
    , Asset
    , asset
    , aAccessLevel
    , aServicePerimeter
    , aAccessPolicy
    , aName
    , aResource
    , aOrgPolicy
    , aIAMPolicy
    , aAssetType
    , aAncestors

    -- ** GoogleIdentityAccesscontextManagerV1ServicePerimeter
    , GoogleIdentityAccesscontextManagerV1ServicePerimeter
    , googleIdentityAccesscontextManagerV1ServicePerimeter
    , giamvspStatus
    , giamvspPerimeterType
    , giamvspName
    , giamvspSpec
    , giamvspTitle
    , giamvspUseExplicitDryRunSpec
    , giamvspDescription

    -- ** GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem
    , GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem (..)

    -- ** GoogleIdentityAccesscontextManagerV1OSConstraint
    , GoogleIdentityAccesscontextManagerV1OSConstraint
    , googleIdentityAccesscontextManagerV1OSConstraint
    , giamvocOSType
    , giamvocMinimumVersion
    , giamvocRequireVerifiedChromeOS

    -- ** GoogleIdentityAccesscontextManagerV1AccessPolicy
    , GoogleIdentityAccesscontextManagerV1AccessPolicy
    , googleIdentityAccesscontextManagerV1AccessPolicy
    , giamvapParent
    , giamvapEtag
    , giamvapName
    , giamvapTitle

    -- ** GoogleCloudOrgpolicyV1ListPolicy
    , GoogleCloudOrgpolicyV1ListPolicy
    , googleCloudOrgpolicyV1ListPolicy
    , gcovlpInheritFromParent
    , gcovlpAllValues
    , gcovlpDeniedValues
    , gcovlpAllowedValues
    , gcovlpSuggestedValue

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Resource
    , Resource
    , resource
    , rParent
    , rData
    , rVersion
    , rDiscoveryName
    , rDiscoveryDocumentURI
    , rResourceURL

    -- ** ListAssetsResponse
    , ListAssetsResponse
    , listAssetsResponse
    , larReadTime
    , larNextPageToken
    , larAssets

    -- ** Xgafv
    , Xgafv (..)

    -- ** ResourceData
    , ResourceData
    , resourceData
    , rdAddtional

    -- ** GoogleIdentityAccesscontextManagerV1CustomLevel
    , GoogleIdentityAccesscontextManagerV1CustomLevel
    , googleIdentityAccesscontextManagerV1CustomLevel
    , giamvclExpr

    -- ** GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
    , GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
    , googleIdentityAccesscontextManagerV1VPCAccessibleServices
    , giamvvasAllowedServices
    , giamvvasEnableRestriction

    -- ** GoogleCloudOrgpolicyV1Policy
    , GoogleCloudOrgpolicyV1Policy
    , googleCloudOrgpolicyV1Policy
    , gcovpBooleanPolicy
    , gcovpEtag
    , gcovpRestoreDefault
    , gcovpUpdateTime
    , gcovpVersion
    , gcovpListPolicy
    , gcovpConstraint

    -- ** GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem
    , GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem (..)

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** GoogleIdentityAccesscontextManagerV1DevicePolicy
    , GoogleIdentityAccesscontextManagerV1DevicePolicy
    , googleIdentityAccesscontextManagerV1DevicePolicy
    , giamvdpOSConstraints
    , giamvdpRequireAdminApproval
    , giamvdpRequireCorpOwned
    , giamvdpRequireScreenlock
    , giamvdpAllowedEncryptionStatuses
    , giamvdpAllowedDeviceManagementLevels

    -- ** AssetsListContentType
    , AssetsListContentType (..)

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** GoogleIdentityAccesscontextManagerV1Condition
    , GoogleIdentityAccesscontextManagerV1Condition
    , googleIdentityAccesscontextManagerV1Condition
    , giamvcMembers
    , giamvcRegions
    , giamvcNegate
    , giamvcIPSubnetworks
    , giamvcDevicePolicy
    , giamvcRequiredAccessLevels

    -- ** GoogleCloudOrgpolicyV1RestoreDefault
    , GoogleCloudOrgpolicyV1RestoreDefault
    , googleCloudOrgpolicyV1RestoreDefault

    -- ** GoogleCloudOrgpolicyV1ListPolicyAllValues
    , GoogleCloudOrgpolicyV1ListPolicyAllValues (..)

    -- ** GoogleCloudOrgpolicyV1BooleanPolicy
    , GoogleCloudOrgpolicyV1BooleanPolicy
    , googleCloudOrgpolicyV1BooleanPolicy
    , gcovbpEnforced

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.CloudAsset.Types
import Network.Google.Resource.CloudAsset.Assets.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Asset API service.
type CloudAssetAPI = AssetsListResource

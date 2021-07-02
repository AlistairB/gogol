{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types
    (
    -- * Service Configuration
      cloudAssetService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * GoogleIdentityAccesscontextManagerV1BasicLevel
    , GoogleIdentityAccesscontextManagerV1BasicLevel
    , googleIdentityAccesscontextManagerV1BasicLevel
    , giamvblConditions
    , giamvblCombiningFunction

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , googleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , giamvspcResources
    , giamvspcVPCAccessibleServices
    , giamvspcRestrictedServices
    , giamvspcAccessLevels

    -- * GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction
    , GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction (..)

    -- * GoogleIdentityAccesscontextManagerV1AccessLevel
    , GoogleIdentityAccesscontextManagerV1AccessLevel
    , googleIdentityAccesscontextManagerV1AccessLevel
    , giamvalBasic
    , giamvalCustom
    , giamvalName
    , giamvalTitle
    , giamvalDescription

    -- * GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType
    , GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType (..)

    -- * GoogleIdentityAccesscontextManagerV1OSConstraintOSType
    , GoogleIdentityAccesscontextManagerV1OSConstraintOSType (..)

    -- * Asset
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

    -- * GoogleIdentityAccesscontextManagerV1ServicePerimeter
    , GoogleIdentityAccesscontextManagerV1ServicePerimeter
    , googleIdentityAccesscontextManagerV1ServicePerimeter
    , giamvspStatus
    , giamvspPerimeterType
    , giamvspName
    , giamvspSpec
    , giamvspTitle
    , giamvspUseExplicitDryRunSpec
    , giamvspDescription

    -- * GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem
    , GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem (..)

    -- * GoogleIdentityAccesscontextManagerV1OSConstraint
    , GoogleIdentityAccesscontextManagerV1OSConstraint
    , googleIdentityAccesscontextManagerV1OSConstraint
    , giamvocOSType
    , giamvocMinimumVersion
    , giamvocRequireVerifiedChromeOS

    -- * GoogleIdentityAccesscontextManagerV1AccessPolicy
    , GoogleIdentityAccesscontextManagerV1AccessPolicy
    , googleIdentityAccesscontextManagerV1AccessPolicy
    , giamvapParent
    , giamvapEtag
    , giamvapName
    , giamvapTitle

    -- * GoogleCloudOrgpolicyV1ListPolicy
    , GoogleCloudOrgpolicyV1ListPolicy
    , googleCloudOrgpolicyV1ListPolicy
    , gcovlpInheritFromParent
    , gcovlpAllValues
    , gcovlpDeniedValues
    , gcovlpAllowedValues
    , gcovlpSuggestedValue

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Resource
    , Resource
    , resource
    , rParent
    , rData
    , rVersion
    , rDiscoveryName
    , rDiscoveryDocumentURI
    , rResourceURL

    -- * ListAssetsResponse
    , ListAssetsResponse
    , listAssetsResponse
    , larReadTime
    , larNextPageToken
    , larAssets

    -- * Xgafv
    , Xgafv (..)

    -- * ResourceData
    , ResourceData
    , resourceData
    , rdAddtional

    -- * GoogleIdentityAccesscontextManagerV1CustomLevel
    , GoogleIdentityAccesscontextManagerV1CustomLevel
    , googleIdentityAccesscontextManagerV1CustomLevel
    , giamvclExpr

    -- * GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
    , GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
    , googleIdentityAccesscontextManagerV1VPCAccessibleServices
    , giamvvasAllowedServices
    , giamvvasEnableRestriction

    -- * GoogleCloudOrgpolicyV1Policy
    , GoogleCloudOrgpolicyV1Policy
    , googleCloudOrgpolicyV1Policy
    , gcovpBooleanPolicy
    , gcovpEtag
    , gcovpRestoreDefault
    , gcovpUpdateTime
    , gcovpVersion
    , gcovpListPolicy
    , gcovpConstraint

    -- * GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem
    , GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem (..)

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * GoogleIdentityAccesscontextManagerV1DevicePolicy
    , GoogleIdentityAccesscontextManagerV1DevicePolicy
    , googleIdentityAccesscontextManagerV1DevicePolicy
    , giamvdpOSConstraints
    , giamvdpRequireAdminApproval
    , giamvdpRequireCorpOwned
    , giamvdpRequireScreenlock
    , giamvdpAllowedEncryptionStatuses
    , giamvdpAllowedDeviceManagementLevels

    -- * AssetsListContentType
    , AssetsListContentType (..)

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * GoogleIdentityAccesscontextManagerV1Condition
    , GoogleIdentityAccesscontextManagerV1Condition
    , googleIdentityAccesscontextManagerV1Condition
    , giamvcMembers
    , giamvcRegions
    , giamvcNegate
    , giamvcIPSubnetworks
    , giamvcDevicePolicy
    , giamvcRequiredAccessLevels

    -- * GoogleCloudOrgpolicyV1RestoreDefault
    , GoogleCloudOrgpolicyV1RestoreDefault
    , googleCloudOrgpolicyV1RestoreDefault

    -- * GoogleCloudOrgpolicyV1ListPolicyAllValues
    , GoogleCloudOrgpolicyV1ListPolicyAllValues (..)

    -- * GoogleCloudOrgpolicyV1BooleanPolicy
    , GoogleCloudOrgpolicyV1BooleanPolicy
    , googleCloudOrgpolicyV1BooleanPolicy
    , gcovbpEnforced

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.CloudAsset.Types.Product
import Network.Google.CloudAsset.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1p5beta1' of the Cloud Asset API. This contains the host and root path used as a starting point for constructing service requests.
cloudAssetService :: ServiceConfig
cloudAssetService
  = defaultService (ServiceId "cloudasset:v1p5beta1")
      "cloudasset.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

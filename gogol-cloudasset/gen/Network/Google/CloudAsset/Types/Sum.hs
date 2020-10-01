{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | How the \`conditions\` list should be combined to determine if a request
-- is granted this \`AccessLevel\`. If AND is used, each \`Condition\` in
-- \`conditions\` must be satisfied for the \`AccessLevel\` to be applied.
-- If OR is used, at least one \`Condition\` in \`conditions\` must be
-- satisfied for the \`AccessLevel\` to be applied. Default behavior is
-- AND.
data GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction
    = And
      -- ^ @AND@
      -- All \`Conditions\` must be true for the \`BasicLevel\` to be true.
    | OR
      -- ^ @OR@
      -- If at least one \`Condition\` is true, then the \`BasicLevel\` is true.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    parseQueryParam = \case
        "AND" -> Right And
        "OR" -> Right OR
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    toQueryParam = \case
        And -> "AND"
        OR -> "OR"

instance FromJSON GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction"

instance ToJSON GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction where
    toJSON = toJSONText

-- | Perimeter type indicator. A single project is allowed to be a member of
-- single regular perimeter, but multiple service perimeter bridges. A
-- project cannot be a included in a perimeter bridge without being
-- included in regular perimeter. For perimeter bridges, the restricted
-- service list as well as access level lists must be empty.
data GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType
    = PerimeterTypeRegular
      -- ^ @PERIMETER_TYPE_REGULAR@
      -- Regular Perimeter.
    | PerimeterTypeBridge
      -- ^ @PERIMETER_TYPE_BRIDGE@
      -- Perimeter Bridge.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    parseQueryParam = \case
        "PERIMETER_TYPE_REGULAR" -> Right PerimeterTypeRegular
        "PERIMETER_TYPE_BRIDGE" -> Right PerimeterTypeBridge
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    toQueryParam = \case
        PerimeterTypeRegular -> "PERIMETER_TYPE_REGULAR"
        PerimeterTypeBridge -> "PERIMETER_TYPE_BRIDGE"

instance FromJSON GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType"

instance ToJSON GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType where
    toJSON = toJSONText

-- | Required. The allowed OS type.
data GoogleIdentityAccesscontextManagerV1OSConstraintOSType
    = OSUnspecified
      -- ^ @OS_UNSPECIFIED@
      -- The operating system of the device is not specified or not known.
    | DesktopMAC
      -- ^ @DESKTOP_MAC@
      -- A desktop Mac operating system.
    | DesktopWindows
      -- ^ @DESKTOP_WINDOWS@
      -- A desktop Windows operating system.
    | DesktopLinux
      -- ^ @DESKTOP_LINUX@
      -- A desktop Linux operating system.
    | DesktopChromeOS
      -- ^ @DESKTOP_CHROME_OS@
      -- A desktop ChromeOS operating system.
    | Android
      -- ^ @ANDROID@
      -- An Android operating system.
    | Ios
      -- ^ @IOS@
      -- An iOS operating system.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1OSConstraintOSType

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    parseQueryParam = \case
        "OS_UNSPECIFIED" -> Right OSUnspecified
        "DESKTOP_MAC" -> Right DesktopMAC
        "DESKTOP_WINDOWS" -> Right DesktopWindows
        "DESKTOP_LINUX" -> Right DesktopLinux
        "DESKTOP_CHROME_OS" -> Right DesktopChromeOS
        "ANDROID" -> Right Android
        "IOS" -> Right Ios
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1OSConstraintOSType from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    toQueryParam = \case
        OSUnspecified -> "OS_UNSPECIFIED"
        DesktopMAC -> "DESKTOP_MAC"
        DesktopWindows -> "DESKTOP_WINDOWS"
        DesktopLinux -> "DESKTOP_LINUX"
        DesktopChromeOS -> "DESKTOP_CHROME_OS"
        Android -> "ANDROID"
        Ios -> "IOS"

instance FromJSON GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1OSConstraintOSType"

instance ToJSON GoogleIdentityAccesscontextManagerV1OSConstraintOSType where
    toJSON = toJSONText

data GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem
    = ManagementUnspecified
      -- ^ @MANAGEMENT_UNSPECIFIED@
      -- The device\'s management level is not specified or not known.
    | None
      -- ^ @NONE@
      -- The device is not managed.
    | Basic
      -- ^ @BASIC@
      -- Basic management is enabled, which is generally limited to monitoring
      -- and wiping the corporate account.
    | Complete
      -- ^ @COMPLETE@
      -- Complete device management. This includes more thorough monitoring and
      -- the ability to directly manage the device (such as remote wiping). This
      -- can be enabled through the Android Enterprise Platform.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
    parseQueryParam = \case
        "MANAGEMENT_UNSPECIFIED" -> Right ManagementUnspecified
        "NONE" -> Right None
        "BASIC" -> Right Basic
        "COMPLETE" -> Right Complete
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
    toQueryParam = \case
        ManagementUnspecified -> "MANAGEMENT_UNSPECIFIED"
        None -> "NONE"
        Basic -> "BASIC"
        Complete -> "COMPLETE"

instance FromJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem"

instance ToJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem where
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

data GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem
    = EncryptionUnspecified
      -- ^ @ENCRYPTION_UNSPECIFIED@
      -- The encryption status of the device is not specified or not known.
    | EncryptionUnsupported
      -- ^ @ENCRYPTION_UNSUPPORTED@
      -- The device does not support encryption.
    | Unencrypted
      -- ^ @UNENCRYPTED@
      -- The device supports encryption, but is currently unencrypted.
    | Encrypted
      -- ^ @ENCRYPTED@
      -- The device is encrypted.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem

instance FromHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    parseQueryParam = \case
        "ENCRYPTION_UNSPECIFIED" -> Right EncryptionUnspecified
        "ENCRYPTION_UNSUPPORTED" -> Right EncryptionUnsupported
        "UNENCRYPTED" -> Right Unencrypted
        "ENCRYPTED" -> Right Encrypted
        x -> Left ("Unable to parse GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem from: " <> x)

instance ToHttpApiData GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    toQueryParam = \case
        EncryptionUnspecified -> "ENCRYPTION_UNSPECIFIED"
        EncryptionUnsupported -> "ENCRYPTION_UNSUPPORTED"
        Unencrypted -> "UNENCRYPTED"
        Encrypted -> "ENCRYPTED"

instance FromJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    parseJSON = parseJSONText "GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem"

instance ToJSON GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem where
    toJSON = toJSONText

-- | Asset content type. If not specified, no content but the asset name will
-- be returned.
data AssetsListContentType
    = ALCTContentTypeUnspecified
      -- ^ @CONTENT_TYPE_UNSPECIFIED@
      -- Unspecified content type.
    | ALCTResource
      -- ^ @RESOURCE@
      -- Resource metadata.
    | ALCTIAMPolicy
      -- ^ @IAM_POLICY@
      -- The actual IAM policy set on a resource.
    | ALCTOrgPolicy
      -- ^ @ORG_POLICY@
      -- The Cloud Organization Policy set on an asset.
    | ALCTAccessPolicy
      -- ^ @ACCESS_POLICY@
      -- The Cloud Access context mananger Policy set on an asset.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AssetsListContentType

instance FromHttpApiData AssetsListContentType where
    parseQueryParam = \case
        "CONTENT_TYPE_UNSPECIFIED" -> Right ALCTContentTypeUnspecified
        "RESOURCE" -> Right ALCTResource
        "IAM_POLICY" -> Right ALCTIAMPolicy
        "ORG_POLICY" -> Right ALCTOrgPolicy
        "ACCESS_POLICY" -> Right ALCTAccessPolicy
        x -> Left ("Unable to parse AssetsListContentType from: " <> x)

instance ToHttpApiData AssetsListContentType where
    toQueryParam = \case
        ALCTContentTypeUnspecified -> "CONTENT_TYPE_UNSPECIFIED"
        ALCTResource -> "RESOURCE"
        ALCTIAMPolicy -> "IAM_POLICY"
        ALCTOrgPolicy -> "ORG_POLICY"
        ALCTAccessPolicy -> "ACCESS_POLICY"

instance FromJSON AssetsListContentType where
    parseJSON = parseJSONText "AssetsListContentType"

instance ToJSON AssetsListContentType where
    toJSON = toJSONText

-- | The policy all_values state.
data GoogleCloudOrgpolicyV1ListPolicyAllValues
    = AllValuesUnspecified
      -- ^ @ALL_VALUES_UNSPECIFIED@
      -- Indicates that allowed_values or denied_values must be set.
    | Allow
      -- ^ @ALLOW@
      -- A policy with this set allows all values.
    | Deny
      -- ^ @DENY@
      -- A policy with this set denies all values.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudOrgpolicyV1ListPolicyAllValues

instance FromHttpApiData GoogleCloudOrgpolicyV1ListPolicyAllValues where
    parseQueryParam = \case
        "ALL_VALUES_UNSPECIFIED" -> Right AllValuesUnspecified
        "ALLOW" -> Right Allow
        "DENY" -> Right Deny
        x -> Left ("Unable to parse GoogleCloudOrgpolicyV1ListPolicyAllValues from: " <> x)

instance ToHttpApiData GoogleCloudOrgpolicyV1ListPolicyAllValues where
    toQueryParam = \case
        AllValuesUnspecified -> "ALL_VALUES_UNSPECIFIED"
        Allow -> "ALLOW"
        Deny -> "DENY"

instance FromJSON GoogleCloudOrgpolicyV1ListPolicyAllValues where
    parseJSON = parseJSONText "GoogleCloudOrgpolicyV1ListPolicyAllValues"

instance ToJSON GoogleCloudOrgpolicyV1ListPolicyAllValues where
    toJSON = toJSONText

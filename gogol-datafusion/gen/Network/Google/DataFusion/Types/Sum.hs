{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DataFusion.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DataFusion.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The type of an accelator for a CDF instance.
data AcceleratorAcceleratorType
    = AcceleratorTypeUnspecified
      -- ^ @ACCELERATOR_TYPE_UNSPECIFIED@
      -- Default value, if unspecified.
    | Cdc
      -- ^ @CDC@
      -- Change Data Capture accelerator for CDF.
    | Healthcare
      -- ^ @HEALTHCARE@
      -- Cloud Healthcare accelerator for CDF. This accelerator is to enable
      -- Cloud Healthcare specific CDF plugins developed by Healthcare team.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AcceleratorAcceleratorType

instance FromHttpApiData AcceleratorAcceleratorType where
    parseQueryParam = \case
        "ACCELERATOR_TYPE_UNSPECIFIED" -> Right AcceleratorTypeUnspecified
        "CDC" -> Right Cdc
        "HEALTHCARE" -> Right Healthcare
        x -> Left ("Unable to parse AcceleratorAcceleratorType from: " <> x)

instance ToHttpApiData AcceleratorAcceleratorType where
    toQueryParam = \case
        AcceleratorTypeUnspecified -> "ACCELERATOR_TYPE_UNSPECIFIED"
        Cdc -> "CDC"
        Healthcare -> "HEALTHCARE"

instance FromJSON AcceleratorAcceleratorType where
    parseJSON = parseJSONText "AcceleratorAcceleratorType"

instance ToJSON AcceleratorAcceleratorType where
    toJSON = toJSONText

-- | Required. Instance type.
data InstanceType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- No type specified. The instance creation will fail.
    | Basic
      -- ^ @BASIC@
      -- Basic Data Fusion instance. In Basic type, the user will be able to
      -- create data pipelines using point and click UI. However, there are
      -- certain limitations, such as fewer number of concurrent pipelines, no
      -- support for streaming pipelines, etc.
    | Enterprise
      -- ^ @ENTERPRISE@
      -- Enterprise Data Fusion instance. In Enterprise type, the user will have
      -- all features available, such as support for streaming pipelines, higher
      -- number of concurrent pipelines, etc.
    | Developer
      -- ^ @DEVELOPER@
      -- Developer Data Fusion instance. In Developer type, the user will have
      -- all features available but with restrictive capabilities. This is to
      -- help enterprises design and develop their data ingestion and integration
      -- pipelines at low cost.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceType

instance FromHttpApiData InstanceType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "BASIC" -> Right Basic
        "ENTERPRISE" -> Right Enterprise
        "DEVELOPER" -> Right Developer
        x -> Left ("Unable to parse InstanceType from: " <> x)

instance ToHttpApiData InstanceType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        Basic -> "BASIC"
        Enterprise -> "ENTERPRISE"
        Developer -> "DEVELOPER"

instance FromJSON InstanceType where
    parseJSON = parseJSONText "InstanceType"

instance ToJSON InstanceType where
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

-- | Output only. The current state of this Data Fusion instance.
data InstanceState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Instance does not have a state yet
    | Creating
      -- ^ @CREATING@
      -- Instance is being created
    | Active
      -- ^ @ACTIVE@
      -- Instance is active and ready for requests
    | Running
      -- ^ @RUNNING@
      -- RUNNING is an alias of ACTIVE for backward compatibility
    | Failed
      -- ^ @FAILED@
      -- Instance creation failed
    | Deleting
      -- ^ @DELETING@
      -- Instance is being deleted
    | Upgrading
      -- ^ @UPGRADING@
      -- Instance is being upgraded
    | Restarting
      -- ^ @RESTARTING@
      -- Instance is being restarted
    | Updating
      -- ^ @UPDATING@
      -- Instance is being updated on customer request
    | AutoUpdating
      -- ^ @AUTO_UPDATING@
      -- Instance is being auto-updated
    | AutoUpgrading
      -- ^ @AUTO_UPGRADING@
      -- Instance is being auto-upgraded
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceState

instance FromHttpApiData InstanceState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "CREATING" -> Right Creating
        "ACTIVE" -> Right Active
        "RUNNING" -> Right Running
        "FAILED" -> Right Failed
        "DELETING" -> Right Deleting
        "UPGRADING" -> Right Upgrading
        "RESTARTING" -> Right Restarting
        "UPDATING" -> Right Updating
        "AUTO_UPDATING" -> Right AutoUpdating
        "AUTO_UPGRADING" -> Right AutoUpgrading
        x -> Left ("Unable to parse InstanceState from: " <> x)

instance ToHttpApiData InstanceState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Creating -> "CREATING"
        Active -> "ACTIVE"
        Running -> "RUNNING"
        Failed -> "FAILED"
        Deleting -> "DELETING"
        Upgrading -> "UPGRADING"
        Restarting -> "RESTARTING"
        Updating -> "UPDATING"
        AutoUpdating -> "AUTO_UPDATING"
        AutoUpgrading -> "AUTO_UPGRADING"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText

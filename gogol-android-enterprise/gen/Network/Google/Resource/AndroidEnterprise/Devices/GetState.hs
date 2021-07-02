{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Devices.GetState
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves whether a device\'s access to Google services is enabled or
-- disabled. The device state takes effect only if enforcing EMM policies
-- on Android devices is enabled in the Google Admin Console. Otherwise,
-- the device state is ignored and all devices are allowed access to Google
-- services. This is only supported for Google-managed users.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.devices.getState@.
module Network.Google.Resource.AndroidEnterprise.Devices.GetState
    (
    -- * REST Resource
      DevicesGetStateResource

    -- * Creating a Request
    , devicesGetState
    , DevicesGetState

    -- * Request Lenses
    , dgsEnterpriseId
    , dgsUserId
    , dgsDeviceId
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.devices.getState@ method which the
-- 'DevicesGetState' request conforms to.
type DevicesGetStateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "devices" :>
                   Capture "deviceId" Text :>
                     "state" :>
                       QueryParam "alt" AltJSON :> Get '[JSON] DeviceState

-- | Retrieves whether a device\'s access to Google services is enabled or
-- disabled. The device state takes effect only if enforcing EMM policies
-- on Android devices is enabled in the Google Admin Console. Otherwise,
-- the device state is ignored and all devices are allowed access to Google
-- services. This is only supported for Google-managed users.
--
-- /See:/ 'devicesGetState' smart constructor.
data DevicesGetState =
  DevicesGetState'
    { _dgsEnterpriseId :: !Text
    , _dgsUserId :: !Text
    , _dgsDeviceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesGetState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgsEnterpriseId'
--
-- * 'dgsUserId'
--
-- * 'dgsDeviceId'
devicesGetState
    :: Text -- ^ 'dgsEnterpriseId'
    -> Text -- ^ 'dgsUserId'
    -> Text -- ^ 'dgsDeviceId'
    -> DevicesGetState
devicesGetState pDgsEnterpriseId_ pDgsUserId_ pDgsDeviceId_ =
  DevicesGetState'
    { _dgsEnterpriseId = pDgsEnterpriseId_
    , _dgsUserId = pDgsUserId_
    , _dgsDeviceId = pDgsDeviceId_
    }


-- | The ID of the enterprise.
dgsEnterpriseId :: Lens' DevicesGetState Text
dgsEnterpriseId
  = lens _dgsEnterpriseId
      (\ s a -> s{_dgsEnterpriseId = a})

-- | The ID of the user.
dgsUserId :: Lens' DevicesGetState Text
dgsUserId
  = lens _dgsUserId (\ s a -> s{_dgsUserId = a})

-- | The ID of the device.
dgsDeviceId :: Lens' DevicesGetState Text
dgsDeviceId
  = lens _dgsDeviceId (\ s a -> s{_dgsDeviceId = a})

instance GoogleRequest DevicesGetState where
        type Rs DevicesGetState = DeviceState
        type Scopes DevicesGetState =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient DevicesGetState'{..}
          = go _dgsEnterpriseId _dgsUserId _dgsDeviceId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesGetStateResource)
                      mempty

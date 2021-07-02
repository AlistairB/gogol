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
-- Module      : Network.Google.Resource.CloudAsset.Assets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists assets with time and resource types and returns paged results in
-- response.
--
-- /See:/ <https://cloud.google.com/asset-inventory/docs/quickstart Cloud Asset API Reference> for @cloudasset.assets.list@.
module Network.Google.Resource.CloudAsset.Assets.List
    (
    -- * REST Resource
      AssetsListResource

    -- * Creating a Request
    , assetsList
    , AssetsList

    -- * Request Lenses
    , alParent
    , alXgafv
    , alReadTime
    , alUploadProtocol
    , alAccessToken
    , alAssetTypes
    , alUploadType
    , alPageToken
    , alPageSize
    , alContentType
    , alCallback
    ) where

import Network.Google.CloudAsset.Types
import Network.Google.Prelude

-- | A resource alias for @cloudasset.assets.list@ method which the
-- 'AssetsList' request conforms to.
type AssetsListResource =
     "v1p5beta1" :>
       Capture "parent" Text :>
         "assets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "readTime" DateTime' :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParams "assetTypes" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "contentType" AssetsListContentType :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListAssetsResponse

-- | Lists assets with time and resource types and returns paged results in
-- response.
--
-- /See:/ 'assetsList' smart constructor.
data AssetsList =
  AssetsList'
    { _alParent :: !Text
    , _alXgafv :: !(Maybe Xgafv)
    , _alReadTime :: !(Maybe DateTime')
    , _alUploadProtocol :: !(Maybe Text)
    , _alAccessToken :: !(Maybe Text)
    , _alAssetTypes :: !(Maybe [Text])
    , _alUploadType :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alPageSize :: !(Maybe (Textual Int32))
    , _alContentType :: !(Maybe AssetsListContentType)
    , _alCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AssetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alParent'
--
-- * 'alXgafv'
--
-- * 'alReadTime'
--
-- * 'alUploadProtocol'
--
-- * 'alAccessToken'
--
-- * 'alAssetTypes'
--
-- * 'alUploadType'
--
-- * 'alPageToken'
--
-- * 'alPageSize'
--
-- * 'alContentType'
--
-- * 'alCallback'
assetsList
    :: Text -- ^ 'alParent'
    -> AssetsList
assetsList pAlParent_ =
  AssetsList'
    { _alParent = pAlParent_
    , _alXgafv = Nothing
    , _alReadTime = Nothing
    , _alUploadProtocol = Nothing
    , _alAccessToken = Nothing
    , _alAssetTypes = Nothing
    , _alUploadType = Nothing
    , _alPageToken = Nothing
    , _alPageSize = Nothing
    , _alContentType = Nothing
    , _alCallback = Nothing
    }


-- | Required. Name of the organization or project the assets belong to.
-- Format: \"organizations\/[organization-number]\" (such as
-- \"organizations\/123\"), \"projects\/[project-number]\" (such as
-- \"projects\/my-project-id\"), or \"projects\/[project-id]\" (such as
-- \"projects\/12345\").
alParent :: Lens' AssetsList Text
alParent = lens _alParent (\ s a -> s{_alParent = a})

-- | V1 error format.
alXgafv :: Lens' AssetsList (Maybe Xgafv)
alXgafv = lens _alXgafv (\ s a -> s{_alXgafv = a})

-- | Timestamp to take an asset snapshot. This can only be set to a timestamp
-- between the current time and the current time minus 35 days (inclusive).
-- If not specified, the current time will be used. Due to delays in
-- resource data collection and indexing, there is a volatile window during
-- which running the same query may get different results.
alReadTime :: Lens' AssetsList (Maybe UTCTime)
alReadTime
  = lens _alReadTime (\ s a -> s{_alReadTime = a}) .
      mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alUploadProtocol :: Lens' AssetsList (Maybe Text)
alUploadProtocol
  = lens _alUploadProtocol
      (\ s a -> s{_alUploadProtocol = a})

-- | OAuth access token.
alAccessToken :: Lens' AssetsList (Maybe Text)
alAccessToken
  = lens _alAccessToken
      (\ s a -> s{_alAccessToken = a})

-- | A list of asset types to take a snapshot for. For example:
-- \"compute.googleapis.com\/Disk\". Regular expression is also supported.
-- For example: * \"compute.googleapis.com.*\" snapshots resources whose
-- asset type starts with \"compute.googleapis.com\". * \".*Instance\"
-- snapshots resources whose asset type ends with \"Instance\". *
-- \".*Instance.*\" snapshots resources whose asset type contains
-- \"Instance\". See [RE2](https:\/\/github.com\/google\/re2\/wiki\/Syntax)
-- for all supported regular expression syntax. If the regular expression
-- does not match any supported asset type, an INVALID_ARGUMENT error will
-- be returned. If specified, only matching assets will be returned,
-- otherwise, it will snapshot all asset types. See [Introduction to Cloud
-- Asset
-- Inventory](https:\/\/cloud.google.com\/asset-inventory\/docs\/overview)
-- for all supported asset types.
alAssetTypes :: Lens' AssetsList [Text]
alAssetTypes
  = lens _alAssetTypes (\ s a -> s{_alAssetTypes = a})
      . _Default
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alUploadType :: Lens' AssetsList (Maybe Text)
alUploadType
  = lens _alUploadType (\ s a -> s{_alUploadType = a})

-- | The \`next_page_token\` returned from the previous
-- \`ListAssetsResponse\`, or unspecified for the first
-- \`ListAssetsRequest\`. It is a continuation of a prior \`ListAssets\`
-- call, and the API should return the next page of assets.
alPageToken :: Lens' AssetsList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The maximum number of assets to be returned in a single response.
-- Default is 100, minimum is 1, and maximum is 1000.
alPageSize :: Lens' AssetsList (Maybe Int32)
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a}) .
      mapping _Coerce

-- | Asset content type. If not specified, no content but the asset name will
-- be returned.
alContentType :: Lens' AssetsList (Maybe AssetsListContentType)
alContentType
  = lens _alContentType
      (\ s a -> s{_alContentType = a})

-- | JSONP
alCallback :: Lens' AssetsList (Maybe Text)
alCallback
  = lens _alCallback (\ s a -> s{_alCallback = a})

instance GoogleRequest AssetsList where
        type Rs AssetsList = ListAssetsResponse
        type Scopes AssetsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AssetsList'{..}
          = go _alParent _alXgafv _alReadTime _alUploadProtocol
              _alAccessToken
              (_alAssetTypes ^. _Default)
              _alUploadType
              _alPageToken
              _alPageSize
              _alContentType
              _alCallback
              (Just AltJSON)
              cloudAssetService
          where go
                  = buildClient (Proxy :: Proxy AssetsListResource)
                      mempty

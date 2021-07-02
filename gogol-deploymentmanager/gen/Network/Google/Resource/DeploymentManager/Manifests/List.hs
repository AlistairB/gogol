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
-- Module      : Network.Google.Resource.DeploymentManager.Manifests.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all manifests for a given deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.manifests.list@.
module Network.Google.Resource.DeploymentManager.Manifests.List
    (
    -- * REST Resource
      ManifestsListResource

    -- * Creating a Request
    , manifestsList
    , ManifestsList

    -- * Request Lenses
    , mlOrderBy
    , mlProject
    , mlFilter
    , mlPageToken
    , mlMaxResults
    , mlDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.manifests.list@ method which the
-- 'ManifestsList' request conforms to.
type ManifestsListResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   "manifests" :>
                     QueryParam "orderBy" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ManifestsListResponse

-- | Lists all manifests for a given deployment.
--
-- /See:/ 'manifestsList' smart constructor.
data ManifestsList =
  ManifestsList'
    { _mlOrderBy :: !(Maybe Text)
    , _mlProject :: !Text
    , _mlFilter :: !(Maybe Text)
    , _mlPageToken :: !(Maybe Text)
    , _mlMaxResults :: !(Textual Word32)
    , _mlDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManifestsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlOrderBy'
--
-- * 'mlProject'
--
-- * 'mlFilter'
--
-- * 'mlPageToken'
--
-- * 'mlMaxResults'
--
-- * 'mlDeployment'
manifestsList
    :: Text -- ^ 'mlProject'
    -> Text -- ^ 'mlDeployment'
    -> ManifestsList
manifestsList pMlProject_ pMlDeployment_ =
  ManifestsList'
    { _mlOrderBy = Nothing
    , _mlProject = pMlProject_
    , _mlFilter = Nothing
    , _mlPageToken = Nothing
    , _mlMaxResults = 500
    , _mlDeployment = pMlDeployment_
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
mlOrderBy :: Lens' ManifestsList (Maybe Text)
mlOrderBy
  = lens _mlOrderBy (\ s a -> s{_mlOrderBy = a})

-- | The project ID for this request.
mlProject :: Lens' ManifestsList Text
mlProject
  = lens _mlProject (\ s a -> s{_mlProject = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
mlFilter :: Lens' ManifestsList (Maybe Text)
mlFilter = lens _mlFilter (\ s a -> s{_mlFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
mlPageToken :: Lens' ManifestsList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
mlMaxResults :: Lens' ManifestsList Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})
      . _Coerce

-- | The name of the deployment for this request.
mlDeployment :: Lens' ManifestsList Text
mlDeployment
  = lens _mlDeployment (\ s a -> s{_mlDeployment = a})

instance GoogleRequest ManifestsList where
        type Rs ManifestsList = ManifestsListResponse
        type Scopes ManifestsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient ManifestsList'{..}
          = go _mlProject _mlDeployment _mlOrderBy _mlFilter
              _mlPageToken
              (Just _mlMaxResults)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy ManifestsListResource)
                      mempty

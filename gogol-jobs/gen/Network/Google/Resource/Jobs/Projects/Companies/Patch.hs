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
-- Module      : Network.Google.Resource.Jobs.Projects.Companies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates specified company. Company names can\'t be updated. To update a
-- company name, delete the company and all jobs associated with it, and
-- only then re-create them.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.companies.patch@.
module Network.Google.Resource.Jobs.Projects.Companies.Patch
    (
    -- * REST Resource
      ProjectsCompaniesPatchResource

    -- * Creating a Request
    , projectsCompaniesPatch
    , ProjectsCompaniesPatch

    -- * Request Lenses
    , pcpXgafv
    , pcpUploadProtocol
    , pcpAccessToken
    , pcpUploadType
    , pcpPayload
    , pcpName
    , pcpCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.companies.patch@ method which the
-- 'ProjectsCompaniesPatch' request conforms to.
type ProjectsCompaniesPatchResource =
     "v3p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UpdateCompanyRequest :>
                       Patch '[JSON] Company

-- | Updates specified company. Company names can\'t be updated. To update a
-- company name, delete the company and all jobs associated with it, and
-- only then re-create them.
--
-- /See:/ 'projectsCompaniesPatch' smart constructor.
data ProjectsCompaniesPatch =
  ProjectsCompaniesPatch'
    { _pcpXgafv :: !(Maybe Xgafv)
    , _pcpUploadProtocol :: !(Maybe Text)
    , _pcpAccessToken :: !(Maybe Text)
    , _pcpUploadType :: !(Maybe Text)
    , _pcpPayload :: !UpdateCompanyRequest
    , _pcpName :: !Text
    , _pcpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCompaniesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpXgafv'
--
-- * 'pcpUploadProtocol'
--
-- * 'pcpAccessToken'
--
-- * 'pcpUploadType'
--
-- * 'pcpPayload'
--
-- * 'pcpName'
--
-- * 'pcpCallback'
projectsCompaniesPatch
    :: UpdateCompanyRequest -- ^ 'pcpPayload'
    -> Text -- ^ 'pcpName'
    -> ProjectsCompaniesPatch
projectsCompaniesPatch pPcpPayload_ pPcpName_ =
  ProjectsCompaniesPatch'
    { _pcpXgafv = Nothing
    , _pcpUploadProtocol = Nothing
    , _pcpAccessToken = Nothing
    , _pcpUploadType = Nothing
    , _pcpPayload = pPcpPayload_
    , _pcpName = pPcpName_
    , _pcpCallback = Nothing
    }


-- | V1 error format.
pcpXgafv :: Lens' ProjectsCompaniesPatch (Maybe Xgafv)
pcpXgafv = lens _pcpXgafv (\ s a -> s{_pcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcpUploadProtocol :: Lens' ProjectsCompaniesPatch (Maybe Text)
pcpUploadProtocol
  = lens _pcpUploadProtocol
      (\ s a -> s{_pcpUploadProtocol = a})

-- | OAuth access token.
pcpAccessToken :: Lens' ProjectsCompaniesPatch (Maybe Text)
pcpAccessToken
  = lens _pcpAccessToken
      (\ s a -> s{_pcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcpUploadType :: Lens' ProjectsCompaniesPatch (Maybe Text)
pcpUploadType
  = lens _pcpUploadType
      (\ s a -> s{_pcpUploadType = a})

-- | Multipart request metadata.
pcpPayload :: Lens' ProjectsCompaniesPatch UpdateCompanyRequest
pcpPayload
  = lens _pcpPayload (\ s a -> s{_pcpPayload = a})

-- | Required during company update. The resource name for a company. This is
-- generated by the service when a company is created. The format is
-- \"projects\/{project_id}\/companies\/{company_id}\", for example,
-- \"projects\/api-test-project\/companies\/foo\".
pcpName :: Lens' ProjectsCompaniesPatch Text
pcpName = lens _pcpName (\ s a -> s{_pcpName = a})

-- | JSONP
pcpCallback :: Lens' ProjectsCompaniesPatch (Maybe Text)
pcpCallback
  = lens _pcpCallback (\ s a -> s{_pcpCallback = a})

instance GoogleRequest ProjectsCompaniesPatch where
        type Rs ProjectsCompaniesPatch = Company
        type Scopes ProjectsCompaniesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsCompaniesPatch'{..}
          = go _pcpName _pcpXgafv _pcpUploadProtocol
              _pcpAccessToken
              _pcpUploadType
              _pcpCallback
              (Just AltJSON)
              _pcpPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCompaniesPatchResource)
                      mempty

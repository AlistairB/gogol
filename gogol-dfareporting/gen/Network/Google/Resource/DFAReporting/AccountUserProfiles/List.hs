{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProfiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProfilesList@.
module Network.Google.Resource.DFAReporting.AccountUserProfiles.List
    (
    -- * REST Resource
      AccountUserProfilesListResource

    -- * Creating a Request
    , accountUserProfilesList'
    , AccountUserProfilesList'

    -- * Request Lenses
    , auplQuotaUser
    , auplPrettyPrint
    , auplUserRoleId
    , auplUserIP
    , auplSearchString
    , auplIds
    , auplProfileId
    , auplSortOrder
    , auplActive
    , auplKey
    , auplPageToken
    , auplSortField
    , auplSubAccountId
    , auplOAuthToken
    , auplMaxResults
    , auplFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProfilesList@ which the
-- 'AccountUserProfilesList'' request conforms to.
type AccountUserProfilesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "userRoleId" Int64 :>
             QueryParam "searchString" Text :>
               QueryParams "ids" Int64 :>
                 QueryParam "sortOrder"
                   DfareportingAccountUserProfilesListSortOrder
                   :>
                   QueryParam "active" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField"
                         DfareportingAccountUserProfilesListSortField
                         :>
                         QueryParam "subaccountId" Int64 :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON]
                                             AccountUserProfilesListResponse

-- | Retrieves a list of account user profiles, possibly filtered.
--
-- /See:/ 'accountUserProfilesList'' smart constructor.
data AccountUserProfilesList' = AccountUserProfilesList'
    { _auplQuotaUser    :: !(Maybe Text)
    , _auplPrettyPrint  :: !Bool
    , _auplUserRoleId   :: !(Maybe Int64)
    , _auplUserIP       :: !(Maybe Text)
    , _auplSearchString :: !(Maybe Text)
    , _auplIds          :: !(Maybe [Int64])
    , _auplProfileId    :: !Int64
    , _auplSortOrder    :: !(Maybe DfareportingAccountUserProfilesListSortOrder)
    , _auplActive       :: !(Maybe Bool)
    , _auplKey          :: !(Maybe Key)
    , _auplPageToken    :: !(Maybe Text)
    , _auplSortField    :: !(Maybe DfareportingAccountUserProfilesListSortField)
    , _auplSubAccountId :: !(Maybe Int64)
    , _auplOAuthToken   :: !(Maybe OAuthToken)
    , _auplMaxResults   :: !(Maybe Int32)
    , _auplFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auplQuotaUser'
--
-- * 'auplPrettyPrint'
--
-- * 'auplUserRoleId'
--
-- * 'auplUserIP'
--
-- * 'auplSearchString'
--
-- * 'auplIds'
--
-- * 'auplProfileId'
--
-- * 'auplSortOrder'
--
-- * 'auplActive'
--
-- * 'auplKey'
--
-- * 'auplPageToken'
--
-- * 'auplSortField'
--
-- * 'auplSubAccountId'
--
-- * 'auplOAuthToken'
--
-- * 'auplMaxResults'
--
-- * 'auplFields'
accountUserProfilesList'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProfilesList'
accountUserProfilesList' pAuplProfileId_ =
    AccountUserProfilesList'
    { _auplQuotaUser = Nothing
    , _auplPrettyPrint = True
    , _auplUserRoleId = Nothing
    , _auplUserIP = Nothing
    , _auplSearchString = Nothing
    , _auplIds = Nothing
    , _auplProfileId = pAuplProfileId_
    , _auplSortOrder = Nothing
    , _auplActive = Nothing
    , _auplKey = Nothing
    , _auplPageToken = Nothing
    , _auplSortField = Nothing
    , _auplSubAccountId = Nothing
    , _auplOAuthToken = Nothing
    , _auplMaxResults = Nothing
    , _auplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auplQuotaUser :: Lens' AccountUserProfilesList' (Maybe Text)
auplQuotaUser
  = lens _auplQuotaUser
      (\ s a -> s{_auplQuotaUser = a})

-- | Returns response with indentations and line breaks.
auplPrettyPrint :: Lens' AccountUserProfilesList' Bool
auplPrettyPrint
  = lens _auplPrettyPrint
      (\ s a -> s{_auplPrettyPrint = a})

-- | Select only user profiles with the specified user role ID.
auplUserRoleId :: Lens' AccountUserProfilesList' (Maybe Int64)
auplUserRoleId
  = lens _auplUserRoleId
      (\ s a -> s{_auplUserRoleId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auplUserIP :: Lens' AccountUserProfilesList' (Maybe Text)
auplUserIP
  = lens _auplUserIP (\ s a -> s{_auplUserIP = a})

-- | Allows searching for objects by name, ID or email. Wildcards (*) are
-- allowed. For example, \"user profile*2015\" will return objects with
-- names like \"user profile June 2015\", \"user profile April 2015\", or
-- simply \"user profile 2015\". Most of the searches also add wildcards
-- implicitly at the start and the end of the search string. For example, a
-- search string of \"user profile\" will match objects with name \"my user
-- profile\", \"user profile 2015\", or simply \"user profile\".
auplSearchString :: Lens' AccountUserProfilesList' (Maybe Text)
auplSearchString
  = lens _auplSearchString
      (\ s a -> s{_auplSearchString = a})

-- | Select only user profiles with these IDs.
auplIds :: Lens' AccountUserProfilesList' [Int64]
auplIds
  = lens _auplIds (\ s a -> s{_auplIds = a}) . _Default
      . _Coerce

-- | User profile ID associated with this request.
auplProfileId :: Lens' AccountUserProfilesList' Int64
auplProfileId
  = lens _auplProfileId
      (\ s a -> s{_auplProfileId = a})

-- | Order of sorted results, default is ASCENDING.
auplSortOrder :: Lens' AccountUserProfilesList' (Maybe DfareportingAccountUserProfilesListSortOrder)
auplSortOrder
  = lens _auplSortOrder
      (\ s a -> s{_auplSortOrder = a})

-- | Select only active user profiles.
auplActive :: Lens' AccountUserProfilesList' (Maybe Bool)
auplActive
  = lens _auplActive (\ s a -> s{_auplActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auplKey :: Lens' AccountUserProfilesList' (Maybe Key)
auplKey = lens _auplKey (\ s a -> s{_auplKey = a})

-- | Value of the nextPageToken from the previous result page.
auplPageToken :: Lens' AccountUserProfilesList' (Maybe Text)
auplPageToken
  = lens _auplPageToken
      (\ s a -> s{_auplPageToken = a})

-- | Field by which to sort the list.
auplSortField :: Lens' AccountUserProfilesList' (Maybe DfareportingAccountUserProfilesListSortField)
auplSortField
  = lens _auplSortField
      (\ s a -> s{_auplSortField = a})

-- | Select only user profiles with the specified subaccount ID.
auplSubAccountId :: Lens' AccountUserProfilesList' (Maybe Int64)
auplSubAccountId
  = lens _auplSubAccountId
      (\ s a -> s{_auplSubAccountId = a})

-- | OAuth 2.0 token for the current user.
auplOAuthToken :: Lens' AccountUserProfilesList' (Maybe OAuthToken)
auplOAuthToken
  = lens _auplOAuthToken
      (\ s a -> s{_auplOAuthToken = a})

-- | Maximum number of results to return.
auplMaxResults :: Lens' AccountUserProfilesList' (Maybe Int32)
auplMaxResults
  = lens _auplMaxResults
      (\ s a -> s{_auplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
auplFields :: Lens' AccountUserProfilesList' (Maybe Text)
auplFields
  = lens _auplFields (\ s a -> s{_auplFields = a})

instance GoogleAuth AccountUserProfilesList' where
        authKey = auplKey . _Just
        authToken = auplOAuthToken . _Just

instance GoogleRequest AccountUserProfilesList' where
        type Rs AccountUserProfilesList' =
             AccountUserProfilesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesList'{..}
          = go _auplProfileId _auplUserRoleId _auplSearchString
              (_auplIds ^. _Default)
              _auplSortOrder
              _auplActive
              _auplPageToken
              _auplSortField
              _auplSubAccountId
              _auplMaxResults
              _auplQuotaUser
              (Just _auplPrettyPrint)
              _auplUserIP
              _auplFields
              _auplKey
              _auplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesListResource)
                      r
                      u
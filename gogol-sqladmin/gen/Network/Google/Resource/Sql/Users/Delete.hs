{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Sql.Users.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a user from a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SqlUsersDelete@.
module Network.Google.Resource.Sql.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete'
    , UsersDelete'

    -- * Request Lenses
    , udQuotaUser
    , udPrettyPrint
    , udProject
    , udUserIp
    , udKey
    , udName
    , udHost
    , udOauthToken
    , udFields
    , udAlt
    , udInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SqlUsersDelete@ which the
-- 'UsersDelete'' request conforms to.
type UsersDeleteResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "name" Text :>
                         QueryParam "host" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes a user from a Cloud SQL instance.
--
-- /See:/ 'usersDelete'' smart constructor.
data UsersDelete' = UsersDelete'
    { _udQuotaUser   :: !(Maybe Text)
    , _udPrettyPrint :: !Bool
    , _udProject     :: !Text
    , _udUserIp      :: !(Maybe Text)
    , _udKey         :: !(Maybe Text)
    , _udName        :: !Text
    , _udHost        :: !Text
    , _udOauthToken  :: !(Maybe Text)
    , _udFields      :: !(Maybe Text)
    , _udAlt         :: !Alt
    , _udInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udQuotaUser'
--
-- * 'udPrettyPrint'
--
-- * 'udProject'
--
-- * 'udUserIp'
--
-- * 'udKey'
--
-- * 'udName'
--
-- * 'udHost'
--
-- * 'udOauthToken'
--
-- * 'udFields'
--
-- * 'udAlt'
--
-- * 'udInstance'
usersDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'name'
    -> Text -- ^ 'host'
    -> Text -- ^ 'instance'
    -> UsersDelete'
usersDelete' pUdProject_ pUdName_ pUdHost_ pUdInstance_ =
    UsersDelete'
    { _udQuotaUser = Nothing
    , _udPrettyPrint = True
    , _udProject = pUdProject_
    , _udUserIp = Nothing
    , _udKey = Nothing
    , _udName = pUdName_
    , _udHost = pUdHost_
    , _udOauthToken = Nothing
    , _udFields = Nothing
    , _udAlt = JSON
    , _udInstance = pUdInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udQuotaUser :: Lens' UsersDelete' (Maybe Text)
udQuotaUser
  = lens _udQuotaUser (\ s a -> s{_udQuotaUser = a})

-- | Returns response with indentations and line breaks.
udPrettyPrint :: Lens' UsersDelete' Bool
udPrettyPrint
  = lens _udPrettyPrint
      (\ s a -> s{_udPrettyPrint = a})

-- | Project ID of the project that contains the instance.
udProject :: Lens' UsersDelete' Text
udProject
  = lens _udProject (\ s a -> s{_udProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udUserIp :: Lens' UsersDelete' (Maybe Text)
udUserIp = lens _udUserIp (\ s a -> s{_udUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udKey :: Lens' UsersDelete' (Maybe Text)
udKey = lens _udKey (\ s a -> s{_udKey = a})

-- | Name of the user in the instance.
udName :: Lens' UsersDelete' Text
udName = lens _udName (\ s a -> s{_udName = a})

-- | Host of the user in the instance.
udHost :: Lens' UsersDelete' Text
udHost = lens _udHost (\ s a -> s{_udHost = a})

-- | OAuth 2.0 token for the current user.
udOauthToken :: Lens' UsersDelete' (Maybe Text)
udOauthToken
  = lens _udOauthToken (\ s a -> s{_udOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
udFields :: Lens' UsersDelete' (Maybe Text)
udFields = lens _udFields (\ s a -> s{_udFields = a})

-- | Data format for the response.
udAlt :: Lens' UsersDelete' Alt
udAlt = lens _udAlt (\ s a -> s{_udAlt = a})

-- | Database instance ID. This does not include the project ID.
udInstance :: Lens' UsersDelete' Text
udInstance
  = lens _udInstance (\ s a -> s{_udInstance = a})

instance GoogleRequest UsersDelete' where
        type Rs UsersDelete' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u UsersDelete'{..}
          = go _udQuotaUser (Just _udPrettyPrint) _udProject
              _udUserIp
              _udKey
              (Just _udName)
              (Just _udHost)
              _udOauthToken
              _udFields
              (Just _udAlt)
              _udInstance
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersDeleteResource)
                      r
                      u

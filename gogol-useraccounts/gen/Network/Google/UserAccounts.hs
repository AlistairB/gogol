{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.UserAccounts
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | API for the Google Cloud User Accounts service.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference>
module Network.Google.UserAccounts
    (
    -- * API
      UserAccountsAPI
    , userAccountsAPI
    , userAccountsURL

    -- * Service Methods

    -- * REST Resources

    -- ** CloudUserAccountsGlobalAccountsOperationsDelete
    , module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Delete

    -- ** CloudUserAccountsGlobalAccountsOperationsGet
    , module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Get

    -- ** CloudUserAccountsGlobalAccountsOperationsList
    , module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.List

    -- ** CloudUserAccountsGroupsAddMember
    , module Network.Google.Resource.CloudUserAccounts.Groups.AddMember

    -- ** CloudUserAccountsGroupsDelete
    , module Network.Google.Resource.CloudUserAccounts.Groups.Delete

    -- ** CloudUserAccountsGroupsGet
    , module Network.Google.Resource.CloudUserAccounts.Groups.Get

    -- ** CloudUserAccountsGroupsInsert
    , module Network.Google.Resource.CloudUserAccounts.Groups.Insert

    -- ** CloudUserAccountsGroupsList
    , module Network.Google.Resource.CloudUserAccounts.Groups.List

    -- ** CloudUserAccountsGroupsRemoveMember
    , module Network.Google.Resource.CloudUserAccounts.Groups.RemoveMember

    -- ** CloudUserAccountsLinuxGetAuthorizedKeysView
    , module Network.Google.Resource.CloudUserAccounts.Linux.GetAuthorizedKeysView

    -- ** CloudUserAccountsLinuxGetLinuxAccountViews
    , module Network.Google.Resource.CloudUserAccounts.Linux.GetLinuxAccountViews

    -- ** CloudUserAccountsUsersAddPublicKey
    , module Network.Google.Resource.CloudUserAccounts.Users.AddPublicKey

    -- ** CloudUserAccountsUsersDelete
    , module Network.Google.Resource.CloudUserAccounts.Users.Delete

    -- ** CloudUserAccountsUsersGet
    , module Network.Google.Resource.CloudUserAccounts.Users.Get

    -- ** CloudUserAccountsUsersInsert
    , module Network.Google.Resource.CloudUserAccounts.Users.Insert

    -- ** CloudUserAccountsUsersList
    , module Network.Google.Resource.CloudUserAccounts.Users.List

    -- ** CloudUserAccountsUsersRemovePublicKey
    , module Network.Google.Resource.CloudUserAccounts.Users.RemovePublicKey

    -- * Types

    -- ** Status
    , Status (..)

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** Group
    , Group
    , group'
    , gKind
    , gMembers
    , gSelfLink
    , gName
    , gCreationTimestamp
    , gId
    , gDescription

    -- ** GroupList
    , GroupList
    , groupList
    , glNextPageToken
    , glKind
    , glItems
    , glSelfLink
    , glId

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- ** Error'
    , Error'
    , error'
    , eErrors

    -- ** UserList
    , UserList
    , userList
    , ulNextPageToken
    , ulKind
    , ulItems
    , ulSelfLink
    , ulId

    -- ** PublicKey
    , PublicKey
    , publicKey
    , pkFingerprint
    , pkKey
    , pkCreationTimestamp
    , pkExpirationTimestamp
    , pkDescription

    -- ** WarningsItemCode
    , WarningsItemCode (..)

    -- ** User
    , User
    , user
    , uGroups
    , uPublicKeys
    , uKind
    , uOwner
    , uSelfLink
    , uName
    , uCreationTimestamp
    , uId
    , uDescription

    -- ** LinuxAccountViews
    , LinuxAccountViews
    , linuxAccountViews
    , lavUserViews
    , lavKind
    , lavGroupViews

    -- ** LinuxGroupView
    , LinuxGroupView
    , linuxGroupView
    , lgvMembers
    , lgvGid
    , lgvGroupName

    -- ** GroupsAddMemberRequest
    , GroupsAddMemberRequest
    , groupsAddMemberRequest
    , gamrUsers

    -- ** WarningsItem
    , WarningsItem
    , warningsItem
    , wiData
    , wiCode
    , wiMessage

    -- ** LinuxGetLinuxAccountViewsResponse
    , LinuxGetLinuxAccountViewsResponse
    , linuxGetLinuxAccountViewsResponse
    , lglavrResource

    -- ** LinuxUserView
    , LinuxUserView
    , linuxUserView
    , luvGecos
    , luvUid
    , luvUsername
    , luvShell
    , luvGid
    , luvHomeDirectory

    -- ** DataItem
    , DataItem
    , dataItem
    , diValue
    , diKey

    -- ** LinuxGetAuthorizedKeysViewResponse
    , LinuxGetAuthorizedKeysViewResponse
    , linuxGetAuthorizedKeysViewResponse
    , lgakvrResource

    -- ** GroupsRemoveMemberRequest
    , GroupsRemoveMemberRequest
    , groupsRemoveMemberRequest
    , grmrUsers

    -- ** ErrorsItem
    , ErrorsItem
    , errorsItem
    , eiLocation
    , eiCode
    , eiMessage

    -- ** AuthorizedKeysView
    , AuthorizedKeysView
    , authorizedKeysView
    , akvSudoer
    , akvKeys
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Delete
import           Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.Get
import           Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.List
import           Network.Google.Resource.CloudUserAccounts.Groups.AddMember
import           Network.Google.Resource.CloudUserAccounts.Groups.Delete
import           Network.Google.Resource.CloudUserAccounts.Groups.Get
import           Network.Google.Resource.CloudUserAccounts.Groups.Insert
import           Network.Google.Resource.CloudUserAccounts.Groups.List
import           Network.Google.Resource.CloudUserAccounts.Groups.RemoveMember
import           Network.Google.Resource.CloudUserAccounts.Linux.GetAuthorizedKeysView
import           Network.Google.Resource.CloudUserAccounts.Linux.GetLinuxAccountViews
import           Network.Google.Resource.CloudUserAccounts.Users.AddPublicKey
import           Network.Google.Resource.CloudUserAccounts.Users.Delete
import           Network.Google.Resource.CloudUserAccounts.Users.Get
import           Network.Google.Resource.CloudUserAccounts.Users.Insert
import           Network.Google.Resource.CloudUserAccounts.Users.List
import           Network.Google.Resource.CloudUserAccounts.Users.RemovePublicKey
import           Network.Google.UserAccounts.Types

{- $resources
TODO
-}

type UserAccountsAPI =
     GroupsInsertResource :<|> GroupsListResource :<|>
       GroupsGetResource
       :<|> GroupsRemoveMemberResource
       :<|> GroupsDeleteResource
       :<|> GroupsAddMemberResource
       :<|> UsersAddPublicKeyResource
       :<|> UsersInsertResource
       :<|> UsersListResource
       :<|> UsersRemovePublicKeyResource
       :<|> UsersGetResource
       :<|> UsersDeleteResource
       :<|> GlobalAccountsOperationsListResource
       :<|> GlobalAccountsOperationsGetResource
       :<|> GlobalAccountsOperationsDeleteResource
       :<|> LinuxGetLinuxAccountViewsResource
       :<|> LinuxGetAuthorizedKeysViewResource

userAccountsAPI :: Proxy UserAccountsAPI
userAccountsAPI = Proxy
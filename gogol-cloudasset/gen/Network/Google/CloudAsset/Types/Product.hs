{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types.Product where

import           Network.Google.CloudAsset.Types.Sum
import           Network.Google.Prelude

-- | \`BasicLevel\` is an \`AccessLevel\` using a set of recommended
-- features.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1BasicLevel' smart constructor.
data GoogleIdentityAccesscontextManagerV1BasicLevel =
  GoogleIdentityAccesscontextManagerV1BasicLevel'
    { _giamvblConditions        :: !(Maybe [GoogleIdentityAccesscontextManagerV1Condition])
    , _giamvblCombiningFunction :: !(Maybe GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1BasicLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvblConditions'
--
-- * 'giamvblCombiningFunction'
googleIdentityAccesscontextManagerV1BasicLevel
    :: GoogleIdentityAccesscontextManagerV1BasicLevel
googleIdentityAccesscontextManagerV1BasicLevel =
  GoogleIdentityAccesscontextManagerV1BasicLevel'
    {_giamvblConditions = Nothing, _giamvblCombiningFunction = Nothing}


-- | Required. A list of requirements for the \`AccessLevel\` to be granted.
giamvblConditions :: Lens' GoogleIdentityAccesscontextManagerV1BasicLevel [GoogleIdentityAccesscontextManagerV1Condition]
giamvblConditions
  = lens _giamvblConditions
      (\ s a -> s{_giamvblConditions = a})
      . _Default
      . _Coerce

-- | How the \`conditions\` list should be combined to determine if a request
-- is granted this \`AccessLevel\`. If AND is used, each \`Condition\` in
-- \`conditions\` must be satisfied for the \`AccessLevel\` to be applied.
-- If OR is used, at least one \`Condition\` in \`conditions\` must be
-- satisfied for the \`AccessLevel\` to be applied. Default behavior is
-- AND.
giamvblCombiningFunction :: Lens' GoogleIdentityAccesscontextManagerV1BasicLevel (Maybe GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction)
giamvblCombiningFunction
  = lens _giamvblCombiningFunction
      (\ s a -> s{_giamvblCombiningFunction = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1BasicLevel
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1BasicLevel"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1BasicLevel' <$>
                   (o .:? "conditions" .!= mempty) <*>
                     (o .:? "combiningFunction"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1BasicLevel
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1BasicLevel'{..}
          = object
              (catMaybes
                 [("conditions" .=) <$> _giamvblConditions,
                  ("combiningFunction" .=) <$>
                    _giamvblCombiningFunction])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService         :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation    :: !(Maybe Text)
    , _eExpression  :: !(Maybe Text)
    , _eTitle       :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | \`ServicePerimeterConfig\` specifies a set of Google Cloud resources
-- that describe specific Service Perimeter configuration.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1ServicePerimeterConfig' smart constructor.
data GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig =
  GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'
    { _giamvspcResources             :: !(Maybe [Text])
    , _giamvspcVPCAccessibleServices :: !(Maybe GoogleIdentityAccesscontextManagerV1VPCAccessibleServices)
    , _giamvspcRestrictedServices    :: !(Maybe [Text])
    , _giamvspcAccessLevels          :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvspcResources'
--
-- * 'giamvspcVPCAccessibleServices'
--
-- * 'giamvspcRestrictedServices'
--
-- * 'giamvspcAccessLevels'
googleIdentityAccesscontextManagerV1ServicePerimeterConfig
    :: GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
googleIdentityAccesscontextManagerV1ServicePerimeterConfig =
  GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'
    { _giamvspcResources = Nothing
    , _giamvspcVPCAccessibleServices = Nothing
    , _giamvspcRestrictedServices = Nothing
    , _giamvspcAccessLevels = Nothing
    }


-- | A list of Google Cloud resources that are inside of the service
-- perimeter. Currently only projects are allowed. Format:
-- \`projects\/{project_number}\`
giamvspcResources :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [Text]
giamvspcResources
  = lens _giamvspcResources
      (\ s a -> s{_giamvspcResources = a})
      . _Default
      . _Coerce

-- | Configuration for APIs allowed within Perimeter.
giamvspcVPCAccessibleServices :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig (Maybe GoogleIdentityAccesscontextManagerV1VPCAccessibleServices)
giamvspcVPCAccessibleServices
  = lens _giamvspcVPCAccessibleServices
      (\ s a -> s{_giamvspcVPCAccessibleServices = a})

-- | Google Cloud services that are subject to the Service Perimeter
-- restrictions. For example, if \`storage.googleapis.com\` is specified,
-- access to the storage buckets inside the perimeter must meet the
-- perimeter\'s access restrictions.
giamvspcRestrictedServices :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [Text]
giamvspcRestrictedServices
  = lens _giamvspcRestrictedServices
      (\ s a -> s{_giamvspcRestrictedServices = a})
      . _Default
      . _Coerce

-- | A list of \`AccessLevel\` resource names that allow resources within the
-- \`ServicePerimeter\` to be accessed from the internet. \`AccessLevels\`
-- listed must be in the same policy as this \`ServicePerimeter\`.
-- Referencing a nonexistent \`AccessLevel\` is a syntax error. If no
-- \`AccessLevel\` names are listed, resources within the perimeter can
-- only be accessed via Google Cloud calls with request origins within the
-- perimeter. Example:
-- \`\"accessPolicies\/MY_POLICY\/accessLevels\/MY_LEVEL\"\`. For Service
-- Perimeter Bridge, must be empty.
giamvspcAccessLevels :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig [Text]
giamvspcAccessLevels
  = lens _giamvspcAccessLevels
      (\ s a -> s{_giamvspcAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'
                   <$>
                   (o .:? "resources" .!= mempty) <*>
                     (o .:? "vpcAccessibleServices")
                     <*> (o .:? "restrictedServices" .!= mempty)
                     <*> (o .:? "accessLevels" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig'{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _giamvspcResources,
                  ("vpcAccessibleServices" .=) <$>
                    _giamvspcVPCAccessibleServices,
                  ("restrictedServices" .=) <$>
                    _giamvspcRestrictedServices,
                  ("accessLevels" .=) <$> _giamvspcAccessLevels])

-- | An \`AccessLevel\` is a label that can be applied to requests to Google
-- Cloud services, along with a list of requirements necessary for the
-- label to be applied.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1AccessLevel' smart constructor.
data GoogleIdentityAccesscontextManagerV1AccessLevel =
  GoogleIdentityAccesscontextManagerV1AccessLevel'
    { _giamvalBasic       :: !(Maybe GoogleIdentityAccesscontextManagerV1BasicLevel)
    , _giamvalCustom      :: !(Maybe GoogleIdentityAccesscontextManagerV1CustomLevel)
    , _giamvalName        :: !(Maybe Text)
    , _giamvalTitle       :: !(Maybe Text)
    , _giamvalDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1AccessLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvalBasic'
--
-- * 'giamvalCustom'
--
-- * 'giamvalName'
--
-- * 'giamvalTitle'
--
-- * 'giamvalDescription'
googleIdentityAccesscontextManagerV1AccessLevel
    :: GoogleIdentityAccesscontextManagerV1AccessLevel
googleIdentityAccesscontextManagerV1AccessLevel =
  GoogleIdentityAccesscontextManagerV1AccessLevel'
    { _giamvalBasic = Nothing
    , _giamvalCustom = Nothing
    , _giamvalName = Nothing
    , _giamvalTitle = Nothing
    , _giamvalDescription = Nothing
    }


-- | A \`BasicLevel\` composed of \`Conditions\`.
giamvalBasic :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe GoogleIdentityAccesscontextManagerV1BasicLevel)
giamvalBasic
  = lens _giamvalBasic (\ s a -> s{_giamvalBasic = a})

-- | A \`CustomLevel\` written in the Common Expression Language.
giamvalCustom :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe GoogleIdentityAccesscontextManagerV1CustomLevel)
giamvalCustom
  = lens _giamvalCustom
      (\ s a -> s{_giamvalCustom = a})

-- | Required. Resource name for the Access Level. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/accessLevels\/{short_name}\`. The maximum
-- length of the \`short_name\` component is 50 characters.
giamvalName :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe Text)
giamvalName
  = lens _giamvalName (\ s a -> s{_giamvalName = a})

-- | Human readable title. Must be unique within the Policy.
giamvalTitle :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe Text)
giamvalTitle
  = lens _giamvalTitle (\ s a -> s{_giamvalTitle = a})

-- | Description of the \`AccessLevel\` and its use. Does not affect
-- behavior.
giamvalDescription :: Lens' GoogleIdentityAccesscontextManagerV1AccessLevel (Maybe Text)
giamvalDescription
  = lens _giamvalDescription
      (\ s a -> s{_giamvalDescription = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1AccessLevel
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1AccessLevel"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1AccessLevel' <$>
                   (o .:? "basic") <*> (o .:? "custom") <*>
                     (o .:? "name")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1AccessLevel
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1AccessLevel'{..}
          = object
              (catMaybes
                 [("basic" .=) <$> _giamvalBasic,
                  ("custom" .=) <$> _giamvalCustom,
                  ("name" .=) <$> _giamvalName,
                  ("title" .=) <$> _giamvalTitle,
                  ("description" .=) <$> _giamvalDescription])

-- | An asset in Google Cloud. An asset can be any resource in the Google
-- Cloud [resource
-- hierarchy](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-platform-resource-hierarchy),
-- a resource outside the Google Cloud resource hierarchy (such as Google
-- Kubernetes Engine clusters and objects), or a policy (e.g. Cloud IAM
-- policy). See [Supported asset
-- types](https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types)
-- for more information.
--
-- /See:/ 'asset' smart constructor.
data Asset =
  Asset'
    { _aAccessLevel      :: !(Maybe GoogleIdentityAccesscontextManagerV1AccessLevel)
    , _aServicePerimeter :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeter)
    , _aAccessPolicy     :: !(Maybe GoogleIdentityAccesscontextManagerV1AccessPolicy)
    , _aName             :: !(Maybe Text)
    , _aResource         :: !(Maybe Resource)
    , _aOrgPolicy        :: !(Maybe [GoogleCloudOrgpolicyV1Policy])
    , _aIAMPolicy        :: !(Maybe Policy)
    , _aAssetType        :: !(Maybe Text)
    , _aAncestors        :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Asset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAccessLevel'
--
-- * 'aServicePerimeter'
--
-- * 'aAccessPolicy'
--
-- * 'aName'
--
-- * 'aResource'
--
-- * 'aOrgPolicy'
--
-- * 'aIAMPolicy'
--
-- * 'aAssetType'
--
-- * 'aAncestors'
asset
    :: Asset
asset =
  Asset'
    { _aAccessLevel = Nothing
    , _aServicePerimeter = Nothing
    , _aAccessPolicy = Nothing
    , _aName = Nothing
    , _aResource = Nothing
    , _aOrgPolicy = Nothing
    , _aIAMPolicy = Nothing
    , _aAssetType = Nothing
    , _aAncestors = Nothing
    }


-- | Please also refer to the [access level user
-- guide](https:\/\/cloud.google.com\/access-context-manager\/docs\/overview#access-levels).
aAccessLevel :: Lens' Asset (Maybe GoogleIdentityAccesscontextManagerV1AccessLevel)
aAccessLevel
  = lens _aAccessLevel (\ s a -> s{_aAccessLevel = a})

-- | Please also refer to the [service perimeter user
-- guide](https:\/\/cloud.google.com\/vpc-service-controls\/docs\/overview).
aServicePerimeter :: Lens' Asset (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeter)
aServicePerimeter
  = lens _aServicePerimeter
      (\ s a -> s{_aServicePerimeter = a})

-- | Please also refer to the [access policy user
-- guide](https:\/\/cloud.google.com\/access-context-manager\/docs\/overview#access-policies).
aAccessPolicy :: Lens' Asset (Maybe GoogleIdentityAccesscontextManagerV1AccessPolicy)
aAccessPolicy
  = lens _aAccessPolicy
      (\ s a -> s{_aAccessPolicy = a})

-- | The full name of the asset. Example:
-- \`\/\/compute.googleapis.com\/projects\/my_project_123\/zones\/zone1\/instances\/instance1\`
-- See [Resource
-- names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more information.
aName :: Lens' Asset (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | A representation of the resource.
aResource :: Lens' Asset (Maybe Resource)
aResource
  = lens _aResource (\ s a -> s{_aResource = a})

-- | A representation of an [organization
-- policy](https:\/\/cloud.google.com\/resource-manager\/docs\/organization-policy\/overview#organization_policy).
-- There can be more than one organization policy with different
-- constraints set on a given resource.
aOrgPolicy :: Lens' Asset [GoogleCloudOrgpolicyV1Policy]
aOrgPolicy
  = lens _aOrgPolicy (\ s a -> s{_aOrgPolicy = a}) .
      _Default
      . _Coerce

-- | A representation of the Cloud IAM policy set on a Google Cloud resource.
-- There can be a maximum of one Cloud IAM policy set on any given
-- resource. In addition, Cloud IAM policies inherit their granted access
-- scope from any policies set on parent resources in the resource
-- hierarchy. Therefore, the effectively policy is the union of both the
-- policy set on this resource and each policy set on all of the
-- resource\'s ancestry resource levels in the hierarchy. See [this
-- topic](https:\/\/cloud.google.com\/iam\/docs\/policies#inheritance) for
-- more information.
aIAMPolicy :: Lens' Asset (Maybe Policy)
aIAMPolicy
  = lens _aIAMPolicy (\ s a -> s{_aIAMPolicy = a})

-- | The type of the asset. Example: \`compute.googleapis.com\/Disk\` See
-- [Supported asset
-- types](https:\/\/cloud.google.com\/asset-inventory\/docs\/supported-asset-types)
-- for more information.
aAssetType :: Lens' Asset (Maybe Text)
aAssetType
  = lens _aAssetType (\ s a -> s{_aAssetType = a})

-- | The ancestry path of an asset in Google Cloud [resource
-- hierarchy](https:\/\/cloud.google.com\/resource-manager\/docs\/cloud-platform-resource-hierarchy),
-- represented as a list of relative resource names. An ancestry path
-- starts with the closest ancestor in the hierarchy and ends at root. If
-- the asset is a project, folder, or organization, the ancestry path
-- starts from the asset itself. Example: \`[\"projects\/123456789\",
-- \"folders\/5432\", \"organizations\/1234\"]\`
aAncestors :: Lens' Asset [Text]
aAncestors
  = lens _aAncestors (\ s a -> s{_aAncestors = a}) .
      _Default
      . _Coerce

instance FromJSON Asset where
        parseJSON
          = withObject "Asset"
              (\ o ->
                 Asset' <$>
                   (o .:? "accessLevel") <*> (o .:? "servicePerimeter")
                     <*> (o .:? "accessPolicy")
                     <*> (o .:? "name")
                     <*> (o .:? "resource")
                     <*> (o .:? "orgPolicy" .!= mempty)
                     <*> (o .:? "iamPolicy")
                     <*> (o .:? "assetType")
                     <*> (o .:? "ancestors" .!= mempty))

instance ToJSON Asset where
        toJSON Asset'{..}
          = object
              (catMaybes
                 [("accessLevel" .=) <$> _aAccessLevel,
                  ("servicePerimeter" .=) <$> _aServicePerimeter,
                  ("accessPolicy" .=) <$> _aAccessPolicy,
                  ("name" .=) <$> _aName,
                  ("resource" .=) <$> _aResource,
                  ("orgPolicy" .=) <$> _aOrgPolicy,
                  ("iamPolicy" .=) <$> _aIAMPolicy,
                  ("assetType" .=) <$> _aAssetType,
                  ("ancestors" .=) <$> _aAncestors])

-- | \`ServicePerimeter\` describes a set of Google Cloud resources which can
-- freely import and export data amongst themselves, but not export outside
-- of the \`ServicePerimeter\`. If a request with a source within this
-- \`ServicePerimeter\` has a target outside of the \`ServicePerimeter\`,
-- the request will be blocked. Otherwise the request is allowed. There are
-- two types of Service Perimeter - Regular and Bridge. Regular Service
-- Perimeters cannot overlap, a single Google Cloud project can only belong
-- to a single regular Service Perimeter. Service Perimeter Bridges can
-- contain only Google Cloud projects as members, a single Google Cloud
-- project may belong to multiple Service Perimeter Bridges.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1ServicePerimeter' smart constructor.
data GoogleIdentityAccesscontextManagerV1ServicePerimeter =
  GoogleIdentityAccesscontextManagerV1ServicePerimeter'
    { _giamvspStatus                :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
    , _giamvspPerimeterType         :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType)
    , _giamvspName                  :: !(Maybe Text)
    , _giamvspSpec                  :: !(Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
    , _giamvspTitle                 :: !(Maybe Text)
    , _giamvspUseExplicitDryRunSpec :: !(Maybe Bool)
    , _giamvspDescription           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1ServicePerimeter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvspStatus'
--
-- * 'giamvspPerimeterType'
--
-- * 'giamvspName'
--
-- * 'giamvspSpec'
--
-- * 'giamvspTitle'
--
-- * 'giamvspUseExplicitDryRunSpec'
--
-- * 'giamvspDescription'
googleIdentityAccesscontextManagerV1ServicePerimeter
    :: GoogleIdentityAccesscontextManagerV1ServicePerimeter
googleIdentityAccesscontextManagerV1ServicePerimeter =
  GoogleIdentityAccesscontextManagerV1ServicePerimeter'
    { _giamvspStatus = Nothing
    , _giamvspPerimeterType = Nothing
    , _giamvspName = Nothing
    , _giamvspSpec = Nothing
    , _giamvspTitle = Nothing
    , _giamvspUseExplicitDryRunSpec = Nothing
    , _giamvspDescription = Nothing
    }


-- | Current ServicePerimeter configuration. Specifies sets of resources,
-- restricted services and access levels that determine perimeter content
-- and boundaries.
giamvspStatus :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
giamvspStatus
  = lens _giamvspStatus
      (\ s a -> s{_giamvspStatus = a})

-- | Perimeter type indicator. A single project is allowed to be a member of
-- single regular perimeter, but multiple service perimeter bridges. A
-- project cannot be a included in a perimeter bridge without being
-- included in regular perimeter. For perimeter bridges, the restricted
-- service list as well as access level lists must be empty.
giamvspPerimeterType :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType)
giamvspPerimeterType
  = lens _giamvspPerimeterType
      (\ s a -> s{_giamvspPerimeterType = a})

-- | Required. Resource name for the ServicePerimeter. The \`short_name\`
-- component must begin with a letter and only include alphanumeric and
-- \'_\'. Format:
-- \`accessPolicies\/{policy_id}\/servicePerimeters\/{short_name}\`
giamvspName :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Text)
giamvspName
  = lens _giamvspName (\ s a -> s{_giamvspName = a})

-- | Proposed (or dry run) ServicePerimeter configuration. This configuration
-- allows to specify and test ServicePerimeter configuration without
-- enforcing actual access restrictions. Only allowed to be set when the
-- \"use_explicit_dry_run_spec\" flag is set.
giamvspSpec :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig)
giamvspSpec
  = lens _giamvspSpec (\ s a -> s{_giamvspSpec = a})

-- | Human readable title. Must be unique within the Policy.
giamvspTitle :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Text)
giamvspTitle
  = lens _giamvspTitle (\ s a -> s{_giamvspTitle = a})

-- | Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly
-- exists for all Service Perimeters, and that spec is identical to the
-- status for those Service Perimeters. When this flag is set, it inhibits
-- the generation of the implicit spec, thereby allowing the user to
-- explicitly provide a configuration (\"spec\") to use in a dry-run
-- version of the Service Perimeter. This allows the user to test changes
-- to the enforced config (\"status\") without actually enforcing them.
-- This testing is done through analyzing the differences between currently
-- enforced and suggested restrictions. use_explicit_dry_run_spec must bet
-- set to True if any of the fields in the spec are set to non-default
-- values.
giamvspUseExplicitDryRunSpec :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Bool)
giamvspUseExplicitDryRunSpec
  = lens _giamvspUseExplicitDryRunSpec
      (\ s a -> s{_giamvspUseExplicitDryRunSpec = a})

-- | Description of the \`ServicePerimeter\` and its use. Does not affect
-- behavior.
giamvspDescription :: Lens' GoogleIdentityAccesscontextManagerV1ServicePerimeter (Maybe Text)
giamvspDescription
  = lens _giamvspDescription
      (\ s a -> s{_giamvspDescription = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeter
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1ServicePerimeter"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1ServicePerimeter'
                   <$>
                   (o .:? "status") <*> (o .:? "perimeterType") <*>
                     (o .:? "name")
                     <*> (o .:? "spec")
                     <*> (o .:? "title")
                     <*> (o .:? "useExplicitDryRunSpec")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1ServicePerimeter
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1ServicePerimeter'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _giamvspStatus,
                  ("perimeterType" .=) <$> _giamvspPerimeterType,
                  ("name" .=) <$> _giamvspName,
                  ("spec" .=) <$> _giamvspSpec,
                  ("title" .=) <$> _giamvspTitle,
                  ("useExplicitDryRunSpec" .=) <$>
                    _giamvspUseExplicitDryRunSpec,
                  ("description" .=) <$> _giamvspDescription])

-- | A restriction on the OS type and version of devices making requests.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1OSConstraint' smart constructor.
data GoogleIdentityAccesscontextManagerV1OSConstraint =
  GoogleIdentityAccesscontextManagerV1OSConstraint'
    { _giamvocOSType                  :: !(Maybe GoogleIdentityAccesscontextManagerV1OSConstraintOSType)
    , _giamvocMinimumVersion          :: !(Maybe Text)
    , _giamvocRequireVerifiedChromeOS :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1OSConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvocOSType'
--
-- * 'giamvocMinimumVersion'
--
-- * 'giamvocRequireVerifiedChromeOS'
googleIdentityAccesscontextManagerV1OSConstraint
    :: GoogleIdentityAccesscontextManagerV1OSConstraint
googleIdentityAccesscontextManagerV1OSConstraint =
  GoogleIdentityAccesscontextManagerV1OSConstraint'
    { _giamvocOSType = Nothing
    , _giamvocMinimumVersion = Nothing
    , _giamvocRequireVerifiedChromeOS = Nothing
    }


-- | Required. The allowed OS type.
giamvocOSType :: Lens' GoogleIdentityAccesscontextManagerV1OSConstraint (Maybe GoogleIdentityAccesscontextManagerV1OSConstraintOSType)
giamvocOSType
  = lens _giamvocOSType
      (\ s a -> s{_giamvocOSType = a})

-- | The minimum allowed OS version. If not set, any version of this OS
-- satisfies the constraint. Format: \`\"major.minor.patch\"\`. Examples:
-- \`\"10.5.301\"\`, \`\"9.2.1\"\`.
giamvocMinimumVersion :: Lens' GoogleIdentityAccesscontextManagerV1OSConstraint (Maybe Text)
giamvocMinimumVersion
  = lens _giamvocMinimumVersion
      (\ s a -> s{_giamvocMinimumVersion = a})

-- | Only allows requests from devices with a verified Chrome OS.
-- Verifications includes requirements that the device is
-- enterprise-managed, conformant to domain policies, and the caller has
-- permission to call the API targeted by the request.
giamvocRequireVerifiedChromeOS :: Lens' GoogleIdentityAccesscontextManagerV1OSConstraint (Maybe Bool)
giamvocRequireVerifiedChromeOS
  = lens _giamvocRequireVerifiedChromeOS
      (\ s a -> s{_giamvocRequireVerifiedChromeOS = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1OSConstraint
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1OSConstraint"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1OSConstraint' <$>
                   (o .:? "osType") <*> (o .:? "minimumVersion") <*>
                     (o .:? "requireVerifiedChromeOs"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1OSConstraint
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1OSConstraint'{..}
          = object
              (catMaybes
                 [("osType" .=) <$> _giamvocOSType,
                  ("minimumVersion" .=) <$> _giamvocMinimumVersion,
                  ("requireVerifiedChromeOs" .=) <$>
                    _giamvocRequireVerifiedChromeOS])

-- | \`AccessPolicy\` is a container for \`AccessLevels\` (which define the
-- necessary attributes to use Google Cloud services) and
-- \`ServicePerimeters\` (which define regions of services able to freely
-- pass data within a perimeter). An access policy is globally visible
-- within an organization, and the restrictions it specifies apply to all
-- projects within an organization.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1AccessPolicy' smart constructor.
data GoogleIdentityAccesscontextManagerV1AccessPolicy =
  GoogleIdentityAccesscontextManagerV1AccessPolicy'
    { _giamvapParent :: !(Maybe Text)
    , _giamvapEtag   :: !(Maybe Text)
    , _giamvapName   :: !(Maybe Text)
    , _giamvapTitle  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1AccessPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvapParent'
--
-- * 'giamvapEtag'
--
-- * 'giamvapName'
--
-- * 'giamvapTitle'
googleIdentityAccesscontextManagerV1AccessPolicy
    :: GoogleIdentityAccesscontextManagerV1AccessPolicy
googleIdentityAccesscontextManagerV1AccessPolicy =
  GoogleIdentityAccesscontextManagerV1AccessPolicy'
    { _giamvapParent = Nothing
    , _giamvapEtag = Nothing
    , _giamvapName = Nothing
    , _giamvapTitle = Nothing
    }


-- | Required. The parent of this \`AccessPolicy\` in the Cloud Resource
-- Hierarchy. Currently immutable once created. Format:
-- \`organizations\/{organization_id}\`
giamvapParent :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapParent
  = lens _giamvapParent
      (\ s a -> s{_giamvapParent = a})

-- | Output only. An opaque identifier for the current version of the
-- \`AccessPolicy\`. This will always be a strongly validated etag, meaning
-- that two Access Polices will be identical if and only if their etags are
-- identical. Clients should not expect this to be in any specific format.
giamvapEtag :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapEtag
  = lens _giamvapEtag (\ s a -> s{_giamvapEtag = a})

-- | Output only. Resource name of the \`AccessPolicy\`. Format:
-- \`accessPolicies\/{policy_id}\`
giamvapName :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapName
  = lens _giamvapName (\ s a -> s{_giamvapName = a})

-- | Required. Human readable title. Does not affect behavior.
giamvapTitle :: Lens' GoogleIdentityAccesscontextManagerV1AccessPolicy (Maybe Text)
giamvapTitle
  = lens _giamvapTitle (\ s a -> s{_giamvapTitle = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1AccessPolicy
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1AccessPolicy"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1AccessPolicy' <$>
                   (o .:? "parent") <*> (o .:? "etag") <*>
                     (o .:? "name")
                     <*> (o .:? "title"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1AccessPolicy
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1AccessPolicy'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _giamvapParent,
                  ("etag" .=) <$> _giamvapEtag,
                  ("name" .=) <$> _giamvapName,
                  ("title" .=) <$> _giamvapTitle])

-- | Used in \`policy_type\` to specify how \`list_policy\` behaves at this
-- resource. \`ListPolicy\` can define specific values and subtrees of
-- Cloud Resource Manager resource hierarchy (\`Organizations\`,
-- \`Folders\`, \`Projects\`) that are allowed or denied by setting the
-- \`allowed_values\` and \`denied_values\` fields. This is achieved by
-- using the \`under:\` and optional \`is:\` prefixes. The \`under:\`
-- prefix is used to denote resource subtree values. The \`is:\` prefix is
-- used to denote specific values, and is required only if the value
-- contains a \":\". Values prefixed with \"is:\" are treated the same as
-- values with no prefix. Ancestry subtrees must be in one of the following
-- formats: - \"projects\/\", e.g. \"projects\/tokyo-rain-123\" -
-- \"folders\/\", e.g. \"folders\/1234\" - \"organizations\/\", e.g.
-- \"organizations\/1234\" The \`supports_under\` field of the associated
-- \`Constraint\` defines whether ancestry prefixes can be used. You can
-- set \`allowed_values\` and \`denied_values\` in the same \`Policy\` if
-- \`all_values\` is \`ALL_VALUES_UNSPECIFIED\`. \`ALLOW\` or \`DENY\` are
-- used to allow or deny all values. If \`all_values\` is set to either
-- \`ALLOW\` or \`DENY\`, \`allowed_values\` and \`denied_values\` must be
-- unset.
--
-- /See:/ 'googleCloudOrgpolicyV1ListPolicy' smart constructor.
data GoogleCloudOrgpolicyV1ListPolicy =
  GoogleCloudOrgpolicyV1ListPolicy'
    { _gcovlpInheritFromParent :: !(Maybe Bool)
    , _gcovlpAllValues         :: !(Maybe GoogleCloudOrgpolicyV1ListPolicyAllValues)
    , _gcovlpDeniedValues      :: !(Maybe [Text])
    , _gcovlpAllowedValues     :: !(Maybe [Text])
    , _gcovlpSuggestedValue    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1ListPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcovlpInheritFromParent'
--
-- * 'gcovlpAllValues'
--
-- * 'gcovlpDeniedValues'
--
-- * 'gcovlpAllowedValues'
--
-- * 'gcovlpSuggestedValue'
googleCloudOrgpolicyV1ListPolicy
    :: GoogleCloudOrgpolicyV1ListPolicy
googleCloudOrgpolicyV1ListPolicy =
  GoogleCloudOrgpolicyV1ListPolicy'
    { _gcovlpInheritFromParent = Nothing
    , _gcovlpAllValues = Nothing
    , _gcovlpDeniedValues = Nothing
    , _gcovlpAllowedValues = Nothing
    , _gcovlpSuggestedValue = Nothing
    }


-- | Determines the inheritance behavior for this \`Policy\`. By default, a
-- \`ListPolicy\` set at a resource supersedes any \`Policy\` set anywhere
-- up the resource hierarchy. However, if \`inherit_from_parent\` is set to
-- \`true\`, then the values from the effective \`Policy\` of the parent
-- resource are inherited, meaning the values set in this \`Policy\` are
-- added to the values inherited up the hierarchy. Setting \`Policy\`
-- hierarchies that inherit both allowed values and denied values isn\'t
-- recommended in most circumstances to keep the configuration simple and
-- understandable. However, it is possible to set a \`Policy\` with
-- \`allowed_values\` set that inherits a \`Policy\` with \`denied_values\`
-- set. In this case, the values that are allowed must be in
-- \`allowed_values\` and not present in \`denied_values\`. For example,
-- suppose you have a \`Constraint\` \`constraints\/serviceuser.services\`,
-- which has a \`constraint_type\` of \`list_constraint\`, and with
-- \`constraint_default\` set to \`ALLOW\`. Suppose that at the
-- Organization level, a \`Policy\` is applied that restricts the allowed
-- API activations to {\`E1\`, \`E2\`}. Then, if a \`Policy\` is applied to
-- a project below the Organization that has \`inherit_from_parent\` set to
-- \`false\` and field all_values set to DENY, then an attempt to activate
-- any API will be denied. The following examples demonstrate different
-- possible layerings for \`projects\/bar\` parented by
-- \`organizations\/foo\`: Example 1 (no inherited values):
-- \`organizations\/foo\` has a \`Policy\` with values: {allowed_values:
-- \"E1\" allowed_values:\"E2\"} \`projects\/bar\` has
-- \`inherit_from_parent\` \`false\` and values: {allowed_values: \"E3\"
-- allowed_values: \"E4\"} The accepted values at \`organizations\/foo\`
-- are \`E1\`, \`E2\`. The accepted values at \`projects\/bar\` are \`E3\`,
-- and \`E4\`. Example 2 (inherited values): \`organizations\/foo\` has a
-- \`Policy\` with values: {allowed_values: \"E1\" allowed_values:\"E2\"}
-- \`projects\/bar\` has a \`Policy\` with values: {value: \"E3\" value:
-- \"E4\" inherit_from_parent: true} The accepted values at
-- \`organizations\/foo\` are \`E1\`, \`E2\`. The accepted values at
-- \`projects\/bar\` are \`E1\`, \`E2\`, \`E3\`, and \`E4\`. Example 3
-- (inheriting both allowed and denied values): \`organizations\/foo\` has
-- a \`Policy\` with values: {allowed_values: \"E1\" allowed_values:
-- \"E2\"} \`projects\/bar\` has a \`Policy\` with: {denied_values: \"E1\"}
-- The accepted values at \`organizations\/foo\` are \`E1\`, \`E2\`. The
-- value accepted at \`projects\/bar\` is \`E2\`. Example 4
-- (RestoreDefault): \`organizations\/foo\` has a \`Policy\` with values:
-- {allowed_values: \"E1\" allowed_values:\"E2\"} \`projects\/bar\` has a
-- \`Policy\` with values: {RestoreDefault: {}} The accepted values at
-- \`organizations\/foo\` are \`E1\`, \`E2\`. The accepted values at
-- \`projects\/bar\` are either all or none depending on the value of
-- \`constraint_default\` (if \`ALLOW\`, all; if \`DENY\`, none). Example 5
-- (no policy inherits parent policy): \`organizations\/foo\` has no
-- \`Policy\` set. \`projects\/bar\` has no \`Policy\` set. The accepted
-- values at both levels are either all or none depending on the value of
-- \`constraint_default\` (if \`ALLOW\`, all; if \`DENY\`, none). Example 6
-- (ListConstraint allowing all): \`organizations\/foo\` has a \`Policy\`
-- with values: {allowed_values: \"E1\" allowed_values: \"E2\"}
-- \`projects\/bar\` has a \`Policy\` with: {all: ALLOW} The accepted
-- values at \`organizations\/foo\` are \`E1\`, E2\`. Any value is accepted
-- at \`projects\/bar\`. Example 7 (ListConstraint allowing none):
-- \`organizations\/foo\` has a \`Policy\` with values: {allowed_values:
-- \"E1\" allowed_values: \"E2\"} \`projects\/bar\` has a \`Policy\` with:
-- {all: DENY} The accepted values at \`organizations\/foo\` are \`E1\`,
-- E2\`. No value is accepted at \`projects\/bar\`. Example 10 (allowed and
-- denied subtrees of Resource Manager hierarchy): Given the following
-- resource hierarchy O1->{F1, F2}; F1->{P1}; F2->{P2, P3},
-- \`organizations\/foo\` has a \`Policy\` with values: {allowed_values:
-- \"under:organizations\/O1\"} \`projects\/bar\` has a \`Policy\` with:
-- {allowed_values: \"under:projects\/P3\"} {denied_values:
-- \"under:folders\/F2\"} The accepted values at \`organizations\/foo\` are
-- \`organizations\/O1\`, \`folders\/F1\`, \`folders\/F2\`,
-- \`projects\/P1\`, \`projects\/P2\`, \`projects\/P3\`. The accepted
-- values at \`projects\/bar\` are \`organizations\/O1\`, \`folders\/F1\`,
-- \`projects\/P1\`.
gcovlpInheritFromParent :: Lens' GoogleCloudOrgpolicyV1ListPolicy (Maybe Bool)
gcovlpInheritFromParent
  = lens _gcovlpInheritFromParent
      (\ s a -> s{_gcovlpInheritFromParent = a})

-- | The policy all_values state.
gcovlpAllValues :: Lens' GoogleCloudOrgpolicyV1ListPolicy (Maybe GoogleCloudOrgpolicyV1ListPolicyAllValues)
gcovlpAllValues
  = lens _gcovlpAllValues
      (\ s a -> s{_gcovlpAllValues = a})

-- | List of values denied at this resource. Can only be set if
-- \`all_values\` is set to \`ALL_VALUES_UNSPECIFIED\`.
gcovlpDeniedValues :: Lens' GoogleCloudOrgpolicyV1ListPolicy [Text]
gcovlpDeniedValues
  = lens _gcovlpDeniedValues
      (\ s a -> s{_gcovlpDeniedValues = a})
      . _Default
      . _Coerce

-- | List of values allowed at this resource. Can only be set if
-- \`all_values\` is set to \`ALL_VALUES_UNSPECIFIED\`.
gcovlpAllowedValues :: Lens' GoogleCloudOrgpolicyV1ListPolicy [Text]
gcovlpAllowedValues
  = lens _gcovlpAllowedValues
      (\ s a -> s{_gcovlpAllowedValues = a})
      . _Default
      . _Coerce

-- | Optional. The Google Cloud Console will try to default to a
-- configuration that matches the value specified in this \`Policy\`. If
-- \`suggested_value\` is not set, it will inherit the value specified
-- higher in the hierarchy, unless \`inherit_from_parent\` is \`false\`.
gcovlpSuggestedValue :: Lens' GoogleCloudOrgpolicyV1ListPolicy (Maybe Text)
gcovlpSuggestedValue
  = lens _gcovlpSuggestedValue
      (\ s a -> s{_gcovlpSuggestedValue = a})

instance FromJSON GoogleCloudOrgpolicyV1ListPolicy
         where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1ListPolicy"
              (\ o ->
                 GoogleCloudOrgpolicyV1ListPolicy' <$>
                   (o .:? "inheritFromParent") <*> (o .:? "allValues")
                     <*> (o .:? "deniedValues" .!= mempty)
                     <*> (o .:? "allowedValues" .!= mempty)
                     <*> (o .:? "suggestedValue"))

instance ToJSON GoogleCloudOrgpolicyV1ListPolicy
         where
        toJSON GoogleCloudOrgpolicyV1ListPolicy'{..}
          = object
              (catMaybes
                 [("inheritFromParent" .=) <$>
                    _gcovlpInheritFromParent,
                  ("allValues" .=) <$> _gcovlpAllValues,
                  ("deniedValues" .=) <$> _gcovlpDeniedValues,
                  ("allowedValues" .=) <$> _gcovlpAllowedValues,
                  ("suggestedValue" .=) <$> _gcovlpSuggestedValue])

-- | A representation of a Google Cloud resource.
--
-- /See:/ 'resource' smart constructor.
data Resource =
  Resource'
    { _rParent               :: !(Maybe Text)
    , _rData                 :: !(Maybe ResourceData)
    , _rVersion              :: !(Maybe Text)
    , _rDiscoveryName        :: !(Maybe Text)
    , _rDiscoveryDocumentURI :: !(Maybe Text)
    , _rResourceURL          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rParent'
--
-- * 'rData'
--
-- * 'rVersion'
--
-- * 'rDiscoveryName'
--
-- * 'rDiscoveryDocumentURI'
--
-- * 'rResourceURL'
resource
    :: Resource
resource =
  Resource'
    { _rParent = Nothing
    , _rData = Nothing
    , _rVersion = Nothing
    , _rDiscoveryName = Nothing
    , _rDiscoveryDocumentURI = Nothing
    , _rResourceURL = Nothing
    }


-- | The full name of the immediate parent of this resource. See [Resource
-- Names](https:\/\/cloud.google.com\/apis\/design\/resource_names#full_resource_name)
-- for more information. For Google Cloud assets, this value is the parent
-- resource defined in the [Cloud IAM policy
-- hierarchy](https:\/\/cloud.google.com\/iam\/docs\/overview#policy_hierarchy).
-- Example:
-- \`\/\/cloudresourcemanager.googleapis.com\/projects\/my_project_123\`
-- For third-party assets, this field may be set differently.
rParent :: Lens' Resource (Maybe Text)
rParent = lens _rParent (\ s a -> s{_rParent = a})

-- | The content of the resource, in which some sensitive fields are removed
-- and may not be present.
rData :: Lens' Resource (Maybe ResourceData)
rData = lens _rData (\ s a -> s{_rData = a})

-- | The API version. Example: \"v1\".
rVersion :: Lens' Resource (Maybe Text)
rVersion = lens _rVersion (\ s a -> s{_rVersion = a})

-- | The JSON schema name listed in the discovery document. Example:
-- \`Project\` This value is unspecified for resources that do not have an
-- API based on a discovery document, such as Cloud Bigtable.
rDiscoveryName :: Lens' Resource (Maybe Text)
rDiscoveryName
  = lens _rDiscoveryName
      (\ s a -> s{_rDiscoveryName = a})

-- | The URL of the discovery document containing the resource\'s JSON
-- schema. Example:
-- \`https:\/\/www.googleapis.com\/discovery\/v1\/apis\/compute\/v1\/rest\`
-- This value is unspecified for resources that do not have an API based on
-- a discovery document, such as Cloud Bigtable.
rDiscoveryDocumentURI :: Lens' Resource (Maybe Text)
rDiscoveryDocumentURI
  = lens _rDiscoveryDocumentURI
      (\ s a -> s{_rDiscoveryDocumentURI = a})

-- | The REST URL for accessing the resource. An HTTP \`GET\` request using
-- this URL returns the resource itself. Example:
-- \`https:\/\/cloudresourcemanager.googleapis.com\/v1\/projects\/my-project-123\`
-- This value is unspecified for resources without a REST API.
rResourceURL :: Lens' Resource (Maybe Text)
rResourceURL
  = lens _rResourceURL (\ s a -> s{_rResourceURL = a})

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ o ->
                 Resource' <$>
                   (o .:? "parent") <*> (o .:? "data") <*>
                     (o .:? "version")
                     <*> (o .:? "discoveryName")
                     <*> (o .:? "discoveryDocumentUri")
                     <*> (o .:? "resourceUrl"))

instance ToJSON Resource where
        toJSON Resource'{..}
          = object
              (catMaybes
                 [("parent" .=) <$> _rParent, ("data" .=) <$> _rData,
                  ("version" .=) <$> _rVersion,
                  ("discoveryName" .=) <$> _rDiscoveryName,
                  ("discoveryDocumentUri" .=) <$>
                    _rDiscoveryDocumentURI,
                  ("resourceUrl" .=) <$> _rResourceURL])

-- | ListAssets response.
--
-- /See:/ 'listAssetsResponse' smart constructor.
data ListAssetsResponse =
  ListAssetsResponse'
    { _larReadTime      :: !(Maybe DateTime')
    , _larNextPageToken :: !(Maybe Text)
    , _larAssets        :: !(Maybe [Asset])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAssetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larReadTime'
--
-- * 'larNextPageToken'
--
-- * 'larAssets'
listAssetsResponse
    :: ListAssetsResponse
listAssetsResponse =
  ListAssetsResponse'
    {_larReadTime = Nothing, _larNextPageToken = Nothing, _larAssets = Nothing}


-- | Time the snapshot was taken.
larReadTime :: Lens' ListAssetsResponse (Maybe UTCTime)
larReadTime
  = lens _larReadTime (\ s a -> s{_larReadTime = a}) .
      mapping _DateTime

-- | Token to retrieve the next page of results. Set to empty if there are no
-- remaining results.
larNextPageToken :: Lens' ListAssetsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | Assets.
larAssets :: Lens' ListAssetsResponse [Asset]
larAssets
  = lens _larAssets (\ s a -> s{_larAssets = a}) .
      _Default
      . _Coerce

instance FromJSON ListAssetsResponse where
        parseJSON
          = withObject "ListAssetsResponse"
              (\ o ->
                 ListAssetsResponse' <$>
                   (o .:? "readTime") <*> (o .:? "nextPageToken") <*>
                     (o .:? "assets" .!= mempty))

instance ToJSON ListAssetsResponse where
        toJSON ListAssetsResponse'{..}
          = object
              (catMaybes
                 [("readTime" .=) <$> _larReadTime,
                  ("nextPageToken" .=) <$> _larNextPageToken,
                  ("assets" .=) <$> _larAssets])

-- | The content of the resource, in which some sensitive fields are removed
-- and may not be present.
--
-- /See:/ 'resourceData' smart constructor.
newtype ResourceData =
  ResourceData'
    { _rdAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourceData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdAddtional'
resourceData
    :: HashMap Text JSONValue -- ^ 'rdAddtional'
    -> ResourceData
resourceData pRdAddtional_ =
  ResourceData' {_rdAddtional = _Coerce # pRdAddtional_}


-- | Properties of the object.
rdAddtional :: Lens' ResourceData (HashMap Text JSONValue)
rdAddtional
  = lens _rdAddtional (\ s a -> s{_rdAddtional = a}) .
      _Coerce

instance FromJSON ResourceData where
        parseJSON
          = withObject "ResourceData"
              (\ o -> ResourceData' <$> (parseJSONObject o))

instance ToJSON ResourceData where
        toJSON = toJSON . _rdAddtional

-- | \`CustomLevel\` is an \`AccessLevel\` using the Cloud Common Expression
-- Language to represent the necessary conditions for the level to apply to
-- a request. See CEL spec at: https:\/\/github.com\/google\/cel-spec
--
-- /See:/ 'googleIdentityAccesscontextManagerV1CustomLevel' smart constructor.
newtype GoogleIdentityAccesscontextManagerV1CustomLevel =
  GoogleIdentityAccesscontextManagerV1CustomLevel'
    { _giamvclExpr :: Maybe Expr
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1CustomLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvclExpr'
googleIdentityAccesscontextManagerV1CustomLevel
    :: GoogleIdentityAccesscontextManagerV1CustomLevel
googleIdentityAccesscontextManagerV1CustomLevel =
  GoogleIdentityAccesscontextManagerV1CustomLevel' {_giamvclExpr = Nothing}


-- | Required. A Cloud CEL expression evaluating to a boolean.
giamvclExpr :: Lens' GoogleIdentityAccesscontextManagerV1CustomLevel (Maybe Expr)
giamvclExpr
  = lens _giamvclExpr (\ s a -> s{_giamvclExpr = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1CustomLevel
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1CustomLevel"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1CustomLevel' <$>
                   (o .:? "expr"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1CustomLevel
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1CustomLevel'{..}
          = object (catMaybes [("expr" .=) <$> _giamvclExpr])

-- | Specifies how APIs are allowed to communicate within the Service
-- Perimeter.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1VPCAccessibleServices' smart constructor.
data GoogleIdentityAccesscontextManagerV1VPCAccessibleServices =
  GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'
    { _giamvvasAllowedServices   :: !(Maybe [Text])
    , _giamvvasEnableRestriction :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1VPCAccessibleServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvvasAllowedServices'
--
-- * 'giamvvasEnableRestriction'
googleIdentityAccesscontextManagerV1VPCAccessibleServices
    :: GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
googleIdentityAccesscontextManagerV1VPCAccessibleServices =
  GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'
    {_giamvvasAllowedServices = Nothing, _giamvvasEnableRestriction = Nothing}


-- | The list of APIs usable within the Service Perimeter. Must be empty
-- unless \'enable_restriction\' is True. You can specify a list of
-- individual services, as well as include the \'RESTRICTED-SERVICES\'
-- value, which automatically includes all of the services protected by the
-- perimeter.
giamvvasAllowedServices :: Lens' GoogleIdentityAccesscontextManagerV1VPCAccessibleServices [Text]
giamvvasAllowedServices
  = lens _giamvvasAllowedServices
      (\ s a -> s{_giamvvasAllowedServices = a})
      . _Default
      . _Coerce

-- | Whether to restrict API calls within the Service Perimeter to the list
-- of APIs specified in \'allowed_services\'.
giamvvasEnableRestriction :: Lens' GoogleIdentityAccesscontextManagerV1VPCAccessibleServices (Maybe Bool)
giamvvasEnableRestriction
  = lens _giamvvasEnableRestriction
      (\ s a -> s{_giamvvasEnableRestriction = a})

instance FromJSON
           GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1VPCAccessibleServices"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'
                   <$>
                   (o .:? "allowedServices" .!= mempty) <*>
                     (o .:? "enableRestriction"))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1VPCAccessibleServices'{..}
          = object
              (catMaybes
                 [("allowedServices" .=) <$> _giamvvasAllowedServices,
                  ("enableRestriction" .=) <$>
                    _giamvvasEnableRestriction])

-- | Defines a Cloud Organization \`Policy\` which is used to specify
-- \`Constraints\` for configurations of Cloud Platform resources.
--
-- /See:/ 'googleCloudOrgpolicyV1Policy' smart constructor.
data GoogleCloudOrgpolicyV1Policy =
  GoogleCloudOrgpolicyV1Policy'
    { _gcovpBooleanPolicy  :: !(Maybe GoogleCloudOrgpolicyV1BooleanPolicy)
    , _gcovpEtag           :: !(Maybe Bytes)
    , _gcovpRestoreDefault :: !(Maybe GoogleCloudOrgpolicyV1RestoreDefault)
    , _gcovpUpdateTime     :: !(Maybe DateTime')
    , _gcovpVersion        :: !(Maybe (Textual Int32))
    , _gcovpListPolicy     :: !(Maybe GoogleCloudOrgpolicyV1ListPolicy)
    , _gcovpConstraint     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcovpBooleanPolicy'
--
-- * 'gcovpEtag'
--
-- * 'gcovpRestoreDefault'
--
-- * 'gcovpUpdateTime'
--
-- * 'gcovpVersion'
--
-- * 'gcovpListPolicy'
--
-- * 'gcovpConstraint'
googleCloudOrgpolicyV1Policy
    :: GoogleCloudOrgpolicyV1Policy
googleCloudOrgpolicyV1Policy =
  GoogleCloudOrgpolicyV1Policy'
    { _gcovpBooleanPolicy = Nothing
    , _gcovpEtag = Nothing
    , _gcovpRestoreDefault = Nothing
    , _gcovpUpdateTime = Nothing
    , _gcovpVersion = Nothing
    , _gcovpListPolicy = Nothing
    , _gcovpConstraint = Nothing
    }


-- | For boolean \`Constraints\`, whether to enforce the \`Constraint\` or
-- not.
gcovpBooleanPolicy :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe GoogleCloudOrgpolicyV1BooleanPolicy)
gcovpBooleanPolicy
  = lens _gcovpBooleanPolicy
      (\ s a -> s{_gcovpBooleanPolicy = a})

-- | An opaque tag indicating the current version of the \`Policy\`, used for
-- concurrency control. When the \`Policy\` is returned from either a
-- \`GetPolicy\` or a \`ListOrgPolicy\` request, this \`etag\` indicates
-- the version of the current \`Policy\` to use when executing a
-- read-modify-write loop. When the \`Policy\` is returned from a
-- \`GetEffectivePolicy\` request, the \`etag\` will be unset. When the
-- \`Policy\` is used in a \`SetOrgPolicy\` method, use the \`etag\` value
-- that was returned from a \`GetOrgPolicy\` request as part of a
-- read-modify-write loop for concurrency control. Not setting the
-- \`etag\`in a \`SetOrgPolicy\` request will result in an unconditional
-- write of the \`Policy\`.
gcovpEtag :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe ByteString)
gcovpEtag
  = lens _gcovpEtag (\ s a -> s{_gcovpEtag = a}) .
      mapping _Bytes

-- | Restores the default behavior of the constraint; independent of
-- \`Constraint\` type.
gcovpRestoreDefault :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe GoogleCloudOrgpolicyV1RestoreDefault)
gcovpRestoreDefault
  = lens _gcovpRestoreDefault
      (\ s a -> s{_gcovpRestoreDefault = a})

-- | The time stamp the \`Policy\` was previously updated. This is set by the
-- server, not specified by the caller, and represents the last time a call
-- to \`SetOrgPolicy\` was made for that \`Policy\`. Any value set by the
-- client will be ignored.
gcovpUpdateTime :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe UTCTime)
gcovpUpdateTime
  = lens _gcovpUpdateTime
      (\ s a -> s{_gcovpUpdateTime = a})
      . mapping _DateTime

-- | Version of the \`Policy\`. Default version is 0;
gcovpVersion :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe Int32)
gcovpVersion
  = lens _gcovpVersion (\ s a -> s{_gcovpVersion = a})
      . mapping _Coerce

-- | List of values either allowed or disallowed.
gcovpListPolicy :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe GoogleCloudOrgpolicyV1ListPolicy)
gcovpListPolicy
  = lens _gcovpListPolicy
      (\ s a -> s{_gcovpListPolicy = a})

-- | The name of the \`Constraint\` the \`Policy\` is configuring, for
-- example, \`constraints\/serviceuser.services\`. A [list of available
-- constraints](\/resource-manager\/docs\/organization-policy\/org-policy-constraints)
-- is available. Immutable after creation.
gcovpConstraint :: Lens' GoogleCloudOrgpolicyV1Policy (Maybe Text)
gcovpConstraint
  = lens _gcovpConstraint
      (\ s a -> s{_gcovpConstraint = a})

instance FromJSON GoogleCloudOrgpolicyV1Policy where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1Policy"
              (\ o ->
                 GoogleCloudOrgpolicyV1Policy' <$>
                   (o .:? "booleanPolicy") <*> (o .:? "etag") <*>
                     (o .:? "restoreDefault")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "version")
                     <*> (o .:? "listPolicy")
                     <*> (o .:? "constraint"))

instance ToJSON GoogleCloudOrgpolicyV1Policy where
        toJSON GoogleCloudOrgpolicyV1Policy'{..}
          = object
              (catMaybes
                 [("booleanPolicy" .=) <$> _gcovpBooleanPolicy,
                  ("etag" .=) <$> _gcovpEtag,
                  ("restoreDefault" .=) <$> _gcovpRestoreDefault,
                  ("updateTime" .=) <$> _gcovpUpdateTime,
                  ("version" .=) <$> _gcovpVersion,
                  ("listPolicy" .=) <$> _gcovpListPolicy,
                  ("constraint" .=) <$> _gcovpConstraint])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag         :: !(Maybe Bytes)
    , _pVersion      :: !(Maybe (Textual Int32))
    , _pBindings     :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

-- | \`DevicePolicy\` specifies device specific restrictions necessary to
-- acquire a given access level. A \`DevicePolicy\` specifies requirements
-- for requests from devices to be granted access levels, it does not do
-- any enforcement on the device. \`DevicePolicy\` acts as an AND over all
-- specified fields, and each repeated field is an OR over its elements.
-- Any unset fields are ignored. For example, if the proto is { os_type :
-- DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED},
-- then the DevicePolicy will be true for requests originating from
-- encrypted Linux desktops and encrypted Windows desktops.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1DevicePolicy' smart constructor.
data GoogleIdentityAccesscontextManagerV1DevicePolicy =
  GoogleIdentityAccesscontextManagerV1DevicePolicy'
    { _giamvdpOSConstraints                 :: !(Maybe [GoogleIdentityAccesscontextManagerV1OSConstraint])
    , _giamvdpRequireAdminApproval          :: !(Maybe Bool)
    , _giamvdpRequireCorpOwned              :: !(Maybe Bool)
    , _giamvdpRequireScreenlock             :: !(Maybe Bool)
    , _giamvdpAllowedEncryptionStatuses     :: !(Maybe [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem])
    , _giamvdpAllowedDeviceManagementLevels :: !(Maybe [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1DevicePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvdpOSConstraints'
--
-- * 'giamvdpRequireAdminApproval'
--
-- * 'giamvdpRequireCorpOwned'
--
-- * 'giamvdpRequireScreenlock'
--
-- * 'giamvdpAllowedEncryptionStatuses'
--
-- * 'giamvdpAllowedDeviceManagementLevels'
googleIdentityAccesscontextManagerV1DevicePolicy
    :: GoogleIdentityAccesscontextManagerV1DevicePolicy
googleIdentityAccesscontextManagerV1DevicePolicy =
  GoogleIdentityAccesscontextManagerV1DevicePolicy'
    { _giamvdpOSConstraints = Nothing
    , _giamvdpRequireAdminApproval = Nothing
    , _giamvdpRequireCorpOwned = Nothing
    , _giamvdpRequireScreenlock = Nothing
    , _giamvdpAllowedEncryptionStatuses = Nothing
    , _giamvdpAllowedDeviceManagementLevels = Nothing
    }


-- | Allowed OS versions, an empty list allows all types and all versions.
giamvdpOSConstraints :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy [GoogleIdentityAccesscontextManagerV1OSConstraint]
giamvdpOSConstraints
  = lens _giamvdpOSConstraints
      (\ s a -> s{_giamvdpOSConstraints = a})
      . _Default
      . _Coerce

-- | Whether the device needs to be approved by the customer admin.
giamvdpRequireAdminApproval :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy (Maybe Bool)
giamvdpRequireAdminApproval
  = lens _giamvdpRequireAdminApproval
      (\ s a -> s{_giamvdpRequireAdminApproval = a})

-- | Whether the device needs to be corp owned.
giamvdpRequireCorpOwned :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy (Maybe Bool)
giamvdpRequireCorpOwned
  = lens _giamvdpRequireCorpOwned
      (\ s a -> s{_giamvdpRequireCorpOwned = a})

-- | Whether or not screenlock is required for the DevicePolicy to be true.
-- Defaults to \`false\`.
giamvdpRequireScreenlock :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy (Maybe Bool)
giamvdpRequireScreenlock
  = lens _giamvdpRequireScreenlock
      (\ s a -> s{_giamvdpRequireScreenlock = a})

-- | Allowed encryptions statuses, an empty list allows all statuses.
giamvdpAllowedEncryptionStatuses :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem]
giamvdpAllowedEncryptionStatuses
  = lens _giamvdpAllowedEncryptionStatuses
      (\ s a -> s{_giamvdpAllowedEncryptionStatuses = a})
      . _Default
      . _Coerce

-- | Allowed device management levels, an empty list allows all management
-- levels.
giamvdpAllowedDeviceManagementLevels :: Lens' GoogleIdentityAccesscontextManagerV1DevicePolicy [GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem]
giamvdpAllowedDeviceManagementLevels
  = lens _giamvdpAllowedDeviceManagementLevels
      (\ s a ->
         s{_giamvdpAllowedDeviceManagementLevels = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1DevicePolicy
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1DevicePolicy"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1DevicePolicy' <$>
                   (o .:? "osConstraints" .!= mempty) <*>
                     (o .:? "requireAdminApproval")
                     <*> (o .:? "requireCorpOwned")
                     <*> (o .:? "requireScreenlock")
                     <*> (o .:? "allowedEncryptionStatuses" .!= mempty)
                     <*>
                     (o .:? "allowedDeviceManagementLevels" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1DevicePolicy
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1DevicePolicy'{..}
          = object
              (catMaybes
                 [("osConstraints" .=) <$> _giamvdpOSConstraints,
                  ("requireAdminApproval" .=) <$>
                    _giamvdpRequireAdminApproval,
                  ("requireCorpOwned" .=) <$> _giamvdpRequireCorpOwned,
                  ("requireScreenlock" .=) <$>
                    _giamvdpRequireScreenlock,
                  ("allowedEncryptionStatuses" .=) <$>
                    _giamvdpAllowedEncryptionStatuses,
                  ("allowedDeviceManagementLevels" .=) <$>
                    _giamvdpAllowedDeviceManagementLevels])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType         :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

-- | A condition necessary for an \`AccessLevel\` to be granted. The
-- Condition is an AND over its fields. So a Condition is true if: 1) the
-- request IP is from one of the listed subnetworks AND 2) the originating
-- device complies with the listed device policy AND 3) all listed access
-- levels are granted AND 4) the request was sent at a time allowed by the
-- DateTimeRestriction.
--
-- /See:/ 'googleIdentityAccesscontextManagerV1Condition' smart constructor.
data GoogleIdentityAccesscontextManagerV1Condition =
  GoogleIdentityAccesscontextManagerV1Condition'
    { _giamvcMembers              :: !(Maybe [Text])
    , _giamvcRegions              :: !(Maybe [Text])
    , _giamvcNegate               :: !(Maybe Bool)
    , _giamvcIPSubnetworks        :: !(Maybe [Text])
    , _giamvcDevicePolicy         :: !(Maybe GoogleIdentityAccesscontextManagerV1DevicePolicy)
    , _giamvcRequiredAccessLevels :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleIdentityAccesscontextManagerV1Condition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giamvcMembers'
--
-- * 'giamvcRegions'
--
-- * 'giamvcNegate'
--
-- * 'giamvcIPSubnetworks'
--
-- * 'giamvcDevicePolicy'
--
-- * 'giamvcRequiredAccessLevels'
googleIdentityAccesscontextManagerV1Condition
    :: GoogleIdentityAccesscontextManagerV1Condition
googleIdentityAccesscontextManagerV1Condition =
  GoogleIdentityAccesscontextManagerV1Condition'
    { _giamvcMembers = Nothing
    , _giamvcRegions = Nothing
    , _giamvcNegate = Nothing
    , _giamvcIPSubnetworks = Nothing
    , _giamvcDevicePolicy = Nothing
    , _giamvcRequiredAccessLevels = Nothing
    }


-- | The request must be made by one of the provided user or service
-- accounts. Groups are not supported. Syntax: \`user:{emailid}\`
-- \`serviceAccount:{emailid}\` If not specified, a request may come from
-- any user.
giamvcMembers :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcMembers
  = lens _giamvcMembers
      (\ s a -> s{_giamvcMembers = a})
      . _Default
      . _Coerce

-- | The request must originate from one of the provided countries\/regions.
-- Must be valid ISO 3166-1 alpha-2 codes.
giamvcRegions :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcRegions
  = lens _giamvcRegions
      (\ s a -> s{_giamvcRegions = a})
      . _Default
      . _Coerce

-- | Whether to negate the Condition. If true, the Condition becomes a NAND
-- over its non-empty fields, each field must be false for the Condition
-- overall to be satisfied. Defaults to false.
giamvcNegate :: Lens' GoogleIdentityAccesscontextManagerV1Condition (Maybe Bool)
giamvcNegate
  = lens _giamvcNegate (\ s a -> s{_giamvcNegate = a})

-- | CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that
-- for a CIDR IP address block, the specified IP address portion must be
-- properly truncated (i.e. all the host bits must be zero) or the input is
-- considered malformed. For example, \"192.0.2.0\/24\" is accepted but
-- \"192.0.2.1\/24\" is not. Similarly, for IPv6, \"2001:db8::\/32\" is
-- accepted whereas \"2001:db8::1\/32\" is not. The originating IP of a
-- request must be in one of the listed subnets in order for this Condition
-- to be true. If empty, all IP addresses are allowed.
giamvcIPSubnetworks :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcIPSubnetworks
  = lens _giamvcIPSubnetworks
      (\ s a -> s{_giamvcIPSubnetworks = a})
      . _Default
      . _Coerce

-- | Device specific restrictions, all restrictions must hold for the
-- Condition to be true. If not specified, all devices are allowed.
giamvcDevicePolicy :: Lens' GoogleIdentityAccesscontextManagerV1Condition (Maybe GoogleIdentityAccesscontextManagerV1DevicePolicy)
giamvcDevicePolicy
  = lens _giamvcDevicePolicy
      (\ s a -> s{_giamvcDevicePolicy = a})

-- | A list of other access levels defined in the same \`Policy\`, referenced
-- by resource name. Referencing an \`AccessLevel\` which does not exist is
-- an error. All access levels listed must be granted for the Condition to
-- be true. Example:
-- \"\`accessPolicies\/MY_POLICY\/accessLevels\/LEVEL_NAME\"\`
giamvcRequiredAccessLevels :: Lens' GoogleIdentityAccesscontextManagerV1Condition [Text]
giamvcRequiredAccessLevels
  = lens _giamvcRequiredAccessLevels
      (\ s a -> s{_giamvcRequiredAccessLevels = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleIdentityAccesscontextManagerV1Condition
         where
        parseJSON
          = withObject
              "GoogleIdentityAccesscontextManagerV1Condition"
              (\ o ->
                 GoogleIdentityAccesscontextManagerV1Condition' <$>
                   (o .:? "members" .!= mempty) <*>
                     (o .:? "regions" .!= mempty)
                     <*> (o .:? "negate")
                     <*> (o .:? "ipSubnetworks" .!= mempty)
                     <*> (o .:? "devicePolicy")
                     <*> (o .:? "requiredAccessLevels" .!= mempty))

instance ToJSON
           GoogleIdentityAccesscontextManagerV1Condition
         where
        toJSON
          GoogleIdentityAccesscontextManagerV1Condition'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _giamvcMembers,
                  ("regions" .=) <$> _giamvcRegions,
                  ("negate" .=) <$> _giamvcNegate,
                  ("ipSubnetworks" .=) <$> _giamvcIPSubnetworks,
                  ("devicePolicy" .=) <$> _giamvcDevicePolicy,
                  ("requiredAccessLevels" .=) <$>
                    _giamvcRequiredAccessLevels])

-- | Ignores policies set above this resource and restores the
-- \`constraint_default\` enforcement behavior of the specific
-- \`Constraint\` at this resource. Suppose that \`constraint_default\` is
-- set to \`ALLOW\` for the \`Constraint\`
-- \`constraints\/serviceuser.services\`. Suppose that organization foo.com
-- sets a \`Policy\` at their Organization resource node that restricts the
-- allowed service activations to deny all service activations. They could
-- then set a \`Policy\` with the \`policy_type\` \`restore_default\` on
-- several experimental projects, restoring the \`constraint_default\`
-- enforcement of the \`Constraint\` for only those projects, allowing
-- those projects to have all services activated.
--
-- /See:/ 'googleCloudOrgpolicyV1RestoreDefault' smart constructor.
data GoogleCloudOrgpolicyV1RestoreDefault =
  GoogleCloudOrgpolicyV1RestoreDefault'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1RestoreDefault' with the minimum fields required to make a request.
--
googleCloudOrgpolicyV1RestoreDefault
    :: GoogleCloudOrgpolicyV1RestoreDefault
googleCloudOrgpolicyV1RestoreDefault = GoogleCloudOrgpolicyV1RestoreDefault'


instance FromJSON
           GoogleCloudOrgpolicyV1RestoreDefault
         where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1RestoreDefault"
              (\ o -> pure GoogleCloudOrgpolicyV1RestoreDefault')

instance ToJSON GoogleCloudOrgpolicyV1RestoreDefault
         where
        toJSON = const emptyObject

-- | Used in \`policy_type\` to specify how \`boolean_policy\` will behave at
-- this resource.
--
-- /See:/ 'googleCloudOrgpolicyV1BooleanPolicy' smart constructor.
newtype GoogleCloudOrgpolicyV1BooleanPolicy =
  GoogleCloudOrgpolicyV1BooleanPolicy'
    { _gcovbpEnforced :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudOrgpolicyV1BooleanPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcovbpEnforced'
googleCloudOrgpolicyV1BooleanPolicy
    :: GoogleCloudOrgpolicyV1BooleanPolicy
googleCloudOrgpolicyV1BooleanPolicy =
  GoogleCloudOrgpolicyV1BooleanPolicy' {_gcovbpEnforced = Nothing}


-- | If \`true\`, then the \`Policy\` is enforced. If \`false\`, then any
-- configuration is acceptable. Suppose you have a \`Constraint\`
-- \`constraints\/compute.disableSerialPortAccess\` with
-- \`constraint_default\` set to \`ALLOW\`. A \`Policy\` for that
-- \`Constraint\` exhibits the following behavior: - If the \`Policy\` at
-- this resource has enforced set to \`false\`, serial port connection
-- attempts will be allowed. - If the \`Policy\` at this resource has
-- enforced set to \`true\`, serial port connection attempts will be
-- refused. - If the \`Policy\` at this resource is \`RestoreDefault\`,
-- serial port connection attempts will be allowed. - If no \`Policy\` is
-- set at this resource or anywhere higher in the resource hierarchy,
-- serial port connection attempts will be allowed. - If no \`Policy\` is
-- set at this resource, but one exists higher in the resource hierarchy,
-- the behavior is as if the\`Policy\` were set at this resource. The
-- following examples demonstrate the different possible layerings: Example
-- 1 (nearest \`Constraint\` wins): \`organizations\/foo\` has a \`Policy\`
-- with: {enforced: false} \`projects\/bar\` has no \`Policy\` set. The
-- constraint at \`projects\/bar\` and \`organizations\/foo\` will not be
-- enforced. Example 2 (enforcement gets replaced): \`organizations\/foo\`
-- has a \`Policy\` with: {enforced: false} \`projects\/bar\` has a
-- \`Policy\` with: {enforced: true} The constraint at
-- \`organizations\/foo\` is not enforced. The constraint at
-- \`projects\/bar\` is enforced. Example 3 (RestoreDefault):
-- \`organizations\/foo\` has a \`Policy\` with: {enforced: true}
-- \`projects\/bar\` has a \`Policy\` with: {RestoreDefault: {}} The
-- constraint at \`organizations\/foo\` is enforced. The constraint at
-- \`projects\/bar\` is not enforced, because \`constraint_default\` for
-- the \`Constraint\` is \`ALLOW\`.
gcovbpEnforced :: Lens' GoogleCloudOrgpolicyV1BooleanPolicy (Maybe Bool)
gcovbpEnforced
  = lens _gcovbpEnforced
      (\ s a -> s{_gcovbpEnforced = a})

instance FromJSON GoogleCloudOrgpolicyV1BooleanPolicy
         where
        parseJSON
          = withObject "GoogleCloudOrgpolicyV1BooleanPolicy"
              (\ o ->
                 GoogleCloudOrgpolicyV1BooleanPolicy' <$>
                   (o .:? "enforced"))

instance ToJSON GoogleCloudOrgpolicyV1BooleanPolicy
         where
        toJSON GoogleCloudOrgpolicyV1BooleanPolicy'{..}
          = object
              (catMaybes [("enforced" .=) <$> _gcovbpEnforced])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers   :: !(Maybe [Text])
    , _bRole      :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

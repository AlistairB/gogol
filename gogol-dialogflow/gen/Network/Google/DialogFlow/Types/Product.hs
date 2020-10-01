{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DialogFlow.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DialogFlow.Types.Product where

import           Network.Google.DialogFlow.Types.Sum
import           Network.Google.Prelude

-- | The response message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowV3alpha1ExportAgentResponse' smart constructor.
data GoogleCloudDialogflowV3alpha1ExportAgentResponse =
  GoogleCloudDialogflowV3alpha1ExportAgentResponse'
    { _gcdvearAgentURI     :: !(Maybe Text)
    , _gcdvearAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV3alpha1ExportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvearAgentURI'
--
-- * 'gcdvearAgentContent'
googleCloudDialogflowV3alpha1ExportAgentResponse
    :: GoogleCloudDialogflowV3alpha1ExportAgentResponse
googleCloudDialogflowV3alpha1ExportAgentResponse =
  GoogleCloudDialogflowV3alpha1ExportAgentResponse'
    {_gcdvearAgentURI = Nothing, _gcdvearAgentContent = Nothing}


-- | The URI to a file containing the exported agent. This field is populated
-- only if \`agent_uri\` is specified in ExportAgentRequest.
gcdvearAgentURI :: Lens' GoogleCloudDialogflowV3alpha1ExportAgentResponse (Maybe Text)
gcdvearAgentURI
  = lens _gcdvearAgentURI
      (\ s a -> s{_gcdvearAgentURI = a})

-- | Uncompressed raw byte content for agent.
gcdvearAgentContent :: Lens' GoogleCloudDialogflowV3alpha1ExportAgentResponse (Maybe ByteString)
gcdvearAgentContent
  = lens _gcdvearAgentContent
      (\ s a -> s{_gcdvearAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowV3alpha1ExportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV3alpha1ExportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowV3alpha1ExportAgentResponse' <$>
                   (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowV3alpha1ExportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowV3alpha1ExportAgentResponse'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gcdvearAgentURI,
                  ("agentContent" .=) <$> _gcdvearAgentContent])

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). Each \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. You can find out more about this error model and how to work
-- with it in the [API Design
-- Guide](https:\/\/cloud.google.com\/apis\/design\/errors).
--
-- /See:/ 'googleRpcStatus' smart constructor.
data GoogleRpcStatus =
  GoogleRpcStatus'
    { _grsDetails :: !(Maybe [GoogleRpcStatusDetailsItem])
    , _grsCode    :: !(Maybe (Textual Int32))
    , _grsMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsDetails'
--
-- * 'grsCode'
--
-- * 'grsMessage'
googleRpcStatus
    :: GoogleRpcStatus
googleRpcStatus =
  GoogleRpcStatus'
    {_grsDetails = Nothing, _grsCode = Nothing, _grsMessage = Nothing}


-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
grsDetails :: Lens' GoogleRpcStatus [GoogleRpcStatusDetailsItem]
grsDetails
  = lens _grsDetails (\ s a -> s{_grsDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
grsCode :: Lens' GoogleRpcStatus (Maybe Int32)
grsCode
  = lens _grsCode (\ s a -> s{_grsCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
grsMessage :: Lens' GoogleRpcStatus (Maybe Text)
grsMessage
  = lens _grsMessage (\ s a -> s{_grsMessage = a})

instance FromJSON GoogleRpcStatus where
        parseJSON
          = withObject "GoogleRpcStatus"
              (\ o ->
                 GoogleRpcStatus' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON GoogleRpcStatus where
        toJSON GoogleRpcStatus'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _grsDetails,
                  ("code" .=) <$> _grsCode,
                  ("message" .=) <$> _grsMessage])

-- | Rich Business Messaging (RBM) suggested client-side action that the user
-- can choose from the card.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction'
    { _gcdvimrsaText          :: !(Maybe Text)
    , _gcdvimrsaShareLocation :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation)
    , _gcdvimrsaOpenURL       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI)
    , _gcdvimrsaDial          :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial)
    , _gcdvimrsaPostbackData  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrsaText'
--
-- * 'gcdvimrsaShareLocation'
--
-- * 'gcdvimrsaOpenURL'
--
-- * 'gcdvimrsaDial'
--
-- * 'gcdvimrsaPostbackData'
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction'
    { _gcdvimrsaText = Nothing
    , _gcdvimrsaShareLocation = Nothing
    , _gcdvimrsaOpenURL = Nothing
    , _gcdvimrsaDial = Nothing
    , _gcdvimrsaPostbackData = Nothing
    }


-- | Text to display alongside the action.
gcdvimrsaText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction (Maybe Text)
gcdvimrsaText
  = lens _gcdvimrsaText
      (\ s a -> s{_gcdvimrsaText = a})

-- | Suggested client side action: Share user location
gcdvimrsaShareLocation :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation)
gcdvimrsaShareLocation
  = lens _gcdvimrsaShareLocation
      (\ s a -> s{_gcdvimrsaShareLocation = a})

-- | Suggested client side action: Open a URI on device
gcdvimrsaOpenURL :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI)
gcdvimrsaOpenURL
  = lens _gcdvimrsaOpenURL
      (\ s a -> s{_gcdvimrsaOpenURL = a})

-- | Suggested client side action: Dial a phone number
gcdvimrsaDial :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial)
gcdvimrsaDial
  = lens _gcdvimrsaDial
      (\ s a -> s{_gcdvimrsaDial = a})

-- | Opaque payload that the Dialogflow receives in a user event when the
-- user taps the suggested action. This data will be also forwarded to
-- webhook to allow performing custom business logic.
gcdvimrsaPostbackData :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction (Maybe Text)
gcdvimrsaPostbackData
  = lens _gcdvimrsaPostbackData
      (\ s a -> s{_gcdvimrsaPostbackData = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction'
                   <$>
                   (o .:? "text") <*> (o .:? "shareLocation") <*>
                     (o .:? "openUrl")
                     <*> (o .:? "dial")
                     <*> (o .:? "postbackData"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvimrsaText,
                  ("shareLocation" .=) <$> _gcdvimrsaShareLocation,
                  ("openUrl" .=) <$> _gcdvimrsaOpenURL,
                  ("dial" .=) <$> _gcdvimrsaDial,
                  ("postbackData" .=) <$> _gcdvimrsaPostbackData])

-- | Instructs the speech synthesizer how to generate the output audio
-- content.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1OutputAudioConfig' smart constructor.
data GoogleCloudDialogflowCxV3beta1OutputAudioConfig =
  GoogleCloudDialogflowCxV3beta1OutputAudioConfig'
    { _gcdcvoacSampleRateHertz        :: !(Maybe (Textual Int32))
    , _gcdcvoacSynthesizeSpeechConfig :: !(Maybe GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig)
    , _gcdcvoacAudioEncoding          :: !(Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfigAudioEncoding)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1OutputAudioConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvoacSampleRateHertz'
--
-- * 'gcdcvoacSynthesizeSpeechConfig'
--
-- * 'gcdcvoacAudioEncoding'
googleCloudDialogflowCxV3beta1OutputAudioConfig
    :: GoogleCloudDialogflowCxV3beta1OutputAudioConfig
googleCloudDialogflowCxV3beta1OutputAudioConfig =
  GoogleCloudDialogflowCxV3beta1OutputAudioConfig'
    { _gcdcvoacSampleRateHertz = Nothing
    , _gcdcvoacSynthesizeSpeechConfig = Nothing
    , _gcdcvoacAudioEncoding = Nothing
    }


-- | Optional. The synthesis sample rate (in hertz) for this audio. If not
-- provided, then the synthesizer will use the default sample rate based on
-- the audio encoding. If this is different from the voice\'s natural
-- sample rate, then the synthesizer will honor this request by converting
-- to the desired sample rate (which might result in worse audio quality).
gcdcvoacSampleRateHertz :: Lens' GoogleCloudDialogflowCxV3beta1OutputAudioConfig (Maybe Int32)
gcdcvoacSampleRateHertz
  = lens _gcdcvoacSampleRateHertz
      (\ s a -> s{_gcdcvoacSampleRateHertz = a})
      . mapping _Coerce

-- | Optional. Configuration of how speech should be synthesized.
gcdcvoacSynthesizeSpeechConfig :: Lens' GoogleCloudDialogflowCxV3beta1OutputAudioConfig (Maybe GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig)
gcdcvoacSynthesizeSpeechConfig
  = lens _gcdcvoacSynthesizeSpeechConfig
      (\ s a -> s{_gcdcvoacSynthesizeSpeechConfig = a})

-- | Required. Audio encoding of the synthesized audio content.
gcdcvoacAudioEncoding :: Lens' GoogleCloudDialogflowCxV3beta1OutputAudioConfig (Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfigAudioEncoding)
gcdcvoacAudioEncoding
  = lens _gcdcvoacAudioEncoding
      (\ s a -> s{_gcdcvoacAudioEncoding = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1OutputAudioConfig
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1OutputAudioConfig"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1OutputAudioConfig' <$>
                   (o .:? "sampleRateHertz") <*>
                     (o .:? "synthesizeSpeechConfig")
                     <*> (o .:? "audioEncoding"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1OutputAudioConfig
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1OutputAudioConfig'{..}
          = object
              (catMaybes
                 [("sampleRateHertz" .=) <$> _gcdcvoacSampleRateHertz,
                  ("synthesizeSpeechConfig" .=) <$>
                    _gcdcvoacSynthesizeSpeechConfig,
                  ("audioEncoding" .=) <$> _gcdcvoacAudioEncoding])

-- | Represents a single followup intent in the chain.
--
-- /See:/ 'googleCloudDialogflowV2IntentFollowupIntentInfo' smart constructor.
data GoogleCloudDialogflowV2IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2IntentFollowupIntentInfo'
    { _gcdvifiiFollowupIntentName       :: !(Maybe Text)
    , _gcdvifiiParentFollowupIntentName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentFollowupIntentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvifiiFollowupIntentName'
--
-- * 'gcdvifiiParentFollowupIntentName'
googleCloudDialogflowV2IntentFollowupIntentInfo
    :: GoogleCloudDialogflowV2IntentFollowupIntentInfo
googleCloudDialogflowV2IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2IntentFollowupIntentInfo'
    { _gcdvifiiFollowupIntentName = Nothing
    , _gcdvifiiParentFollowupIntentName = Nothing
    }


-- | The unique identifier of the followup intent. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdvifiiFollowupIntentName :: Lens' GoogleCloudDialogflowV2IntentFollowupIntentInfo (Maybe Text)
gcdvifiiFollowupIntentName
  = lens _gcdvifiiFollowupIntentName
      (\ s a -> s{_gcdvifiiFollowupIntentName = a})

-- | The unique identifier of the followup intent\'s parent. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdvifiiParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2IntentFollowupIntentInfo (Maybe Text)
gcdvifiiParentFollowupIntentName
  = lens _gcdvifiiParentFollowupIntentName
      (\ s a -> s{_gcdvifiiParentFollowupIntentName = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentFollowupIntentInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentFollowupIntentInfo"
              (\ o ->
                 GoogleCloudDialogflowV2IntentFollowupIntentInfo' <$>
                   (o .:? "followupIntentName") <*>
                     (o .:? "parentFollowupIntentName"))

instance ToJSON
           GoogleCloudDialogflowV2IntentFollowupIntentInfo
         where
        toJSON
          GoogleCloudDialogflowV2IntentFollowupIntentInfo'{..}
          = object
              (catMaybes
                 [("followupIntentName" .=) <$>
                    _gcdvifiiFollowupIntentName,
                  ("parentFollowupIntentName" .=) <$>
                    _gcdvifiiParentFollowupIntentName])

-- | The collection of simple response candidates. This message in
-- \`QueryResult.fulfillment_messages\` and
-- \`WebhookResponse.fulfillment_messages\` should contain only one
-- \`SimpleResponse\`.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSimpleResponses' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'
    { _gcdvimsrSimpleResponses :: Maybe [GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsrSimpleResponses'
googleCloudDialogflowV2beta1IntentMessageSimpleResponses
    :: GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
googleCloudDialogflowV2beta1IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'
    {_gcdvimsrSimpleResponses = Nothing}


-- | Required. The list of simple responses.
gcdvimsrSimpleResponses :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses [GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse]
gcdvimsrSimpleResponses
  = lens _gcdvimsrSimpleResponses
      (\ s a -> s{_gcdvimsrSimpleResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'
                   <$> (o .:? "simpleResponses" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses'{..}
          = object
              (catMaybes
                 [("simpleResponses" .=) <$>
                    _gcdvimsrSimpleResponses])

-- | The response message for Intents.BatchUpdateIntents.
--
-- /See:/ 'googleCloudDialogflowV2beta1BatchUpdateIntentsResponse' smart constructor.
newtype GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'
    { _gcdvbuirIntents :: Maybe [GoogleCloudDialogflowV2beta1Intent]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbuirIntents'
googleCloudDialogflowV2beta1BatchUpdateIntentsResponse
    :: GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
googleCloudDialogflowV2beta1BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'
    {_gcdvbuirIntents = Nothing}


-- | The collection of updated or created intents.
gcdvbuirIntents :: Lens' GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse [GoogleCloudDialogflowV2beta1Intent]
gcdvbuirIntents
  = lens _gcdvbuirIntents
      (\ s a -> s{_gcdvbuirIntents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'
                   <$> (o .:? "intents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse'{..}
          = object
              (catMaybes [("intents" .=) <$> _gcdvbuirIntents])

-- | A custom platform-specific response.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessagePayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessagePayload =
  GoogleCloudDialogflowV2beta1IntentMessagePayload'
    { _gcdvimpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessagePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimpAddtional'
googleCloudDialogflowV2beta1IntentMessagePayload
    :: HashMap Text JSONValue -- ^ 'gcdvimpAddtional'
    -> GoogleCloudDialogflowV2beta1IntentMessagePayload
googleCloudDialogflowV2beta1IntentMessagePayload pGcdvimpAddtional_ =
  GoogleCloudDialogflowV2beta1IntentMessagePayload'
    {_gcdvimpAddtional = _Coerce # pGcdvimpAddtional_}


-- | Properties of the object.
gcdvimpAddtional :: Lens' GoogleCloudDialogflowV2beta1IntentMessagePayload (HashMap Text JSONValue)
gcdvimpAddtional
  = lens _gcdvimpAddtional
      (\ s a -> s{_gcdvimpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessagePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessagePayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessagePayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessagePayload
         where
        toJSON = toJSON . _gcdvimpAddtional

-- | Indicates that the conversation should be handed off to a live agent.
-- Dialogflow only uses this to determine which conversations were handed
-- off to a human agent for measurement purposes. What else to do with this
-- signal is up to you and your handoff procedures. You may set this, for
-- example: * In the entry_fulfillment of a Page if entering the page
-- indicates something went extremely wrong in the conversation. * In a
-- webhook response when you determine that the customer issue can only be
-- handled by a human.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff =
  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff'
    { _gcdcvrmlahMetadata :: Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmlahMetadata'
googleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
    :: GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
googleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff =
  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff'
    {_gcdcvrmlahMetadata = Nothing}


-- | Custom metadata for your handoff procedure. Dialogflow doesn\'t impose
-- any structure on this.
gcdcvrmlahMetadata :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata)
gcdcvrmlahMetadata
  = lens _gcdcvrmlahMetadata
      (\ s a -> s{_gcdcvrmlahMetadata = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff'
                   <$> (o .:? "metadata"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff'{..}
          = object
              (catMaybes [("metadata" .=) <$> _gcdcvrmlahMetadata])

-- | The request message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowV2WebhookRequest' smart constructor.
data GoogleCloudDialogflowV2WebhookRequest =
  GoogleCloudDialogflowV2WebhookRequest'
    { _gcdvwrOriginalDetectIntentRequest :: !(Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequest)
    , _gcdvwrResponseId                  :: !(Maybe Text)
    , _gcdvwrQueryResult                 :: !(Maybe GoogleCloudDialogflowV2QueryResult)
    , _gcdvwrSession                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2WebhookRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrOriginalDetectIntentRequest'
--
-- * 'gcdvwrResponseId'
--
-- * 'gcdvwrQueryResult'
--
-- * 'gcdvwrSession'
googleCloudDialogflowV2WebhookRequest
    :: GoogleCloudDialogflowV2WebhookRequest
googleCloudDialogflowV2WebhookRequest =
  GoogleCloudDialogflowV2WebhookRequest'
    { _gcdvwrOriginalDetectIntentRequest = Nothing
    , _gcdvwrResponseId = Nothing
    , _gcdvwrQueryResult = Nothing
    , _gcdvwrSession = Nothing
    }


-- | Optional. The contents of the original request that was passed to
-- \`[Streaming]DetectIntent\` call.
gcdvwrOriginalDetectIntentRequest :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequest)
gcdvwrOriginalDetectIntentRequest
  = lens _gcdvwrOriginalDetectIntentRequest
      (\ s a -> s{_gcdvwrOriginalDetectIntentRequest = a})

-- | The unique identifier of the response. Contains the same value as
-- \`[Streaming]DetectIntentResponse.response_id\`.
gcdvwrResponseId :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe Text)
gcdvwrResponseId
  = lens _gcdvwrResponseId
      (\ s a -> s{_gcdvwrResponseId = a})

-- | The result of the conversational query or event processing. Contains the
-- same value as \`[Streaming]DetectIntentResponse.query_result\`.
gcdvwrQueryResult :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe GoogleCloudDialogflowV2QueryResult)
gcdvwrQueryResult
  = lens _gcdvwrQueryResult
      (\ s a -> s{_gcdvwrQueryResult = a})

-- | The unique identifier of detectIntent request session. Can be used to
-- identify end-user inside webhook implementation. Format:
-- \`projects\/\/agent\/sessions\/\`, or
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\`.
gcdvwrSession :: Lens' GoogleCloudDialogflowV2WebhookRequest (Maybe Text)
gcdvwrSession
  = lens _gcdvwrSession
      (\ s a -> s{_gcdvwrSession = a})

instance FromJSON
           GoogleCloudDialogflowV2WebhookRequest
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2WebhookRequest"
              (\ o ->
                 GoogleCloudDialogflowV2WebhookRequest' <$>
                   (o .:? "originalDetectIntentRequest") <*>
                     (o .:? "responseId")
                     <*> (o .:? "queryResult")
                     <*> (o .:? "session"))

instance ToJSON GoogleCloudDialogflowV2WebhookRequest
         where
        toJSON GoogleCloudDialogflowV2WebhookRequest'{..}
          = object
              (catMaybes
                 [("originalDetectIntentRequest" .=) <$>
                    _gcdvwrOriginalDetectIntentRequest,
                  ("responseId" .=) <$> _gcdvwrResponseId,
                  ("queryResult" .=) <$> _gcdvwrQueryResult,
                  ("session" .=) <$> _gcdvwrSession])

-- | An item in the carousel.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCarouselSelectItem' smart constructor.
data GoogleCloudDialogflowV2IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'
    { _gcdvimcsiImage       :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimcsiTitle       :: !(Maybe Text)
    , _gcdvimcsiDescription :: !(Maybe Text)
    , _gcdvimcsiInfo        :: !(Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCarouselSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcsiImage'
--
-- * 'gcdvimcsiTitle'
--
-- * 'gcdvimcsiDescription'
--
-- * 'gcdvimcsiInfo'
googleCloudDialogflowV2IntentMessageCarouselSelectItem
    :: GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
googleCloudDialogflowV2IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'
    { _gcdvimcsiImage = Nothing
    , _gcdvimcsiTitle = Nothing
    , _gcdvimcsiDescription = Nothing
    , _gcdvimcsiInfo = Nothing
    }


-- | Optional. The image to display.
gcdvimcsiImage :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimcsiImage
  = lens _gcdvimcsiImage
      (\ s a -> s{_gcdvimcsiImage = a})

-- | Required. Title of the carousel item.
gcdvimcsiTitle :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe Text)
gcdvimcsiTitle
  = lens _gcdvimcsiTitle
      (\ s a -> s{_gcdvimcsiTitle = a})

-- | Optional. The body text of the card.
gcdvimcsiDescription :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe Text)
gcdvimcsiDescription
  = lens _gcdvimcsiDescription
      (\ s a -> s{_gcdvimcsiDescription = a})

-- | Required. Additional info about the option item.
gcdvimcsiInfo :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
gcdvimcsiInfo
  = lens _gcdvimcsiInfo
      (\ s a -> s{_gcdvimcsiInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCarouselSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageCarouselSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimcsiImage,
                  ("title" .=) <$> _gcdvimcsiTitle,
                  ("description" .=) <$> _gcdvimcsiDescription,
                  ("info" .=) <$> _gcdvimcsiInfo])

-- | Represents the natural language text to be processed.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1TextInput' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1TextInput =
  GoogleCloudDialogflowCxV3beta1TextInput'
    { _gcdcvtiText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1TextInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvtiText'
googleCloudDialogflowCxV3beta1TextInput
    :: GoogleCloudDialogflowCxV3beta1TextInput
googleCloudDialogflowCxV3beta1TextInput =
  GoogleCloudDialogflowCxV3beta1TextInput' {_gcdcvtiText = Nothing}


-- | Required. The UTF-8 encoded natural language text to be processed. Text
-- length must not exceed 256 characters.
gcdcvtiText :: Lens' GoogleCloudDialogflowCxV3beta1TextInput (Maybe Text)
gcdcvtiText
  = lens _gcdcvtiText (\ s a -> s{_gcdcvtiText = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1TextInput
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1TextInput"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1TextInput' <$>
                   (o .:? "text"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1TextInput
         where
        toJSON GoogleCloudDialogflowCxV3beta1TextInput'{..}
          = object (catMaybes [("text" .=) <$> _gcdcvtiText])

-- | Browsing carousel tile
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem' smart constructor.
data GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem'
    { _gcdvimbccbcciImage         :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimbccbcciOpenURIAction :: !(Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction)
    , _gcdvimbccbcciFooter        :: !(Maybe Text)
    , _gcdvimbccbcciTitle         :: !(Maybe Text)
    , _gcdvimbccbcciDescription   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbccbcciImage'
--
-- * 'gcdvimbccbcciOpenURIAction'
--
-- * 'gcdvimbccbcciFooter'
--
-- * 'gcdvimbccbcciTitle'
--
-- * 'gcdvimbccbcciDescription'
googleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
    :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
googleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem'
    { _gcdvimbccbcciImage = Nothing
    , _gcdvimbccbcciOpenURIAction = Nothing
    , _gcdvimbccbcciFooter = Nothing
    , _gcdvimbccbcciTitle = Nothing
    , _gcdvimbccbcciDescription = Nothing
    }


-- | Optional. Hero image for the carousel item.
gcdvimbccbcciImage :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimbccbcciImage
  = lens _gcdvimbccbcciImage
      (\ s a -> s{_gcdvimbccbcciImage = a})

-- | Required. Action to present to the user.
gcdvimbccbcciOpenURIAction :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction)
gcdvimbccbcciOpenURIAction
  = lens _gcdvimbccbcciOpenURIAction
      (\ s a -> s{_gcdvimbccbcciOpenURIAction = a})

-- | Optional. Text that appears at the bottom of the Browse Carousel Card.
-- Maximum of one line of text.
gcdvimbccbcciFooter :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe Text)
gcdvimbccbcciFooter
  = lens _gcdvimbccbcciFooter
      (\ s a -> s{_gcdvimbccbcciFooter = a})

-- | Required. Title of the carousel item. Maximum of two lines of text.
gcdvimbccbcciTitle :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe Text)
gcdvimbccbcciTitle
  = lens _gcdvimbccbcciTitle
      (\ s a -> s{_gcdvimbccbcciTitle = a})

-- | Optional. Description of the carousel item. Maximum of four lines of
-- text.
gcdvimbccbcciDescription :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe Text)
gcdvimbccbcciDescription
  = lens _gcdvimbccbcciDescription
      (\ s a -> s{_gcdvimbccbcciDescription = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem'
                   <$>
                   (o .:? "image") <*> (o .:? "openUriAction") <*>
                     (o .:? "footer")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimbccbcciImage,
                  ("openUriAction" .=) <$> _gcdvimbccbcciOpenURIAction,
                  ("footer" .=) <$> _gcdvimbccbcciFooter,
                  ("title" .=) <$> _gcdvimbccbcciTitle,
                  ("description" .=) <$> _gcdvimbccbcciDescription])

-- | Events allow for matching intents by event name instead of the natural
-- language input. For instance, input \`\` can trigger a personalized
-- welcome response. The parameter \`name\` may be used by the agent in the
-- response: \`\"Hello #welcome_event.name! What can I do for you
-- today?\"\`.
--
-- /See:/ 'googleCloudDialogflowV2EventInput' smart constructor.
data GoogleCloudDialogflowV2EventInput =
  GoogleCloudDialogflowV2EventInput'
    { _gcdveiLanguageCode :: !(Maybe Text)
    , _gcdveiName         :: !(Maybe Text)
    , _gcdveiParameters   :: !(Maybe GoogleCloudDialogflowV2EventInputParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2EventInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveiLanguageCode'
--
-- * 'gcdveiName'
--
-- * 'gcdveiParameters'
googleCloudDialogflowV2EventInput
    :: GoogleCloudDialogflowV2EventInput
googleCloudDialogflowV2EventInput =
  GoogleCloudDialogflowV2EventInput'
    { _gcdveiLanguageCode = Nothing
    , _gcdveiName = Nothing
    , _gcdveiParameters = Nothing
    }


-- | Required. The language of this query. See [Language
-- Support](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/language)
-- for a list of the currently supported language codes. Note that queries
-- in the same session do not necessarily need to specify the same
-- language.
gcdveiLanguageCode :: Lens' GoogleCloudDialogflowV2EventInput (Maybe Text)
gcdveiLanguageCode
  = lens _gcdveiLanguageCode
      (\ s a -> s{_gcdveiLanguageCode = a})

-- | Required. The unique identifier of the event.
gcdveiName :: Lens' GoogleCloudDialogflowV2EventInput (Maybe Text)
gcdveiName
  = lens _gcdveiName (\ s a -> s{_gcdveiName = a})

-- | The collection of parameters associated with the event. Depending on
-- your protocol or client library language, this is a map, associative
-- array, symbol table, dictionary, or JSON object composed of a collection
-- of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value:
-- parameter name - MapValue type: - If parameter\'s entity type is a
-- composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
gcdveiParameters :: Lens' GoogleCloudDialogflowV2EventInput (Maybe GoogleCloudDialogflowV2EventInputParameters)
gcdveiParameters
  = lens _gcdveiParameters
      (\ s a -> s{_gcdveiParameters = a})

instance FromJSON GoogleCloudDialogflowV2EventInput
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2EventInput"
              (\ o ->
                 GoogleCloudDialogflowV2EventInput' <$>
                   (o .:? "languageCode") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON GoogleCloudDialogflowV2EventInput
         where
        toJSON GoogleCloudDialogflowV2EventInput'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdveiLanguageCode,
                  ("name" .=) <$> _gcdveiName,
                  ("parameters" .=) <$> _gcdveiParameters])

-- | The simple response message containing speech or text.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSimpleResponse' smart constructor.
data GoogleCloudDialogflowV2IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2IntentMessageSimpleResponse'
    { _gcdvimsrDisplayText  :: !(Maybe Text)
    , _gcdvimsrSsml         :: !(Maybe Text)
    , _gcdvimsrTextToSpeech :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSimpleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsrDisplayText'
--
-- * 'gcdvimsrSsml'
--
-- * 'gcdvimsrTextToSpeech'
googleCloudDialogflowV2IntentMessageSimpleResponse
    :: GoogleCloudDialogflowV2IntentMessageSimpleResponse
googleCloudDialogflowV2IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2IntentMessageSimpleResponse'
    { _gcdvimsrDisplayText = Nothing
    , _gcdvimsrSsml = Nothing
    , _gcdvimsrTextToSpeech = Nothing
    }


-- | Optional. The text to display.
gcdvimsrDisplayText :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponse (Maybe Text)
gcdvimsrDisplayText
  = lens _gcdvimsrDisplayText
      (\ s a -> s{_gcdvimsrDisplayText = a})

-- | One of text_to_speech or ssml must be provided. Structured spoken
-- response to the user in the SSML format. Mutually exclusive with
-- text_to_speech.
gcdvimsrSsml :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponse (Maybe Text)
gcdvimsrSsml
  = lens _gcdvimsrSsml (\ s a -> s{_gcdvimsrSsml = a})

-- | One of text_to_speech or ssml must be provided. The plain text of the
-- speech output. Mutually exclusive with ssml.
gcdvimsrTextToSpeech :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponse (Maybe Text)
gcdvimsrTextToSpeech
  = lens _gcdvimsrTextToSpeech
      (\ s a -> s{_gcdvimsrTextToSpeech = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSimpleResponse"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSimpleResponse'
                   <$>
                   (o .:? "displayText") <*> (o .:? "ssml") <*>
                     (o .:? "textToSpeech"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponse
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSimpleResponse'{..}
          = object
              (catMaybes
                 [("displayText" .=) <$> _gcdvimsrDisplayText,
                  ("ssml" .=) <$> _gcdvimsrSsml,
                  ("textToSpeech" .=) <$> _gcdvimsrTextToSpeech])

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
--
-- /See:/ 'googleLongrunningOperationMetadata' smart constructor.
newtype GoogleLongrunningOperationMetadata =
  GoogleLongrunningOperationMetadata'
    { _glomAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glomAddtional'
googleLongrunningOperationMetadata
    :: HashMap Text JSONValue -- ^ 'glomAddtional'
    -> GoogleLongrunningOperationMetadata
googleLongrunningOperationMetadata pGlomAddtional_ =
  GoogleLongrunningOperationMetadata'
    {_glomAddtional = _Coerce # pGlomAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
glomAddtional :: Lens' GoogleLongrunningOperationMetadata (HashMap Text JSONValue)
glomAddtional
  = lens _glomAddtional
      (\ s a -> s{_glomAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationMetadata
         where
        parseJSON
          = withObject "GoogleLongrunningOperationMetadata"
              (\ o ->
                 GoogleLongrunningOperationMetadata' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationMetadata
         where
        toJSON = toJSON . _glomAddtional

-- | The media content card for Actions on Google.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageMediaContent' smart constructor.
data GoogleCloudDialogflowV2IntentMessageMediaContent =
  GoogleCloudDialogflowV2IntentMessageMediaContent'
    { _gcdvimmcMediaType    :: !(Maybe GoogleCloudDialogflowV2IntentMessageMediaContentMediaType)
    , _gcdvimmcMediaObjects :: !(Maybe [GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageMediaContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimmcMediaType'
--
-- * 'gcdvimmcMediaObjects'
googleCloudDialogflowV2IntentMessageMediaContent
    :: GoogleCloudDialogflowV2IntentMessageMediaContent
googleCloudDialogflowV2IntentMessageMediaContent =
  GoogleCloudDialogflowV2IntentMessageMediaContent'
    {_gcdvimmcMediaType = Nothing, _gcdvimmcMediaObjects = Nothing}


-- | Optional. What type of media is the content (ie \"audio\").
gcdvimmcMediaType :: Lens' GoogleCloudDialogflowV2IntentMessageMediaContent (Maybe GoogleCloudDialogflowV2IntentMessageMediaContentMediaType)
gcdvimmcMediaType
  = lens _gcdvimmcMediaType
      (\ s a -> s{_gcdvimmcMediaType = a})

-- | Required. List of media objects.
gcdvimmcMediaObjects :: Lens' GoogleCloudDialogflowV2IntentMessageMediaContent [GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject]
gcdvimmcMediaObjects
  = lens _gcdvimmcMediaObjects
      (\ s a -> s{_gcdvimmcMediaObjects = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageMediaContent
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageMediaContent"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageMediaContent' <$>
                   (o .:? "mediaType") <*>
                     (o .:? "mediaObjects" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageMediaContent
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageMediaContent'{..}
          = object
              (catMaybes
                 [("mediaType" .=) <$> _gcdvimmcMediaType,
                  ("mediaObjects" .=) <$> _gcdvimmcMediaObjects])

-- | Represents a part of a message possibly annotated with an entity. The
-- part can be an entity or purely a part of the message between two
-- entities or message start\/end.
--
-- /See:/ 'googleCloudDialogflowV2AnnotatedMessagePart' smart constructor.
data GoogleCloudDialogflowV2AnnotatedMessagePart =
  GoogleCloudDialogflowV2AnnotatedMessagePart'
    { _gcdvampText           :: !(Maybe Text)
    , _gcdvampEntityType     :: !(Maybe Text)
    , _gcdvampFormattedValue :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2AnnotatedMessagePart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvampText'
--
-- * 'gcdvampEntityType'
--
-- * 'gcdvampFormattedValue'
googleCloudDialogflowV2AnnotatedMessagePart
    :: GoogleCloudDialogflowV2AnnotatedMessagePart
googleCloudDialogflowV2AnnotatedMessagePart =
  GoogleCloudDialogflowV2AnnotatedMessagePart'
    { _gcdvampText = Nothing
    , _gcdvampEntityType = Nothing
    , _gcdvampFormattedValue = Nothing
    }


-- | A part of a message possibly annotated with an entity.
gcdvampText :: Lens' GoogleCloudDialogflowV2AnnotatedMessagePart (Maybe Text)
gcdvampText
  = lens _gcdvampText (\ s a -> s{_gcdvampText = a})

-- | The [Dialogflow system entity
-- type](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/system-entities)
-- of this message part. If this is empty, Dialogflow could not annotate
-- the phrase part with a system entity.
gcdvampEntityType :: Lens' GoogleCloudDialogflowV2AnnotatedMessagePart (Maybe Text)
gcdvampEntityType
  = lens _gcdvampEntityType
      (\ s a -> s{_gcdvampEntityType = a})

-- | The [Dialogflow system entity formatted value
-- ](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/system-entities)
-- of this message part. For example for a system entity of type
-- \`\'sys.unit-currency\`, this may contain: { \"amount\": 5,
-- \"currency\": \"USD\" }
gcdvampFormattedValue :: Lens' GoogleCloudDialogflowV2AnnotatedMessagePart (Maybe JSONValue)
gcdvampFormattedValue
  = lens _gcdvampFormattedValue
      (\ s a -> s{_gcdvampFormattedValue = a})

instance FromJSON
           GoogleCloudDialogflowV2AnnotatedMessagePart
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2AnnotatedMessagePart"
              (\ o ->
                 GoogleCloudDialogflowV2AnnotatedMessagePart' <$>
                   (o .:? "text") <*> (o .:? "entityType") <*>
                     (o .:? "formattedValue"))

instance ToJSON
           GoogleCloudDialogflowV2AnnotatedMessagePart
         where
        toJSON
          GoogleCloudDialogflowV2AnnotatedMessagePart'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvampText,
                  ("entityType" .=) <$> _gcdvampEntityType,
                  ("formattedValue" .=) <$> _gcdvampFormattedValue])

-- | Represents a notification sent to Pub\/Sub subscribers for conversation
-- lifecycle events.
--
-- /See:/ 'googleCloudDialogflowV2ConversationEvent' smart constructor.
data GoogleCloudDialogflowV2ConversationEvent =
  GoogleCloudDialogflowV2ConversationEvent'
    { _gcdvceErrorStatus       :: !(Maybe GoogleRpcStatus)
    , _gcdvceConversation      :: !(Maybe Text)
    , _gcdvceNewMessagePayload :: !(Maybe GoogleCloudDialogflowV2Message)
    , _gcdvceType              :: !(Maybe GoogleCloudDialogflowV2ConversationEventType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2ConversationEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvceErrorStatus'
--
-- * 'gcdvceConversation'
--
-- * 'gcdvceNewMessagePayload'
--
-- * 'gcdvceType'
googleCloudDialogflowV2ConversationEvent
    :: GoogleCloudDialogflowV2ConversationEvent
googleCloudDialogflowV2ConversationEvent =
  GoogleCloudDialogflowV2ConversationEvent'
    { _gcdvceErrorStatus = Nothing
    , _gcdvceConversation = Nothing
    , _gcdvceNewMessagePayload = Nothing
    , _gcdvceType = Nothing
    }


-- | More detailed information about an error. Only set for type
-- UNRECOVERABLE_ERROR_IN_PHONE_CALL.
gcdvceErrorStatus :: Lens' GoogleCloudDialogflowV2ConversationEvent (Maybe GoogleRpcStatus)
gcdvceErrorStatus
  = lens _gcdvceErrorStatus
      (\ s a -> s{_gcdvceErrorStatus = a})

-- | The unique identifier of the conversation this notification refers to.
-- Format: \`projects\/\/conversations\/\`.
gcdvceConversation :: Lens' GoogleCloudDialogflowV2ConversationEvent (Maybe Text)
gcdvceConversation
  = lens _gcdvceConversation
      (\ s a -> s{_gcdvceConversation = a})

-- | Payload of NEW_MESSAGE event.
gcdvceNewMessagePayload :: Lens' GoogleCloudDialogflowV2ConversationEvent (Maybe GoogleCloudDialogflowV2Message)
gcdvceNewMessagePayload
  = lens _gcdvceNewMessagePayload
      (\ s a -> s{_gcdvceNewMessagePayload = a})

-- | The type of the event that this notification refers to.
gcdvceType :: Lens' GoogleCloudDialogflowV2ConversationEvent (Maybe GoogleCloudDialogflowV2ConversationEventType)
gcdvceType
  = lens _gcdvceType (\ s a -> s{_gcdvceType = a})

instance FromJSON
           GoogleCloudDialogflowV2ConversationEvent
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ConversationEvent"
              (\ o ->
                 GoogleCloudDialogflowV2ConversationEvent' <$>
                   (o .:? "errorStatus") <*> (o .:? "conversation") <*>
                     (o .:? "newMessagePayload")
                     <*> (o .:? "type"))

instance ToJSON
           GoogleCloudDialogflowV2ConversationEvent
         where
        toJSON GoogleCloudDialogflowV2ConversationEvent'{..}
          = object
              (catMaybes
                 [("errorStatus" .=) <$> _gcdvceErrorStatus,
                  ("conversation" .=) <$> _gcdvceConversation,
                  ("newMessagePayload" .=) <$>
                    _gcdvceNewMessagePayload,
                  ("type" .=) <$> _gcdvceType])

-- | Represents the natural speech audio to be processed.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1AudioInput' smart constructor.
data GoogleCloudDialogflowCxV3beta1AudioInput =
  GoogleCloudDialogflowCxV3beta1AudioInput'
    { _gcdcvaiConfig :: !(Maybe GoogleCloudDialogflowCxV3beta1InputAudioConfig)
    , _gcdcvaiAudio  :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1AudioInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvaiConfig'
--
-- * 'gcdcvaiAudio'
googleCloudDialogflowCxV3beta1AudioInput
    :: GoogleCloudDialogflowCxV3beta1AudioInput
googleCloudDialogflowCxV3beta1AudioInput =
  GoogleCloudDialogflowCxV3beta1AudioInput'
    {_gcdcvaiConfig = Nothing, _gcdcvaiAudio = Nothing}


-- | Required. Instructs the speech recognizer how to process the speech
-- audio.
gcdcvaiConfig :: Lens' GoogleCloudDialogflowCxV3beta1AudioInput (Maybe GoogleCloudDialogflowCxV3beta1InputAudioConfig)
gcdcvaiConfig
  = lens _gcdcvaiConfig
      (\ s a -> s{_gcdcvaiConfig = a})

-- | The natural language speech audio to be processed. A single request can
-- contain up to 1 minute of speech audio data. The transcribed text cannot
-- contain more than 256 bytes. For non-streaming audio detect intent, both
-- \`config\` and \`audio\` must be provided. For streaming audio detect
-- intent, \`config\` must be provided in the first request and \`audio\`
-- must be provided in all following requests.
gcdcvaiAudio :: Lens' GoogleCloudDialogflowCxV3beta1AudioInput (Maybe ByteString)
gcdcvaiAudio
  = lens _gcdcvaiAudio (\ s a -> s{_gcdcvaiAudio = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowCxV3beta1AudioInput
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1AudioInput"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1AudioInput' <$>
                   (o .:? "config") <*> (o .:? "audio"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1AudioInput
         where
        toJSON GoogleCloudDialogflowCxV3beta1AudioInput'{..}
          = object
              (catMaybes
                 [("config" .=) <$> _gcdcvaiConfig,
                  ("audio" .=) <$> _gcdcvaiAudio])

-- | Represents a response message that can be returned by a conversational
-- agent. Response messages are also used for output audio synthesis. The
-- approach is as follows: * If at least one OutputAudioText response is
-- present, then all OutputAudioText responses are linearly concatenated,
-- and the result is used for output audio synthesis. * If the
-- OutputAudioText responses are a mixture of text and SSML, then the
-- concatenated result is treated as SSML; otherwise, the result is treated
-- as either text or SSML as appropriate. The agent designer should ideally
-- use either text or SSML consistently throughout the bot design. *
-- Otherwise, all Text responses are linearly concatenated, and the result
-- is used for output audio synthesis. This approach allows for more
-- sophisticated user experience scenarios, where the text displayed to the
-- user may differ from what is heard.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessage' smart constructor.
data GoogleCloudDialogflowCxV3beta1ResponseMessage =
  GoogleCloudDialogflowCxV3beta1ResponseMessage'
    { _gcdcvrmOutputAudioText     :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText)
    , _gcdcvrmPlayAudio           :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio)
    , _gcdcvrmText                :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageText)
    , _gcdcvrmLiveAgentHandoff    :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff)
    , _gcdcvrmConversationSuccess :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess)
    , _gcdcvrmPayload             :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessagePayload)
    , _gcdcvrmEndInteraction      :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction)
    , _gcdcvrmMixedAudio          :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmOutputAudioText'
--
-- * 'gcdcvrmPlayAudio'
--
-- * 'gcdcvrmText'
--
-- * 'gcdcvrmLiveAgentHandoff'
--
-- * 'gcdcvrmConversationSuccess'
--
-- * 'gcdcvrmPayload'
--
-- * 'gcdcvrmEndInteraction'
--
-- * 'gcdcvrmMixedAudio'
googleCloudDialogflowCxV3beta1ResponseMessage
    :: GoogleCloudDialogflowCxV3beta1ResponseMessage
googleCloudDialogflowCxV3beta1ResponseMessage =
  GoogleCloudDialogflowCxV3beta1ResponseMessage'
    { _gcdcvrmOutputAudioText = Nothing
    , _gcdcvrmPlayAudio = Nothing
    , _gcdcvrmText = Nothing
    , _gcdcvrmLiveAgentHandoff = Nothing
    , _gcdcvrmConversationSuccess = Nothing
    , _gcdcvrmPayload = Nothing
    , _gcdcvrmEndInteraction = Nothing
    , _gcdcvrmMixedAudio = Nothing
    }


-- | A text or ssml response that is preferentially used for TTS output audio
-- synthesis, as described in the comment on the ResponseMessage message.
gcdcvrmOutputAudioText :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText)
gcdcvrmOutputAudioText
  = lens _gcdcvrmOutputAudioText
      (\ s a -> s{_gcdcvrmOutputAudioText = a})

-- | Signal that the client should play an audio clip hosted at a
-- client-specific URI. Dialogflow uses this to construct mixed_audio.
-- However, Dialogflow itself does not try to read or process the URI in
-- any way.
gcdcvrmPlayAudio :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio)
gcdcvrmPlayAudio
  = lens _gcdcvrmPlayAudio
      (\ s a -> s{_gcdcvrmPlayAudio = a})

-- | Returns a text response.
gcdcvrmText :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageText)
gcdcvrmText
  = lens _gcdcvrmText (\ s a -> s{_gcdcvrmText = a})

-- | Hands off conversation to a human agent.
gcdcvrmLiveAgentHandoff :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff)
gcdcvrmLiveAgentHandoff
  = lens _gcdcvrmLiveAgentHandoff
      (\ s a -> s{_gcdcvrmLiveAgentHandoff = a})

-- | Indicates that the conversation succeeded.
gcdcvrmConversationSuccess :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess)
gcdcvrmConversationSuccess
  = lens _gcdcvrmConversationSuccess
      (\ s a -> s{_gcdcvrmConversationSuccess = a})

-- | Returns a response containing a custom, platform-specific payload.
gcdcvrmPayload :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessagePayload)
gcdcvrmPayload
  = lens _gcdcvrmPayload
      (\ s a -> s{_gcdcvrmPayload = a})

-- | Output only. A signal that indicates the interaction with the Dialogflow
-- agent has ended. This message is generated by Dialogflow only when the
-- conversation reaches \`END_SESSION\` or \`END_PAGE\` page. It is not
-- supposed to be defined by the user. It\'s guaranteed that there is at
-- most one such message in each response.
gcdcvrmEndInteraction :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction)
gcdcvrmEndInteraction
  = lens _gcdcvrmEndInteraction
      (\ s a -> s{_gcdcvrmEndInteraction = a})

-- | Output only. An audio response message composed of both the synthesized
-- Dialogflow agent responses and responses defined via play_audio. This
-- message is generated by Dialogflow only and not supposed to be defined
-- by the user.
gcdcvrmMixedAudio :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessage (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio)
gcdcvrmMixedAudio
  = lens _gcdcvrmMixedAudio
      (\ s a -> s{_gcdcvrmMixedAudio = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessage
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessage"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessage' <$>
                   (o .:? "outputAudioText") <*> (o .:? "playAudio") <*>
                     (o .:? "text")
                     <*> (o .:? "liveAgentHandoff")
                     <*> (o .:? "conversationSuccess")
                     <*> (o .:? "payload")
                     <*> (o .:? "endInteraction")
                     <*> (o .:? "mixedAudio"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessage
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessage'{..}
          = object
              (catMaybes
                 [("outputAudioText" .=) <$> _gcdcvrmOutputAudioText,
                  ("playAudio" .=) <$> _gcdcvrmPlayAudio,
                  ("text" .=) <$> _gcdcvrmText,
                  ("liveAgentHandoff" .=) <$> _gcdcvrmLiveAgentHandoff,
                  ("conversationSuccess" .=) <$>
                    _gcdcvrmConversationSuccess,
                  ("payload" .=) <$> _gcdcvrmPayload,
                  ("endInteraction" .=) <$> _gcdcvrmEndInteraction,
                  ("mixedAudio" .=) <$> _gcdcvrmMixedAudio])

-- | Represents an example that the agent is trained on.
--
-- /See:/ 'googleCloudDialogflowV2IntentTrainingPhrase' smart constructor.
data GoogleCloudDialogflowV2IntentTrainingPhrase =
  GoogleCloudDialogflowV2IntentTrainingPhrase'
    { _gcdvitpParts           :: !(Maybe [GoogleCloudDialogflowV2IntentTrainingPhrasePart])
    , _gcdvitpName            :: !(Maybe Text)
    , _gcdvitpTimesAddedCount :: !(Maybe (Textual Int32))
    , _gcdvitpType            :: !(Maybe GoogleCloudDialogflowV2IntentTrainingPhraseType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentTrainingPhrase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvitpParts'
--
-- * 'gcdvitpName'
--
-- * 'gcdvitpTimesAddedCount'
--
-- * 'gcdvitpType'
googleCloudDialogflowV2IntentTrainingPhrase
    :: GoogleCloudDialogflowV2IntentTrainingPhrase
googleCloudDialogflowV2IntentTrainingPhrase =
  GoogleCloudDialogflowV2IntentTrainingPhrase'
    { _gcdvitpParts = Nothing
    , _gcdvitpName = Nothing
    , _gcdvitpTimesAddedCount = Nothing
    , _gcdvitpType = Nothing
    }


-- | Required. The ordered list of training phrase parts. The parts are
-- concatenated in order to form the training phrase. Note: The API does
-- not automatically annotate training phrases like the Dialogflow Console
-- does. Note: Do not forget to include whitespace at part boundaries, so
-- the training phrase is well formatted when the parts are concatenated.
-- If the training phrase does not need to be annotated with parameters,
-- you just need a single part with only the Part.text field set. If you
-- want to annotate the training phrase, you must create multiple parts,
-- where the fields of each part are populated in one of two ways: -
-- \`Part.text\` is set to a part of the phrase that has no parameters. -
-- \`Part.text\` is set to a part of the phrase that you want to annotate,
-- and the \`entity_type\`, \`alias\`, and \`user_defined\` fields are all
-- set.
gcdvitpParts :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase [GoogleCloudDialogflowV2IntentTrainingPhrasePart]
gcdvitpParts
  = lens _gcdvitpParts (\ s a -> s{_gcdvitpParts = a})
      . _Default
      . _Coerce

-- | Output only. The unique identifier of this training phrase.
gcdvitpName :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase (Maybe Text)
gcdvitpName
  = lens _gcdvitpName (\ s a -> s{_gcdvitpName = a})

-- | Optional. Indicates how many times this example was added to the intent.
-- Each time a developer adds an existing sample by editing an intent or
-- training, this counter is increased.
gcdvitpTimesAddedCount :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase (Maybe Int32)
gcdvitpTimesAddedCount
  = lens _gcdvitpTimesAddedCount
      (\ s a -> s{_gcdvitpTimesAddedCount = a})
      . mapping _Coerce

-- | Required. The type of the training phrase.
gcdvitpType :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrase (Maybe GoogleCloudDialogflowV2IntentTrainingPhraseType)
gcdvitpType
  = lens _gcdvitpType (\ s a -> s{_gcdvitpType = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentTrainingPhrase
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentTrainingPhrase"
              (\ o ->
                 GoogleCloudDialogflowV2IntentTrainingPhrase' <$>
                   (o .:? "parts" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "timesAddedCount")
                     <*> (o .:? "type"))

instance ToJSON
           GoogleCloudDialogflowV2IntentTrainingPhrase
         where
        toJSON
          GoogleCloudDialogflowV2IntentTrainingPhrase'{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _gcdvitpParts,
                  ("name" .=) <$> _gcdvitpName,
                  ("timesAddedCount" .=) <$> _gcdvitpTimesAddedCount,
                  ("type" .=) <$> _gcdvitpType])

-- | An **entity entry** for an associated entity type. Next Id = 8
--
-- /See:/ 'googleCloudDialogflowCxV3beta1EntityTypeEntity' smart constructor.
data GoogleCloudDialogflowCxV3beta1EntityTypeEntity =
  GoogleCloudDialogflowCxV3beta1EntityTypeEntity'
    { _gcdcveteValue    :: !(Maybe Text)
    , _gcdcveteSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1EntityTypeEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcveteValue'
--
-- * 'gcdcveteSynonyms'
googleCloudDialogflowCxV3beta1EntityTypeEntity
    :: GoogleCloudDialogflowCxV3beta1EntityTypeEntity
googleCloudDialogflowCxV3beta1EntityTypeEntity =
  GoogleCloudDialogflowCxV3beta1EntityTypeEntity'
    {_gcdcveteValue = Nothing, _gcdcveteSynonyms = Nothing}


-- | Required. The primary value associated with this entity entry. For
-- example, if the entity type is *vegetable*, the value could be
-- *scallions*. For \`KIND_MAP\` entity types: * A canonical value to be
-- used in place of synonyms. For \`KIND_LIST\` entity types: * A string
-- that can contain references to other entity types (with or without
-- aliases).
gcdcveteValue :: Lens' GoogleCloudDialogflowCxV3beta1EntityTypeEntity (Maybe Text)
gcdcveteValue
  = lens _gcdcveteValue
      (\ s a -> s{_gcdcveteValue = a})

-- | Required. A collection of value synonyms. For example, if the entity
-- type is *vegetable*, and \`value\` is *scallions*, a synonym could be
-- *green onions*. For \`KIND_LIST\` entity types: * This collection must
-- contain exactly one synonym equal to \`value\`.
gcdcveteSynonyms :: Lens' GoogleCloudDialogflowCxV3beta1EntityTypeEntity [Text]
gcdcveteSynonyms
  = lens _gcdcveteSynonyms
      (\ s a -> s{_gcdcveteSynonyms = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1EntityTypeEntity
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1EntityTypeEntity"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1EntityTypeEntity' <$>
                   (o .:? "value") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1EntityTypeEntity
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1EntityTypeEntity'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdcveteValue,
                  ("synonyms" .=) <$> _gcdcveteSynonyms])

-- | Represents one segment of audio.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment' smart constructor.
data GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment =
  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment'
    { _gcdcvrmmasURI                       :: !(Maybe Text)
    , _gcdcvrmmasAudio                     :: !(Maybe Bytes)
    , _gcdcvrmmasAllowPlaybackInterruption :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmmasURI'
--
-- * 'gcdcvrmmasAudio'
--
-- * 'gcdcvrmmasAllowPlaybackInterruption'
googleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
    :: GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
googleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment =
  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment'
    { _gcdcvrmmasURI = Nothing
    , _gcdcvrmmasAudio = Nothing
    , _gcdcvrmmasAllowPlaybackInterruption = Nothing
    }


-- | Client-specific URI that points to an audio clip accessible to the
-- client. Dialogflow does not impose any validation on it.
gcdcvrmmasURI :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment (Maybe Text)
gcdcvrmmasURI
  = lens _gcdcvrmmasURI
      (\ s a -> s{_gcdcvrmmasURI = a})

-- | Raw audio synthesized from the Dialogflow agent\'s response using the
-- output config specified in the request.
gcdcvrmmasAudio :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment (Maybe ByteString)
gcdcvrmmasAudio
  = lens _gcdcvrmmasAudio
      (\ s a -> s{_gcdcvrmmasAudio = a})
      . mapping _Bytes

-- | Output only. Whether the playback of this segment can be interrupted by
-- the end user\'s speech and the client should then start the next
-- Dialogflow request.
gcdcvrmmasAllowPlaybackInterruption :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment (Maybe Bool)
gcdcvrmmasAllowPlaybackInterruption
  = lens _gcdcvrmmasAllowPlaybackInterruption
      (\ s a ->
         s{_gcdcvrmmasAllowPlaybackInterruption = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment'
                   <$>
                   (o .:? "uri") <*> (o .:? "audio") <*>
                     (o .:? "allowPlaybackInterruption"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gcdcvrmmasURI,
                  ("audio" .=) <$> _gcdcvrmmasAudio,
                  ("allowPlaybackInterruption" .=) <$>
                    _gcdcvrmmasAllowPlaybackInterruption])

-- | The request message for Agents.RestoreAgent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1RestoreAgentRequest' smart constructor.
data GoogleCloudDialogflowCxV3beta1RestoreAgentRequest =
  GoogleCloudDialogflowCxV3beta1RestoreAgentRequest'
    { _gcdcvrarAgentURI     :: !(Maybe Text)
    , _gcdcvrarAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1RestoreAgentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrarAgentURI'
--
-- * 'gcdcvrarAgentContent'
googleCloudDialogflowCxV3beta1RestoreAgentRequest
    :: GoogleCloudDialogflowCxV3beta1RestoreAgentRequest
googleCloudDialogflowCxV3beta1RestoreAgentRequest =
  GoogleCloudDialogflowCxV3beta1RestoreAgentRequest'
    {_gcdcvrarAgentURI = Nothing, _gcdcvrarAgentContent = Nothing}


-- | The [Google Cloud Storage](https:\/\/cloud.google.com\/storage\/docs\/)
-- URI to restore agent from. The format of this URI must be \`gs:\/\/\/\`.
gcdcvrarAgentURI :: Lens' GoogleCloudDialogflowCxV3beta1RestoreAgentRequest (Maybe Text)
gcdcvrarAgentURI
  = lens _gcdcvrarAgentURI
      (\ s a -> s{_gcdcvrarAgentURI = a})

-- | Uncompressed raw byte content for agent.
gcdcvrarAgentContent :: Lens' GoogleCloudDialogflowCxV3beta1RestoreAgentRequest (Maybe ByteString)
gcdcvrarAgentContent
  = lens _gcdcvrarAgentContent
      (\ s a -> s{_gcdcvrarAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowCxV3beta1RestoreAgentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1RestoreAgentRequest"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1RestoreAgentRequest'
                   <$> (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1RestoreAgentRequest
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1RestoreAgentRequest'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gcdcvrarAgentURI,
                  ("agentContent" .=) <$> _gcdcvrarAgentContent])

-- | Represents the parameters of a conversational query.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryParameters' smart constructor.
data GoogleCloudDialogflowCxV3beta1QueryParameters =
  GoogleCloudDialogflowCxV3beta1QueryParameters'
    { _gcdcvqpPayload                   :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryParametersPayload)
    , _gcdcvqpAnalyzeQueryTextSentiment :: !(Maybe Bool)
    , _gcdcvqpParameters                :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryParametersParameters)
    , _gcdcvqpGeoLocation               :: !(Maybe GoogleTypeLatLng)
    , _gcdcvqpTimeZone                  :: !(Maybe Text)
    , _gcdcvqpSessionEntityTypes        :: !(Maybe [GoogleCloudDialogflowCxV3beta1SessionEntityType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqpPayload'
--
-- * 'gcdcvqpAnalyzeQueryTextSentiment'
--
-- * 'gcdcvqpParameters'
--
-- * 'gcdcvqpGeoLocation'
--
-- * 'gcdcvqpTimeZone'
--
-- * 'gcdcvqpSessionEntityTypes'
googleCloudDialogflowCxV3beta1QueryParameters
    :: GoogleCloudDialogflowCxV3beta1QueryParameters
googleCloudDialogflowCxV3beta1QueryParameters =
  GoogleCloudDialogflowCxV3beta1QueryParameters'
    { _gcdcvqpPayload = Nothing
    , _gcdcvqpAnalyzeQueryTextSentiment = Nothing
    , _gcdcvqpParameters = Nothing
    , _gcdcvqpGeoLocation = Nothing
    , _gcdcvqpTimeZone = Nothing
    , _gcdcvqpSessionEntityTypes = Nothing
    }


-- | This field can be used to pass custom data into the webhook associated
-- with the agent. Arbitrary JSON objects are supported.
gcdcvqpPayload :: Lens' GoogleCloudDialogflowCxV3beta1QueryParameters (Maybe GoogleCloudDialogflowCxV3beta1QueryParametersPayload)
gcdcvqpPayload
  = lens _gcdcvqpPayload
      (\ s a -> s{_gcdcvqpPayload = a})

-- | Configures whether sentiment analysis should be performed. If not
-- provided, sentiment analysis is not performed.
gcdcvqpAnalyzeQueryTextSentiment :: Lens' GoogleCloudDialogflowCxV3beta1QueryParameters (Maybe Bool)
gcdcvqpAnalyzeQueryTextSentiment
  = lens _gcdcvqpAnalyzeQueryTextSentiment
      (\ s a -> s{_gcdcvqpAnalyzeQueryTextSentiment = a})

-- | Additional parameters to be put into session parameters. To remove a
-- parameter from the session, clients should explicitly set the parameter
-- value to null. Depending on your protocol or client library language,
-- this is a map, associative array, symbol table, dictionary, or JSON
-- object composed of a collection of (MapKey, MapValue) pairs: - MapKey
-- type: string - MapKey value: parameter name - MapValue type: - If
-- parameter\'s entity type is a composite entity: map - Else: string or
-- number, depending on parameter value type - MapValue value: - If
-- parameter\'s entity type is a composite entity: map from composite
-- entity property names to property values - Else: parameter value
gcdcvqpParameters :: Lens' GoogleCloudDialogflowCxV3beta1QueryParameters (Maybe GoogleCloudDialogflowCxV3beta1QueryParametersParameters)
gcdcvqpParameters
  = lens _gcdcvqpParameters
      (\ s a -> s{_gcdcvqpParameters = a})

-- | The geo location of this conversational query.
gcdcvqpGeoLocation :: Lens' GoogleCloudDialogflowCxV3beta1QueryParameters (Maybe GoogleTypeLatLng)
gcdcvqpGeoLocation
  = lens _gcdcvqpGeoLocation
      (\ s a -> s{_gcdcvqpGeoLocation = a})

-- | The time zone of this conversational query from the [time zone
-- database](https:\/\/www.iana.org\/time-zones), e.g., America\/New_York,
-- Europe\/Paris. If not provided, the time zone specified in the agent is
-- used.
gcdcvqpTimeZone :: Lens' GoogleCloudDialogflowCxV3beta1QueryParameters (Maybe Text)
gcdcvqpTimeZone
  = lens _gcdcvqpTimeZone
      (\ s a -> s{_gcdcvqpTimeZone = a})

-- | Additional session entity types to replace or extend developer entity
-- types with. The entity synonyms apply to all languages and persist for
-- the session of this query.
gcdcvqpSessionEntityTypes :: Lens' GoogleCloudDialogflowCxV3beta1QueryParameters [GoogleCloudDialogflowCxV3beta1SessionEntityType]
gcdcvqpSessionEntityTypes
  = lens _gcdcvqpSessionEntityTypes
      (\ s a -> s{_gcdcvqpSessionEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryParameters"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryParameters' <$>
                   (o .:? "payload") <*>
                     (o .:? "analyzeQueryTextSentiment")
                     <*> (o .:? "parameters")
                     <*> (o .:? "geoLocation")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "sessionEntityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryParameters
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1QueryParameters'{..}
          = object
              (catMaybes
                 [("payload" .=) <$> _gcdcvqpPayload,
                  ("analyzeQueryTextSentiment" .=) <$>
                    _gcdcvqpAnalyzeQueryTextSentiment,
                  ("parameters" .=) <$> _gcdcvqpParameters,
                  ("geoLocation" .=) <$> _gcdcvqpGeoLocation,
                  ("timeZone" .=) <$> _gcdcvqpTimeZone,
                  ("sessionEntityTypes" .=) <$>
                    _gcdcvqpSessionEntityTypes])

-- | Represents session information communicated to and from the webhook.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1SessionInfo' smart constructor.
data GoogleCloudDialogflowCxV3beta1SessionInfo =
  GoogleCloudDialogflowCxV3beta1SessionInfo'
    { _gcdcvsiParameters :: !(Maybe GoogleCloudDialogflowCxV3beta1SessionInfoParameters)
    , _gcdcvsiSession    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1SessionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvsiParameters'
--
-- * 'gcdcvsiSession'
googleCloudDialogflowCxV3beta1SessionInfo
    :: GoogleCloudDialogflowCxV3beta1SessionInfo
googleCloudDialogflowCxV3beta1SessionInfo =
  GoogleCloudDialogflowCxV3beta1SessionInfo'
    {_gcdcvsiParameters = Nothing, _gcdcvsiSession = Nothing}


-- | Optional for WebhookRequest. Optional for WebhookResponse. All
-- parameters collected from forms and intents during the session.
-- Parameters can be created, updated, or removed by the webhook. To remove
-- a parameter from the session, the webhook should explicitly set the
-- parameter value to null in WebhookResponse. The map is keyed by
-- parameters\' display names.
gcdcvsiParameters :: Lens' GoogleCloudDialogflowCxV3beta1SessionInfo (Maybe GoogleCloudDialogflowCxV3beta1SessionInfoParameters)
gcdcvsiParameters
  = lens _gcdcvsiParameters
      (\ s a -> s{_gcdcvsiParameters = a})

-- | Always present for WebhookRequest. Ignored for WebhookResponse. The
-- unique identifier of the session. This field can be used by the webhook
-- to identify a user. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\`.
gcdcvsiSession :: Lens' GoogleCloudDialogflowCxV3beta1SessionInfo (Maybe Text)
gcdcvsiSession
  = lens _gcdcvsiSession
      (\ s a -> s{_gcdcvsiSession = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1SessionInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1SessionInfo"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1SessionInfo' <$>
                   (o .:? "parameters") <*> (o .:? "session"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1SessionInfo
         where
        toJSON GoogleCloudDialogflowCxV3beta1SessionInfo'{..}
          = object
              (catMaybes
                 [("parameters" .=) <$> _gcdcvsiParameters,
                  ("session" .=) <$> _gcdcvsiSession])

-- | An item in the carousel.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCarouselSelectItem' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'
    { _gImage       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gTitle       :: !(Maybe Text)
    , _gDescription :: !(Maybe Text)
    , _gInfo        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gImage'
--
-- * 'gTitle'
--
-- * 'gDescription'
--
-- * 'gInfo'
googleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
    :: GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
googleCloudDialogflowV2beta1IntentMessageCarouselSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'
    { _gImage = Nothing
    , _gTitle = Nothing
    , _gDescription = Nothing
    , _gInfo = Nothing
    }


-- | Optional. The image to display.
gImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gImage = lens _gImage (\ s a -> s{_gImage = a})

-- | Required. Title of the carousel item.
gTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe Text)
gTitle = lens _gTitle (\ s a -> s{_gTitle = a})

-- | Optional. The body text of the card.
gDescription :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe Text)
gDescription
  = lens _gDescription (\ s a -> s{_gDescription = a})

-- | Required. Additional info about the option item.
gInfo :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
gInfo = lens _gInfo (\ s a -> s{_gInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gImage, ("title" .=) <$> _gTitle,
                  ("description" .=) <$> _gDescription,
                  ("info" .=) <$> _gInfo])

-- | The basic card message. Useful for displaying information.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBasicCard' smart constructor.
data GoogleCloudDialogflowV2IntentMessageBasicCard =
  GoogleCloudDialogflowV2IntentMessageBasicCard'
    { _gcdvimbcImage         :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimbcButtons       :: !(Maybe [GoogleCloudDialogflowV2IntentMessageBasicCardButton])
    , _gcdvimbcSubtitle      :: !(Maybe Text)
    , _gcdvimbcTitle         :: !(Maybe Text)
    , _gcdvimbcFormattedText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBasicCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcImage'
--
-- * 'gcdvimbcButtons'
--
-- * 'gcdvimbcSubtitle'
--
-- * 'gcdvimbcTitle'
--
-- * 'gcdvimbcFormattedText'
googleCloudDialogflowV2IntentMessageBasicCard
    :: GoogleCloudDialogflowV2IntentMessageBasicCard
googleCloudDialogflowV2IntentMessageBasicCard =
  GoogleCloudDialogflowV2IntentMessageBasicCard'
    { _gcdvimbcImage = Nothing
    , _gcdvimbcButtons = Nothing
    , _gcdvimbcSubtitle = Nothing
    , _gcdvimbcTitle = Nothing
    , _gcdvimbcFormattedText = Nothing
    }


-- | Optional. The image for the card.
gcdvimbcImage :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimbcImage
  = lens _gcdvimbcImage
      (\ s a -> s{_gcdvimbcImage = a})

-- | Optional. The collection of card buttons.
gcdvimbcButtons :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard [GoogleCloudDialogflowV2IntentMessageBasicCardButton]
gcdvimbcButtons
  = lens _gcdvimbcButtons
      (\ s a -> s{_gcdvimbcButtons = a})
      . _Default
      . _Coerce

-- | Optional. The subtitle of the card.
gcdvimbcSubtitle :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe Text)
gcdvimbcSubtitle
  = lens _gcdvimbcSubtitle
      (\ s a -> s{_gcdvimbcSubtitle = a})

-- | Optional. The title of the card.
gcdvimbcTitle :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe Text)
gcdvimbcTitle
  = lens _gcdvimbcTitle
      (\ s a -> s{_gcdvimbcTitle = a})

-- | Required, unless image is present. The body text of the card.
gcdvimbcFormattedText :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCard (Maybe Text)
gcdvimbcFormattedText
  = lens _gcdvimbcFormattedText
      (\ s a -> s{_gcdvimbcFormattedText = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBasicCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBasicCard"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBasicCard' <$>
                   (o .:? "image") <*> (o .:? "buttons" .!= mempty) <*>
                     (o .:? "subtitle")
                     <*> (o .:? "title")
                     <*> (o .:? "formattedText"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBasicCard
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBasicCard'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimbcImage,
                  ("buttons" .=) <$> _gcdvimbcButtons,
                  ("subtitle" .=) <$> _gcdvimbcSubtitle,
                  ("title" .=) <$> _gcdvimbcTitle,
                  ("formattedText" .=) <$> _gcdvimbcFormattedText])

-- | The simple response message containing speech or text.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSimpleResponse' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'
    { _gDisplayText  :: !(Maybe Text)
    , _gSsml         :: !(Maybe Text)
    , _gTextToSpeech :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gDisplayText'
--
-- * 'gSsml'
--
-- * 'gTextToSpeech'
googleCloudDialogflowV2beta1IntentMessageSimpleResponse
    :: GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
googleCloudDialogflowV2beta1IntentMessageSimpleResponse =
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'
    {_gDisplayText = Nothing, _gSsml = Nothing, _gTextToSpeech = Nothing}


-- | Optional. The text to display.
gDisplayText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse (Maybe Text)
gDisplayText
  = lens _gDisplayText (\ s a -> s{_gDisplayText = a})

-- | One of text_to_speech or ssml must be provided. Structured spoken
-- response to the user in the SSML format. Mutually exclusive with
-- text_to_speech.
gSsml :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse (Maybe Text)
gSsml = lens _gSsml (\ s a -> s{_gSsml = a})

-- | One of text_to_speech or ssml must be provided. The plain text of the
-- speech output. Mutually exclusive with ssml.
gTextToSpeech :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse (Maybe Text)
gTextToSpeech
  = lens _gTextToSpeech
      (\ s a -> s{_gTextToSpeech = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'
                   <$>
                   (o .:? "displayText") <*> (o .:? "ssml") <*>
                     (o .:? "textToSpeech"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse'{..}
          = object
              (catMaybes
                 [("displayText" .=) <$> _gDisplayText,
                  ("ssml" .=) <$> _gSsml,
                  ("textToSpeech" .=) <$> _gTextToSpeech])

-- | The media content card for Actions on Google.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageMediaContent' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageMediaContent =
  GoogleCloudDialogflowV2beta1IntentMessageMediaContent'
    { _gMediaType    :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType)
    , _gMediaObjects :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageMediaContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gMediaType'
--
-- * 'gMediaObjects'
googleCloudDialogflowV2beta1IntentMessageMediaContent
    :: GoogleCloudDialogflowV2beta1IntentMessageMediaContent
googleCloudDialogflowV2beta1IntentMessageMediaContent =
  GoogleCloudDialogflowV2beta1IntentMessageMediaContent'
    {_gMediaType = Nothing, _gMediaObjects = Nothing}


-- | Optional. What type of media is the content (ie \"audio\").
gMediaType :: Lens' GoogleCloudDialogflowV2beta1IntentMessageMediaContent (Maybe GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType)
gMediaType
  = lens _gMediaType (\ s a -> s{_gMediaType = a})

-- | Required. List of media objects.
gMediaObjects :: Lens' GoogleCloudDialogflowV2beta1IntentMessageMediaContent [GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject]
gMediaObjects
  = lens _gMediaObjects
      (\ s a -> s{_gMediaObjects = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageMediaContent
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageMediaContent"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageMediaContent'
                   <$>
                   (o .:? "mediaType") <*>
                     (o .:? "mediaObjects" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageMediaContent
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageMediaContent'{..}
          = object
              (catMaybes
                 [("mediaType" .=) <$> _gMediaType,
                  ("mediaObjects" .=) <$> _gMediaObjects])

-- | Browsing carousel tile
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem'
    { _gooImage         :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gooOpenURIAction :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction)
    , _gooFooter        :: !(Maybe Text)
    , _gooTitle         :: !(Maybe Text)
    , _gooDescription   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooImage'
--
-- * 'gooOpenURIAction'
--
-- * 'gooFooter'
--
-- * 'gooTitle'
--
-- * 'gooDescription'
googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
    :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem =
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem'
    { _gooImage = Nothing
    , _gooOpenURIAction = Nothing
    , _gooFooter = Nothing
    , _gooTitle = Nothing
    , _gooDescription = Nothing
    }


-- | Optional. Hero image for the carousel item.
gooImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gooImage = lens _gooImage (\ s a -> s{_gooImage = a})

-- | Required. Action to present to the user.
gooOpenURIAction :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction)
gooOpenURIAction
  = lens _gooOpenURIAction
      (\ s a -> s{_gooOpenURIAction = a})

-- | Optional. Text that appears at the bottom of the Browse Carousel Card.
-- Maximum of one line of text.
gooFooter :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe Text)
gooFooter
  = lens _gooFooter (\ s a -> s{_gooFooter = a})

-- | Required. Title of the carousel item. Maximum of two lines of text.
gooTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe Text)
gooTitle = lens _gooTitle (\ s a -> s{_gooTitle = a})

-- | Optional. Description of the carousel item. Maximum of four lines of
-- text.
gooDescription :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem (Maybe Text)
gooDescription
  = lens _gooDescription
      (\ s a -> s{_gooDescription = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem'
                   <$>
                   (o .:? "image") <*> (o .:? "openUriAction") <*>
                     (o .:? "footer")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gooImage,
                  ("openUriAction" .=) <$> _gooOpenURIAction,
                  ("footer" .=) <$> _gooFooter,
                  ("title" .=) <$> _gooTitle,
                  ("description" .=) <$> _gooDescription])

-- | Represents an environment for an agent. You can create multiple versions
-- of your agent and publish them to separate environments. When you edit
-- an agent, you are editing the draft agent. At any point, you can save
-- the draft agent as an agent version, which is an immutable snapshot of
-- your agent. When you save the draft agent, it is published to the
-- default environment. When you create agent versions, you can publish
-- them to custom environments. You can create a variety of custom
-- environments for testing, development, production, etc.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Environment' smart constructor.
data GoogleCloudDialogflowCxV3beta1Environment =
  GoogleCloudDialogflowCxV3beta1Environment'
    { _gcdcveVersionConfigs :: !(Maybe [GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig])
    , _gcdcveUpdateTime     :: !(Maybe DateTime')
    , _gcdcveName           :: !(Maybe Text)
    , _gcdcveDisplayName    :: !(Maybe Text)
    , _gcdcveDescription    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Environment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcveVersionConfigs'
--
-- * 'gcdcveUpdateTime'
--
-- * 'gcdcveName'
--
-- * 'gcdcveDisplayName'
--
-- * 'gcdcveDescription'
googleCloudDialogflowCxV3beta1Environment
    :: GoogleCloudDialogflowCxV3beta1Environment
googleCloudDialogflowCxV3beta1Environment =
  GoogleCloudDialogflowCxV3beta1Environment'
    { _gcdcveVersionConfigs = Nothing
    , _gcdcveUpdateTime = Nothing
    , _gcdcveName = Nothing
    , _gcdcveDisplayName = Nothing
    , _gcdcveDescription = Nothing
    }


-- | Required. A list of configurations for flow versions. You should include
-- version configs for all flows that are reachable from \`Start Flow\` in
-- the agent. Otherwise, an error will be returned.
gcdcveVersionConfigs :: Lens' GoogleCloudDialogflowCxV3beta1Environment [GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig]
gcdcveVersionConfigs
  = lens _gcdcveVersionConfigs
      (\ s a -> s{_gcdcveVersionConfigs = a})
      . _Default
      . _Coerce

-- | Output only. Update time of this environment.
gcdcveUpdateTime :: Lens' GoogleCloudDialogflowCxV3beta1Environment (Maybe UTCTime)
gcdcveUpdateTime
  = lens _gcdcveUpdateTime
      (\ s a -> s{_gcdcveUpdateTime = a})
      . mapping _DateTime

-- | The name of the environment. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\`.
gcdcveName :: Lens' GoogleCloudDialogflowCxV3beta1Environment (Maybe Text)
gcdcveName
  = lens _gcdcveName (\ s a -> s{_gcdcveName = a})

-- | Required. The human-readable name of the environment (unique in an
-- agent). Limit of 64 characters.
gcdcveDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1Environment (Maybe Text)
gcdcveDisplayName
  = lens _gcdcveDisplayName
      (\ s a -> s{_gcdcveDisplayName = a})

-- | The human-readable description of the environment. The maximum length is
-- 500 characters. If exceeded, the request is rejected.
gcdcveDescription :: Lens' GoogleCloudDialogflowCxV3beta1Environment (Maybe Text)
gcdcveDescription
  = lens _gcdcveDescription
      (\ s a -> s{_gcdcveDescription = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1Environment
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1Environment"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Environment' <$>
                   (o .:? "versionConfigs" .!= mempty) <*>
                     (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1Environment
         where
        toJSON GoogleCloudDialogflowCxV3beta1Environment'{..}
          = object
              (catMaybes
                 [("versionConfigs" .=) <$> _gcdcveVersionConfigs,
                  ("updateTime" .=) <$> _gcdcveUpdateTime,
                  ("name" .=) <$> _gcdcveName,
                  ("displayName" .=) <$> _gcdcveDisplayName,
                  ("description" .=) <$> _gcdcveDescription])

-- | An intent categorizes an end-user\'s intention for one conversation
-- turn. For each agent, you define many intents, where your combined
-- intents can handle a complete conversation. When an end-user writes or
-- says something, referred to as an end-user expression or end-user input,
-- Dialogflow matches the end-user input to the best intent in your agent.
-- Matching an intent is also known as intent classification. For more
-- information, see the [intent
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/intents-overview).
--
-- /See:/ 'googleCloudDialogflowV2Intent' smart constructor.
data GoogleCloudDialogflowV2Intent =
  GoogleCloudDialogflowV2Intent'
    { _gcdviDefaultResponsePlatforms :: !(Maybe [GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem])
    , _gcdviWebhookState             :: !(Maybe GoogleCloudDialogflowV2IntentWebhookState)
    , _gcdviPriority                 :: !(Maybe (Textual Int32))
    , _gcdviAction                   :: !(Maybe Text)
    , _gcdviRootFollowupIntentName   :: !(Maybe Text)
    , _gcdviName                     :: !(Maybe Text)
    , _gcdviEvents                   :: !(Maybe [Text])
    , _gcdviParameters               :: !(Maybe [GoogleCloudDialogflowV2IntentParameter])
    , _gcdviDisplayName              :: !(Maybe Text)
    , _gcdviInputContextNames        :: !(Maybe [Text])
    , _gcdviMessages                 :: !(Maybe [GoogleCloudDialogflowV2IntentMessage])
    , _gcdviParentFollowupIntentName :: !(Maybe Text)
    , _gcdviOutputContexts           :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gcdviTrainingPhrases          :: !(Maybe [GoogleCloudDialogflowV2IntentTrainingPhrase])
    , _gcdviFollowupIntentInfo       :: !(Maybe [GoogleCloudDialogflowV2IntentFollowupIntentInfo])
    , _gcdviIsFallback               :: !(Maybe Bool)
    , _gcdviMlDisabled               :: !(Maybe Bool)
    , _gcdviResetContexts            :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2Intent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdviDefaultResponsePlatforms'
--
-- * 'gcdviWebhookState'
--
-- * 'gcdviPriority'
--
-- * 'gcdviAction'
--
-- * 'gcdviRootFollowupIntentName'
--
-- * 'gcdviName'
--
-- * 'gcdviEvents'
--
-- * 'gcdviParameters'
--
-- * 'gcdviDisplayName'
--
-- * 'gcdviInputContextNames'
--
-- * 'gcdviMessages'
--
-- * 'gcdviParentFollowupIntentName'
--
-- * 'gcdviOutputContexts'
--
-- * 'gcdviTrainingPhrases'
--
-- * 'gcdviFollowupIntentInfo'
--
-- * 'gcdviIsFallback'
--
-- * 'gcdviMlDisabled'
--
-- * 'gcdviResetContexts'
googleCloudDialogflowV2Intent
    :: GoogleCloudDialogflowV2Intent
googleCloudDialogflowV2Intent =
  GoogleCloudDialogflowV2Intent'
    { _gcdviDefaultResponsePlatforms = Nothing
    , _gcdviWebhookState = Nothing
    , _gcdviPriority = Nothing
    , _gcdviAction = Nothing
    , _gcdviRootFollowupIntentName = Nothing
    , _gcdviName = Nothing
    , _gcdviEvents = Nothing
    , _gcdviParameters = Nothing
    , _gcdviDisplayName = Nothing
    , _gcdviInputContextNames = Nothing
    , _gcdviMessages = Nothing
    , _gcdviParentFollowupIntentName = Nothing
    , _gcdviOutputContexts = Nothing
    , _gcdviTrainingPhrases = Nothing
    , _gcdviFollowupIntentInfo = Nothing
    , _gcdviIsFallback = Nothing
    , _gcdviMlDisabled = Nothing
    , _gcdviResetContexts = Nothing
    }


-- | Optional. The list of platforms for which the first responses will be
-- copied from the messages in PLATFORM_UNSPECIFIED (i.e. default
-- platform).
gcdviDefaultResponsePlatforms :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentDefaultResponsePlatformsItem]
gcdviDefaultResponsePlatforms
  = lens _gcdviDefaultResponsePlatforms
      (\ s a -> s{_gcdviDefaultResponsePlatforms = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether webhooks are enabled for the intent.
gcdviWebhookState :: Lens' GoogleCloudDialogflowV2Intent (Maybe GoogleCloudDialogflowV2IntentWebhookState)
gcdviWebhookState
  = lens _gcdviWebhookState
      (\ s a -> s{_gcdviWebhookState = a})

-- | Optional. The priority of this intent. Higher numbers represent higher
-- priorities. - If the supplied value is unspecified or 0, the service
-- translates the value to 500,000, which corresponds to the \`Normal\`
-- priority in the console. - If the supplied value is negative, the intent
-- is ignored in runtime detect intent requests.
gcdviPriority :: Lens' GoogleCloudDialogflowV2Intent (Maybe Int32)
gcdviPriority
  = lens _gcdviPriority
      (\ s a -> s{_gcdviPriority = a})
      . mapping _Coerce

-- | Optional. The name of the action associated with the intent. Note: The
-- action name must not contain whitespaces.
gcdviAction :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviAction
  = lens _gcdviAction (\ s a -> s{_gcdviAction = a})

-- | Read-only. The unique identifier of the root intent in the chain of
-- followup intents. It identifies the correct followup intents chain for
-- this intent. We populate this field only in the output. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdviRootFollowupIntentName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviRootFollowupIntentName
  = lens _gcdviRootFollowupIntentName
      (\ s a -> s{_gcdviRootFollowupIntentName = a})

-- | Optional. The unique identifier of this intent. Required for
-- Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format:
-- \`projects\/\/agent\/intents\/\`.
gcdviName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviName
  = lens _gcdviName (\ s a -> s{_gcdviName = a})

-- | Optional. The collection of event names that trigger the intent. If the
-- collection of input contexts is not empty, all of the contexts must be
-- present in the active user session for an event to trigger this intent.
-- Event names are limited to 150 characters.
gcdviEvents :: Lens' GoogleCloudDialogflowV2Intent [Text]
gcdviEvents
  = lens _gcdviEvents (\ s a -> s{_gcdviEvents = a}) .
      _Default
      . _Coerce

-- | Optional. The collection of parameters associated with the intent.
gcdviParameters :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentParameter]
gcdviParameters
  = lens _gcdviParameters
      (\ s a -> s{_gcdviParameters = a})
      . _Default
      . _Coerce

-- | Required. The name of this intent.
gcdviDisplayName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviDisplayName
  = lens _gcdviDisplayName
      (\ s a -> s{_gcdviDisplayName = a})

-- | Optional. The list of context names required for this intent to be
-- triggered. Format: \`projects\/\/agent\/sessions\/-\/contexts\/\`.
gcdviInputContextNames :: Lens' GoogleCloudDialogflowV2Intent [Text]
gcdviInputContextNames
  = lens _gcdviInputContextNames
      (\ s a -> s{_gcdviInputContextNames = a})
      . _Default
      . _Coerce

-- | Optional. The collection of rich messages corresponding to the
-- \`Response\` field in the Dialogflow console.
gcdviMessages :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentMessage]
gcdviMessages
  = lens _gcdviMessages
      (\ s a -> s{_gcdviMessages = a})
      . _Default
      . _Coerce

-- | Read-only after creation. The unique identifier of the parent intent in
-- the chain of followup intents. You can set this field when creating an
-- intent, for example with CreateIntent or BatchUpdateIntents, in order to
-- make this intent a followup intent. It identifies the parent followup
-- intent. Format: \`projects\/\/agent\/intents\/\`.
gcdviParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2Intent (Maybe Text)
gcdviParentFollowupIntentName
  = lens _gcdviParentFollowupIntentName
      (\ s a -> s{_gcdviParentFollowupIntentName = a})

-- | Optional. The collection of contexts that are activated when the intent
-- is matched. Context messages in this collection should not set the
-- parameters field. Setting the \`lifespan_count\` to 0 will reset the
-- context when the intent is matched. Format:
-- \`projects\/\/agent\/sessions\/-\/contexts\/\`.
gcdviOutputContexts :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2Context]
gcdviOutputContexts
  = lens _gcdviOutputContexts
      (\ s a -> s{_gcdviOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. The collection of examples that the agent is trained on.
gcdviTrainingPhrases :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentTrainingPhrase]
gcdviTrainingPhrases
  = lens _gcdviTrainingPhrases
      (\ s a -> s{_gcdviTrainingPhrases = a})
      . _Default
      . _Coerce

-- | Read-only. Information about all followup intents that have this intent
-- as a direct or indirect parent. We populate this field only in the
-- output.
gcdviFollowupIntentInfo :: Lens' GoogleCloudDialogflowV2Intent [GoogleCloudDialogflowV2IntentFollowupIntentInfo]
gcdviFollowupIntentInfo
  = lens _gcdviFollowupIntentInfo
      (\ s a -> s{_gcdviFollowupIntentInfo = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether this is a fallback intent.
gcdviIsFallback :: Lens' GoogleCloudDialogflowV2Intent (Maybe Bool)
gcdviIsFallback
  = lens _gcdviIsFallback
      (\ s a -> s{_gcdviIsFallback = a})

-- | Optional. Indicates whether Machine Learning is disabled for the intent.
-- Note: If \`ml_disabled\` setting is set to true, then this intent is not
-- taken into account during inference in \`ML ONLY\` match mode. Also,
-- auto-markup in the UI is turned off.
gcdviMlDisabled :: Lens' GoogleCloudDialogflowV2Intent (Maybe Bool)
gcdviMlDisabled
  = lens _gcdviMlDisabled
      (\ s a -> s{_gcdviMlDisabled = a})

-- | Optional. Indicates whether to delete all contexts in the current
-- session when this intent is matched.
gcdviResetContexts :: Lens' GoogleCloudDialogflowV2Intent (Maybe Bool)
gcdviResetContexts
  = lens _gcdviResetContexts
      (\ s a -> s{_gcdviResetContexts = a})

instance FromJSON GoogleCloudDialogflowV2Intent where
        parseJSON
          = withObject "GoogleCloudDialogflowV2Intent"
              (\ o ->
                 GoogleCloudDialogflowV2Intent' <$>
                   (o .:? "defaultResponsePlatforms" .!= mempty) <*>
                     (o .:? "webhookState")
                     <*> (o .:? "priority")
                     <*> (o .:? "action")
                     <*> (o .:? "rootFollowupIntentName")
                     <*> (o .:? "name")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "inputContextNames" .!= mempty)
                     <*> (o .:? "messages" .!= mempty)
                     <*> (o .:? "parentFollowupIntentName")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "trainingPhrases" .!= mempty)
                     <*> (o .:? "followupIntentInfo" .!= mempty)
                     <*> (o .:? "isFallback")
                     <*> (o .:? "mlDisabled")
                     <*> (o .:? "resetContexts"))

instance ToJSON GoogleCloudDialogflowV2Intent where
        toJSON GoogleCloudDialogflowV2Intent'{..}
          = object
              (catMaybes
                 [("defaultResponsePlatforms" .=) <$>
                    _gcdviDefaultResponsePlatforms,
                  ("webhookState" .=) <$> _gcdviWebhookState,
                  ("priority" .=) <$> _gcdviPriority,
                  ("action" .=) <$> _gcdviAction,
                  ("rootFollowupIntentName" .=) <$>
                    _gcdviRootFollowupIntentName,
                  ("name" .=) <$> _gcdviName,
                  ("events" .=) <$> _gcdviEvents,
                  ("parameters" .=) <$> _gcdviParameters,
                  ("displayName" .=) <$> _gcdviDisplayName,
                  ("inputContextNames" .=) <$> _gcdviInputContextNames,
                  ("messages" .=) <$> _gcdviMessages,
                  ("parentFollowupIntentName" .=) <$>
                    _gcdviParentFollowupIntentName,
                  ("outputContexts" .=) <$> _gcdviOutputContexts,
                  ("trainingPhrases" .=) <$> _gcdviTrainingPhrases,
                  ("followupIntentInfo" .=) <$>
                    _gcdviFollowupIntentInfo,
                  ("isFallback" .=) <$> _gcdviIsFallback,
                  ("mlDisabled" .=) <$> _gcdviMlDisabled,
                  ("resetContexts" .=) <$> _gcdviResetContexts])

-- | Represents an intent parameter.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1IntentParameter' smart constructor.
data GoogleCloudDialogflowCxV3beta1IntentParameter =
  GoogleCloudDialogflowCxV3beta1IntentParameter'
    { _gcdcvipRedact     :: !(Maybe Bool)
    , _gcdcvipEntityType :: !(Maybe Text)
    , _gcdcvipId         :: !(Maybe Text)
    , _gcdcvipIsList     :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1IntentParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvipRedact'
--
-- * 'gcdcvipEntityType'
--
-- * 'gcdcvipId'
--
-- * 'gcdcvipIsList'
googleCloudDialogflowCxV3beta1IntentParameter
    :: GoogleCloudDialogflowCxV3beta1IntentParameter
googleCloudDialogflowCxV3beta1IntentParameter =
  GoogleCloudDialogflowCxV3beta1IntentParameter'
    { _gcdcvipRedact = Nothing
    , _gcdcvipEntityType = Nothing
    , _gcdcvipId = Nothing
    , _gcdcvipIsList = Nothing
    }


-- | Indicates whether the parameter content is logged in text and audio. If
-- it is set to true, the parameter content will be replaced to parameter
-- id in both request and response. The default value is false.
gcdcvipRedact :: Lens' GoogleCloudDialogflowCxV3beta1IntentParameter (Maybe Bool)
gcdcvipRedact
  = lens _gcdcvipRedact
      (\ s a -> s{_gcdcvipRedact = a})

-- | Required. The entity type of the parameter. Format:
-- \`projects\/-\/locations\/-\/agents\/-\/entityTypes\/\` for system
-- entity types (for example,
-- \`projects\/-\/locations\/-\/agents\/-\/entityTypes\/sys.date\`), or
-- \`projects\/\/locations\/\/agents\/\/entityTypes\/\` for developer
-- entity types.
gcdcvipEntityType :: Lens' GoogleCloudDialogflowCxV3beta1IntentParameter (Maybe Text)
gcdcvipEntityType
  = lens _gcdcvipEntityType
      (\ s a -> s{_gcdcvipEntityType = a})

-- | Required. The unique identifier of the parameter. This field is used by
-- training phrases to annotate their parts.
gcdcvipId :: Lens' GoogleCloudDialogflowCxV3beta1IntentParameter (Maybe Text)
gcdcvipId
  = lens _gcdcvipId (\ s a -> s{_gcdcvipId = a})

-- | Indicates whether the parameter represents a list of values.
gcdcvipIsList :: Lens' GoogleCloudDialogflowCxV3beta1IntentParameter (Maybe Bool)
gcdcvipIsList
  = lens _gcdcvipIsList
      (\ s a -> s{_gcdcvipIsList = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1IntentParameter
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1IntentParameter"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1IntentParameter' <$>
                   (o .:? "redact") <*> (o .:? "entityType") <*>
                     (o .:? "id")
                     <*> (o .:? "isList"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1IntentParameter
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1IntentParameter'{..}
          = object
              (catMaybes
                 [("redact" .=) <$> _gcdcvipRedact,
                  ("entityType" .=) <$> _gcdcvipEntityType,
                  ("id" .=) <$> _gcdcvipId,
                  ("isList" .=) <$> _gcdcvipIsList])

-- | Rich Business Messaging (RBM) Card content
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmCardContent' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent =
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent'
    { _gcdvimrccMedia       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia)
    , _gcdvimrccSuggestions :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion])
    , _gcdvimrccTitle       :: !(Maybe Text)
    , _gcdvimrccDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrccMedia'
--
-- * 'gcdvimrccSuggestions'
--
-- * 'gcdvimrccTitle'
--
-- * 'gcdvimrccDescription'
googleCloudDialogflowV2beta1IntentMessageRbmCardContent
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
googleCloudDialogflowV2beta1IntentMessageRbmCardContent =
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent'
    { _gcdvimrccMedia = Nothing
    , _gcdvimrccSuggestions = Nothing
    , _gcdvimrccTitle = Nothing
    , _gcdvimrccDescription = Nothing
    }


-- | Optional. However at least one of the title, description or media must
-- be set. Media (image, GIF or a video) to include in the card.
gcdvimrccMedia :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia)
gcdvimrccMedia
  = lens _gcdvimrccMedia
      (\ s a -> s{_gcdvimrccMedia = a})

-- | Optional. List of suggestions to include in the card.
gcdvimrccSuggestions :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion]
gcdvimrccSuggestions
  = lens _gcdvimrccSuggestions
      (\ s a -> s{_gcdvimrccSuggestions = a})
      . _Default
      . _Coerce

-- | Optional. Title of the card (at most 200 bytes). At least one of the
-- title, description or media must be set.
gcdvimrccTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent (Maybe Text)
gcdvimrccTitle
  = lens _gcdvimrccTitle
      (\ s a -> s{_gcdvimrccTitle = a})

-- | Optional. Description of the card (at most 2000 bytes). At least one of
-- the title, description or media must be set.
gcdvimrccDescription :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent (Maybe Text)
gcdvimrccDescription
  = lens _gcdvimrccDescription
      (\ s a -> s{_gcdvimrccDescription = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent'
                   <$>
                   (o .:? "media") <*> (o .:? "suggestions" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent'{..}
          = object
              (catMaybes
                 [("media" .=) <$> _gcdvimrccMedia,
                  ("suggestions" .=) <$> _gcdvimrccSuggestions,
                  ("title" .=) <$> _gcdvimrccTitle,
                  ("description" .=) <$> _gcdvimrccDescription])

-- | Request of FulfillIntent
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FulfillIntentRequest' smart constructor.
data GoogleCloudDialogflowCxV3beta1FulfillIntentRequest =
  GoogleCloudDialogflowCxV3beta1FulfillIntentRequest'
    { _gcdcvfirOutputAudioConfig  :: !(Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
    , _gcdcvfirMatch              :: !(Maybe GoogleCloudDialogflowCxV3beta1Match)
    , _gcdcvfirMatchIntentRequest :: !(Maybe GoogleCloudDialogflowCxV3beta1MatchIntentRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FulfillIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfirOutputAudioConfig'
--
-- * 'gcdcvfirMatch'
--
-- * 'gcdcvfirMatchIntentRequest'
googleCloudDialogflowCxV3beta1FulfillIntentRequest
    :: GoogleCloudDialogflowCxV3beta1FulfillIntentRequest
googleCloudDialogflowCxV3beta1FulfillIntentRequest =
  GoogleCloudDialogflowCxV3beta1FulfillIntentRequest'
    { _gcdcvfirOutputAudioConfig = Nothing
    , _gcdcvfirMatch = Nothing
    , _gcdcvfirMatchIntentRequest = Nothing
    }


-- | Instructs the speech synthesizer how to generate output audio.
gcdcvfirOutputAudioConfig :: Lens' GoogleCloudDialogflowCxV3beta1FulfillIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
gcdcvfirOutputAudioConfig
  = lens _gcdcvfirOutputAudioConfig
      (\ s a -> s{_gcdcvfirOutputAudioConfig = a})

-- | The matched intent\/event to fulfill.
gcdcvfirMatch :: Lens' GoogleCloudDialogflowCxV3beta1FulfillIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1Match)
gcdcvfirMatch
  = lens _gcdcvfirMatch
      (\ s a -> s{_gcdcvfirMatch = a})

-- | Must be same as the corresponding MatchIntent request, otherwise the
-- behavior is undefined.
gcdcvfirMatchIntentRequest :: Lens' GoogleCloudDialogflowCxV3beta1FulfillIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1MatchIntentRequest)
gcdcvfirMatchIntentRequest
  = lens _gcdcvfirMatchIntentRequest
      (\ s a -> s{_gcdcvfirMatchIntentRequest = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FulfillIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FulfillIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FulfillIntentRequest'
                   <$>
                   (o .:? "outputAudioConfig") <*> (o .:? "match") <*>
                     (o .:? "matchIntentRequest"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FulfillIntentRequest
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FulfillIntentRequest'{..}
          = object
              (catMaybes
                 [("outputAudioConfig" .=) <$>
                    _gcdcvfirOutputAudioConfig,
                  ("match" .=) <$> _gcdcvfirMatch,
                  ("matchIntentRequest" .=) <$>
                    _gcdcvfirMatchIntentRequest])

-- | Session entity types are referred to as **User** entity types and are
-- entities that are built for an individual user such as favorites,
-- preferences, playlists, and so on. You can redefine a session entity
-- type at the session level to extend or replace a custom entity type at
-- the user session level (we refer to the entity types defined at the
-- agent level as \"custom entity types\"). Note: session entity types
-- apply to all queries, regardless of the language. For more information
-- about entity types, see the [Dialogflow
-- documentation](https:\/\/cloud.google.com\/dialogflow\/docs\/entities-overview).
--
-- /See:/ 'googleCloudDialogflowCxV3beta1SessionEntityType' smart constructor.
data GoogleCloudDialogflowCxV3beta1SessionEntityType =
  GoogleCloudDialogflowCxV3beta1SessionEntityType'
    { _gcdcvSetEntityOverrideMode :: !(Maybe GoogleCloudDialogflowCxV3beta1SessionEntityTypeEntityOverrideMode)
    , _gcdcvSetEntities           :: !(Maybe [GoogleCloudDialogflowCxV3beta1EntityTypeEntity])
    , _gcdcvSetName               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1SessionEntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvSetEntityOverrideMode'
--
-- * 'gcdcvSetEntities'
--
-- * 'gcdcvSetName'
googleCloudDialogflowCxV3beta1SessionEntityType
    :: GoogleCloudDialogflowCxV3beta1SessionEntityType
googleCloudDialogflowCxV3beta1SessionEntityType =
  GoogleCloudDialogflowCxV3beta1SessionEntityType'
    { _gcdcvSetEntityOverrideMode = Nothing
    , _gcdcvSetEntities = Nothing
    , _gcdcvSetName = Nothing
    }


-- | Required. Indicates whether the additional data should override or
-- supplement the custom entity type definition.
gcdcvSetEntityOverrideMode :: Lens' GoogleCloudDialogflowCxV3beta1SessionEntityType (Maybe GoogleCloudDialogflowCxV3beta1SessionEntityTypeEntityOverrideMode)
gcdcvSetEntityOverrideMode
  = lens _gcdcvSetEntityOverrideMode
      (\ s a -> s{_gcdcvSetEntityOverrideMode = a})

-- | Required. The collection of entities to override or supplement the
-- custom entity type.
gcdcvSetEntities :: Lens' GoogleCloudDialogflowCxV3beta1SessionEntityType [GoogleCloudDialogflowCxV3beta1EntityTypeEntity]
gcdcvSetEntities
  = lens _gcdcvSetEntities
      (\ s a -> s{_gcdcvSetEntities = a})
      . _Default
      . _Coerce

-- | Required. The unique identifier of the session entity type. Format:
-- \`projects\/\/locations\/\/agents\/\/sessions\/\/entityTypes\/\` or
-- \`projects\/\/locations\/\/agents\/\/environments\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment.
gcdcvSetName :: Lens' GoogleCloudDialogflowCxV3beta1SessionEntityType (Maybe Text)
gcdcvSetName
  = lens _gcdcvSetName (\ s a -> s{_gcdcvSetName = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1SessionEntityType
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1SessionEntityType"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1SessionEntityType' <$>
                   (o .:? "entityOverrideMode") <*>
                     (o .:? "entities" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1SessionEntityType
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1SessionEntityType'{..}
          = object
              (catMaybes
                 [("entityOverrideMode" .=) <$>
                    _gcdcvSetEntityOverrideMode,
                  ("entities" .=) <$> _gcdcvSetEntities,
                  ("name" .=) <$> _gcdcvSetName])

-- | Represents the result of annotation for the message.
--
-- /See:/ 'googleCloudDialogflowV2MessageAnnotation' smart constructor.
data GoogleCloudDialogflowV2MessageAnnotation =
  GoogleCloudDialogflowV2MessageAnnotation'
    { _gcdvmaParts           :: !(Maybe [GoogleCloudDialogflowV2AnnotatedMessagePart])
    , _gcdvmaContainEntities :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2MessageAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvmaParts'
--
-- * 'gcdvmaContainEntities'
googleCloudDialogflowV2MessageAnnotation
    :: GoogleCloudDialogflowV2MessageAnnotation
googleCloudDialogflowV2MessageAnnotation =
  GoogleCloudDialogflowV2MessageAnnotation'
    {_gcdvmaParts = Nothing, _gcdvmaContainEntities = Nothing}


-- | The collection of annotated message parts ordered by their position in
-- the message. You can recover the annotated message by concatenating
-- [AnnotatedMessagePart.text].
gcdvmaParts :: Lens' GoogleCloudDialogflowV2MessageAnnotation [GoogleCloudDialogflowV2AnnotatedMessagePart]
gcdvmaParts
  = lens _gcdvmaParts (\ s a -> s{_gcdvmaParts = a}) .
      _Default
      . _Coerce

-- | Indicates whether the text message contains entities.
gcdvmaContainEntities :: Lens' GoogleCloudDialogflowV2MessageAnnotation (Maybe Bool)
gcdvmaContainEntities
  = lens _gcdvmaContainEntities
      (\ s a -> s{_gcdvmaContainEntities = a})

instance FromJSON
           GoogleCloudDialogflowV2MessageAnnotation
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2MessageAnnotation"
              (\ o ->
                 GoogleCloudDialogflowV2MessageAnnotation' <$>
                   (o .:? "parts" .!= mempty) <*>
                     (o .:? "containEntities"))

instance ToJSON
           GoogleCloudDialogflowV2MessageAnnotation
         where
        toJSON GoogleCloudDialogflowV2MessageAnnotation'{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _gcdvmaParts,
                  ("containEntities" .=) <$> _gcdvmaContainEntities])

-- | Row of TableCard.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTableCardRow' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageTableCardRow =
  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow'
    { _gcdvimtcrCells        :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageTableCardCell])
    , _gcdvimtcrDividerAfter :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTableCardRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtcrCells'
--
-- * 'gcdvimtcrDividerAfter'
googleCloudDialogflowV2beta1IntentMessageTableCardRow
    :: GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
googleCloudDialogflowV2beta1IntentMessageTableCardRow =
  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow'
    {_gcdvimtcrCells = Nothing, _gcdvimtcrDividerAfter = Nothing}


-- | Optional. List of cells that make up this row.
gcdvimtcrCells :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCardRow [GoogleCloudDialogflowV2beta1IntentMessageTableCardCell]
gcdvimtcrCells
  = lens _gcdvimtcrCells
      (\ s a -> s{_gcdvimtcrCells = a})
      . _Default
      . _Coerce

-- | Optional. Whether to add a visual divider after this row.
gcdvimtcrDividerAfter :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCardRow (Maybe Bool)
gcdvimtcrDividerAfter
  = lens _gcdvimtcrDividerAfter
      (\ s a -> s{_gcdvimtcrDividerAfter = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTableCardRow"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTableCardRow'
                   <$>
                   (o .:? "cells" .!= mempty) <*>
                     (o .:? "dividerAfter"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTableCardRow'{..}
          = object
              (catMaybes
                 [("cells" .=) <$> _gcdvimtcrCells,
                  ("dividerAfter" .=) <$> _gcdvimtcrDividerAfter])

-- | Opens the user\'s default dialer app with the specified phone number but
-- does not dial automatically.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial'
    { _gcdvimrsarsadPhoneNumber :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrsarsadPhoneNumber'
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial'
    {_gcdvimrsarsadPhoneNumber = Nothing}


-- | Required. The phone number to fill in the default dialer app. This field
-- should be in [E.164](https:\/\/en.wikipedia.org\/wiki\/E.164) format. An
-- example of a correctly formatted phone number: +15556767888.
gcdvimrsarsadPhoneNumber :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial (Maybe Text)
gcdvimrsarsadPhoneNumber
  = lens _gcdvimrsarsadPhoneNumber
      (\ s a -> s{_gcdvimrsarsadPhoneNumber = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial'
                   <$> (o .:? "phoneNumber"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial'{..}
          = object
              (catMaybes
                 [("phoneNumber" .=) <$> _gcdvimrsarsadPhoneNumber])

-- | The button object that appears at the bottom of a card.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBasicCardButton' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'
    { _gcdvimbcbOpenURIAction :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction)
    , _gcdvimbcbTitle         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbOpenURIAction'
--
-- * 'gcdvimbcbTitle'
googleCloudDialogflowV2beta1IntentMessageBasicCardButton
    :: GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
googleCloudDialogflowV2beta1IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'
    {_gcdvimbcbOpenURIAction = Nothing, _gcdvimbcbTitle = Nothing}


-- | Required. Action to take when a user taps on the button.
gcdvimbcbOpenURIAction :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton (Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction)
gcdvimbcbOpenURIAction
  = lens _gcdvimbcbOpenURIAction
      (\ s a -> s{_gcdvimbcbOpenURIAction = a})

-- | Required. The title of the button.
gcdvimbcbTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton (Maybe Text)
gcdvimbcbTitle
  = lens _gcdvimbcbTitle
      (\ s a -> s{_gcdvimbcbTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'
                   <$> (o .:? "openUriAction") <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton'{..}
          = object
              (catMaybes
                 [("openUriAction" .=) <$> _gcdvimbcbOpenURIAction,
                  ("title" .=) <$> _gcdvimbcbTitle])

-- | The result of sentiment analysis. Sentiment analysis inspects user input
-- and identifies the prevailing subjective opinion, especially to
-- determine a user\'s attitude as positive, negative, or neutral. For
-- Participants.AnalyzeContent, it needs to be configured in
-- DetectIntentRequest.query_params. For
-- Participants.StreamingAnalyzeContent, it needs to be configured in
-- StreamingDetectIntentRequest.query_params. And for
-- Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it
-- needs to be configured in
-- ConversationProfile.human_agent_assistant_config
--
-- /See:/ 'googleCloudDialogflowV2SentimentAnalysisResult' smart constructor.
newtype GoogleCloudDialogflowV2SentimentAnalysisResult =
  GoogleCloudDialogflowV2SentimentAnalysisResult'
    { _gcdvsarQueryTextSentiment :: Maybe GoogleCloudDialogflowV2Sentiment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2SentimentAnalysisResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvsarQueryTextSentiment'
googleCloudDialogflowV2SentimentAnalysisResult
    :: GoogleCloudDialogflowV2SentimentAnalysisResult
googleCloudDialogflowV2SentimentAnalysisResult =
  GoogleCloudDialogflowV2SentimentAnalysisResult'
    {_gcdvsarQueryTextSentiment = Nothing}


-- | The sentiment analysis result for \`query_text\`.
gcdvsarQueryTextSentiment :: Lens' GoogleCloudDialogflowV2SentimentAnalysisResult (Maybe GoogleCloudDialogflowV2Sentiment)
gcdvsarQueryTextSentiment
  = lens _gcdvsarQueryTextSentiment
      (\ s a -> s{_gcdvsarQueryTextSentiment = a})

instance FromJSON
           GoogleCloudDialogflowV2SentimentAnalysisResult
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2SentimentAnalysisResult"
              (\ o ->
                 GoogleCloudDialogflowV2SentimentAnalysisResult' <$>
                   (o .:? "queryTextSentiment"))

instance ToJSON
           GoogleCloudDialogflowV2SentimentAnalysisResult
         where
        toJSON
          GoogleCloudDialogflowV2SentimentAnalysisResult'{..}
          = object
              (catMaybes
                 [("queryTextSentiment" .=) <$>
                    _gcdvsarQueryTextSentiment])

-- | The request message for Versions.LoadVersion.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1LoadVersionRequest' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1LoadVersionRequest =
  GoogleCloudDialogflowCxV3beta1LoadVersionRequest'
    { _gcdcvlvrAllowOverrideAgentResources :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1LoadVersionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlvrAllowOverrideAgentResources'
googleCloudDialogflowCxV3beta1LoadVersionRequest
    :: GoogleCloudDialogflowCxV3beta1LoadVersionRequest
googleCloudDialogflowCxV3beta1LoadVersionRequest =
  GoogleCloudDialogflowCxV3beta1LoadVersionRequest'
    {_gcdcvlvrAllowOverrideAgentResources = Nothing}


-- | This field is used to prevent accidental overwrite of other agent
-- resources in the draft version, which can potentially impact other
-- flow\'s behavior. If \`allow_override_agent_resources\` is false,
-- conflicted agent-level resources will not be overridden (i.e. intents,
-- entities, webhooks).
gcdcvlvrAllowOverrideAgentResources :: Lens' GoogleCloudDialogflowCxV3beta1LoadVersionRequest (Maybe Bool)
gcdcvlvrAllowOverrideAgentResources
  = lens _gcdcvlvrAllowOverrideAgentResources
      (\ s a ->
         s{_gcdcvlvrAllowOverrideAgentResources = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1LoadVersionRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1LoadVersionRequest"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1LoadVersionRequest' <$>
                   (o .:? "allowOverrideAgentResources"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1LoadVersionRequest
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1LoadVersionRequest'{..}
          = object
              (catMaybes
                 [("allowOverrideAgentResources" .=) <$>
                    _gcdcvlvrAllowOverrideAgentResources])

-- | Metadata returned for the TestCases.ExportTestCases long running
-- operation.
--
-- /See:/ 'googleCloudDialogflowV3alpha1ExportTestCasesMetadata' smart constructor.
data GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata =
  GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata' with the minimum fields required to make a request.
--
googleCloudDialogflowV3alpha1ExportTestCasesMetadata
    :: GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata
googleCloudDialogflowV3alpha1ExportTestCasesMetadata =
  GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata'


instance FromJSON
           GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata"
              (\ o ->
                 pure
                   GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata')

instance ToJSON
           GoogleCloudDialogflowV3alpha1ExportTestCasesMetadata
         where
        toJSON = const emptyObject

-- | The text response message.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageText' smart constructor.
data GoogleCloudDialogflowCxV3beta1ResponseMessageText =
  GoogleCloudDialogflowCxV3beta1ResponseMessageText'
    { _gcdcvrmtText                      :: !(Maybe [Text])
    , _gcdcvrmtAllowPlaybackInterruption :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmtText'
--
-- * 'gcdcvrmtAllowPlaybackInterruption'
googleCloudDialogflowCxV3beta1ResponseMessageText
    :: GoogleCloudDialogflowCxV3beta1ResponseMessageText
googleCloudDialogflowCxV3beta1ResponseMessageText =
  GoogleCloudDialogflowCxV3beta1ResponseMessageText'
    {_gcdcvrmtText = Nothing, _gcdcvrmtAllowPlaybackInterruption = Nothing}


-- | Required. A collection of text responses.
gcdcvrmtText :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageText [Text]
gcdcvrmtText
  = lens _gcdcvrmtText (\ s a -> s{_gcdcvrmtText = a})
      . _Default
      . _Coerce

-- | Output only. Whether the playback of this message can be interrupted by
-- the end user\'s speech and the client can then starts the next
-- Dialogflow request.
gcdcvrmtAllowPlaybackInterruption :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageText (Maybe Bool)
gcdcvrmtAllowPlaybackInterruption
  = lens _gcdcvrmtAllowPlaybackInterruption
      (\ s a -> s{_gcdcvrmtAllowPlaybackInterruption = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageText
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageText"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageText'
                   <$>
                   (o .:? "text" .!= mempty) <*>
                     (o .:? "allowPlaybackInterruption"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageText
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessageText'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdcvrmtText,
                  ("allowPlaybackInterruption" .=) <$>
                    _gcdcvrmtAllowPlaybackInterruption])

-- | The request to detect user\'s intent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1DetectIntentRequest' smart constructor.
data GoogleCloudDialogflowCxV3beta1DetectIntentRequest =
  GoogleCloudDialogflowCxV3beta1DetectIntentRequest'
    { _gcdcvdirQueryInput        :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryInput)
    , _gcdcvdirOutputAudioConfig :: !(Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
    , _gcdcvdirQueryParams       :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1DetectIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvdirQueryInput'
--
-- * 'gcdcvdirOutputAudioConfig'
--
-- * 'gcdcvdirQueryParams'
googleCloudDialogflowCxV3beta1DetectIntentRequest
    :: GoogleCloudDialogflowCxV3beta1DetectIntentRequest
googleCloudDialogflowCxV3beta1DetectIntentRequest =
  GoogleCloudDialogflowCxV3beta1DetectIntentRequest'
    { _gcdcvdirQueryInput = Nothing
    , _gcdcvdirOutputAudioConfig = Nothing
    , _gcdcvdirQueryParams = Nothing
    }


-- | Required. The input specification.
gcdcvdirQueryInput :: Lens' GoogleCloudDialogflowCxV3beta1DetectIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1QueryInput)
gcdcvdirQueryInput
  = lens _gcdcvdirQueryInput
      (\ s a -> s{_gcdcvdirQueryInput = a})

-- | Instructs the speech synthesizer how to generate the output audio.
gcdcvdirOutputAudioConfig :: Lens' GoogleCloudDialogflowCxV3beta1DetectIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
gcdcvdirOutputAudioConfig
  = lens _gcdcvdirOutputAudioConfig
      (\ s a -> s{_gcdcvdirOutputAudioConfig = a})

-- | The parameters of this query.
gcdcvdirQueryParams :: Lens' GoogleCloudDialogflowCxV3beta1DetectIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1QueryParameters)
gcdcvdirQueryParams
  = lens _gcdcvdirQueryParams
      (\ s a -> s{_gcdcvdirQueryParams = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1DetectIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1DetectIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1DetectIntentRequest'
                   <$>
                   (o .:? "queryInput") <*> (o .:? "outputAudioConfig")
                     <*> (o .:? "queryParams"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1DetectIntentRequest
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1DetectIntentRequest'{..}
          = object
              (catMaybes
                 [("queryInput" .=) <$> _gcdcvdirQueryInput,
                  ("outputAudioConfig" .=) <$>
                    _gcdcvdirOutputAudioConfig,
                  ("queryParams" .=) <$> _gcdcvdirQueryParams])

-- | Instructs the speech recognizer on how to process the audio content.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1InputAudioConfig' smart constructor.
data GoogleCloudDialogflowCxV3beta1InputAudioConfig =
  GoogleCloudDialogflowCxV3beta1InputAudioConfig'
    { _gcdcviacPhraseHints     :: !(Maybe [Text])
    , _gcdcviacSampleRateHertz :: !(Maybe (Textual Int32))
    , _gcdcviacModelVariant    :: !(Maybe GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant)
    , _gcdcviacSingleUtterance :: !(Maybe Bool)
    , _gcdcviacEnableWordInfo  :: !(Maybe Bool)
    , _gcdcviacModel           :: !(Maybe Text)
    , _gcdcviacAudioEncoding   :: !(Maybe GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1InputAudioConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcviacPhraseHints'
--
-- * 'gcdcviacSampleRateHertz'
--
-- * 'gcdcviacModelVariant'
--
-- * 'gcdcviacSingleUtterance'
--
-- * 'gcdcviacEnableWordInfo'
--
-- * 'gcdcviacModel'
--
-- * 'gcdcviacAudioEncoding'
googleCloudDialogflowCxV3beta1InputAudioConfig
    :: GoogleCloudDialogflowCxV3beta1InputAudioConfig
googleCloudDialogflowCxV3beta1InputAudioConfig =
  GoogleCloudDialogflowCxV3beta1InputAudioConfig'
    { _gcdcviacPhraseHints = Nothing
    , _gcdcviacSampleRateHertz = Nothing
    , _gcdcviacModelVariant = Nothing
    , _gcdcviacSingleUtterance = Nothing
    , _gcdcviacEnableWordInfo = Nothing
    , _gcdcviacModel = Nothing
    , _gcdcviacAudioEncoding = Nothing
    }


-- | Optional. A list of strings containing words and phrases that the speech
-- recognizer should recognize with higher likelihood. See [the Cloud
-- Speech
-- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/basics#phrase-hints)
-- for more details.
gcdcviacPhraseHints :: Lens' GoogleCloudDialogflowCxV3beta1InputAudioConfig [Text]
gcdcviacPhraseHints
  = lens _gcdcviacPhraseHints
      (\ s a -> s{_gcdcviacPhraseHints = a})
      . _Default
      . _Coerce

-- | Sample rate (in Hertz) of the audio content sent in the query. Refer to
-- [Cloud Speech API
-- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/basics)
-- for more details.
gcdcviacSampleRateHertz :: Lens' GoogleCloudDialogflowCxV3beta1InputAudioConfig (Maybe Int32)
gcdcviacSampleRateHertz
  = lens _gcdcviacSampleRateHertz
      (\ s a -> s{_gcdcviacSampleRateHertz = a})
      . mapping _Coerce

-- | Optional. Which variant of the Speech model to use.
gcdcviacModelVariant :: Lens' GoogleCloudDialogflowCxV3beta1InputAudioConfig (Maybe GoogleCloudDialogflowCxV3beta1InputAudioConfigModelVariant)
gcdcviacModelVariant
  = lens _gcdcviacModelVariant
      (\ s a -> s{_gcdcviacModelVariant = a})

-- | Optional. If \`false\` (default), recognition does not cease until the
-- client closes the stream. If \`true\`, the recognizer will detect a
-- single spoken utterance in input audio. Recognition ceases when it
-- detects the audio\'s voice has stopped or paused. In this case, once a
-- detected intent is received, the client should close the stream and
-- start a new request with a new stream as needed. Note: This setting is
-- relevant only for streaming methods.
gcdcviacSingleUtterance :: Lens' GoogleCloudDialogflowCxV3beta1InputAudioConfig (Maybe Bool)
gcdcviacSingleUtterance
  = lens _gcdcviacSingleUtterance
      (\ s a -> s{_gcdcviacSingleUtterance = a})

-- | Optional. If \`true\`, Dialogflow returns SpeechWordInfo in
-- StreamingRecognitionResult with information about the recognized speech
-- words, e.g. start and end time offsets. If false or unspecified, Speech
-- doesn\'t return any word-level information.
gcdcviacEnableWordInfo :: Lens' GoogleCloudDialogflowCxV3beta1InputAudioConfig (Maybe Bool)
gcdcviacEnableWordInfo
  = lens _gcdcviacEnableWordInfo
      (\ s a -> s{_gcdcviacEnableWordInfo = a})

-- | Optional. Which Speech model to select for the given request. Select the
-- model best suited to your domain to get best results. If a model is not
-- explicitly specified, then we auto-select a model based on the
-- parameters in the InputAudioConfig. If enhanced speech model is enabled
-- for the agent and an enhanced version of the specified model for the
-- language does not exist, then the speech is recognized using the
-- standard version of the specified model. Refer to [Cloud Speech API
-- documentation](https:\/\/cloud.google.com\/speech-to-text\/docs\/basics#select-model)
-- for more details.
gcdcviacModel :: Lens' GoogleCloudDialogflowCxV3beta1InputAudioConfig (Maybe Text)
gcdcviacModel
  = lens _gcdcviacModel
      (\ s a -> s{_gcdcviacModel = a})

-- | Required. Audio encoding of the audio content to process.
gcdcviacAudioEncoding :: Lens' GoogleCloudDialogflowCxV3beta1InputAudioConfig (Maybe GoogleCloudDialogflowCxV3beta1InputAudioConfigAudioEncoding)
gcdcviacAudioEncoding
  = lens _gcdcviacAudioEncoding
      (\ s a -> s{_gcdcviacAudioEncoding = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1InputAudioConfig
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1InputAudioConfig"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1InputAudioConfig' <$>
                   (o .:? "phraseHints" .!= mempty) <*>
                     (o .:? "sampleRateHertz")
                     <*> (o .:? "modelVariant")
                     <*> (o .:? "singleUtterance")
                     <*> (o .:? "enableWordInfo")
                     <*> (o .:? "model")
                     <*> (o .:? "audioEncoding"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1InputAudioConfig
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1InputAudioConfig'{..}
          = object
              (catMaybes
                 [("phraseHints" .=) <$> _gcdcviacPhraseHints,
                  ("sampleRateHertz" .=) <$> _gcdcviacSampleRateHertz,
                  ("modelVariant" .=) <$> _gcdcviacModelVariant,
                  ("singleUtterance" .=) <$> _gcdcviacSingleUtterance,
                  ("enableWordInfo" .=) <$> _gcdcviacEnableWordInfo,
                  ("model" .=) <$> _gcdcviacModel,
                  ("audioEncoding" .=) <$> _gcdcviacAudioEncoding])

-- | Represents the event to trigger.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1EventInput' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1EventInput =
  GoogleCloudDialogflowCxV3beta1EventInput'
    { _gcdcveiEvent :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1EventInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcveiEvent'
googleCloudDialogflowCxV3beta1EventInput
    :: GoogleCloudDialogflowCxV3beta1EventInput
googleCloudDialogflowCxV3beta1EventInput =
  GoogleCloudDialogflowCxV3beta1EventInput' {_gcdcveiEvent = Nothing}


-- | Name of the event.
gcdcveiEvent :: Lens' GoogleCloudDialogflowCxV3beta1EventInput (Maybe Text)
gcdcveiEvent
  = lens _gcdcveiEvent (\ s a -> s{_gcdcveiEvent = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1EventInput
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1EventInput"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1EventInput' <$>
                   (o .:? "event"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1EventInput
         where
        toJSON GoogleCloudDialogflowCxV3beta1EventInput'{..}
          = object (catMaybes [("event" .=) <$> _gcdcveiEvent])

-- | Parameters identified as a result of intent matching. This is a map of
-- the name of the identified parameter to the value of the parameter
-- identified from the user\'s utterance. All parameters defined in the
-- matched intent that are identified will be surfaced here.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters =
  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters'
    { _gcdcvwriipAddtional :: HashMap Text GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwriipAddtional'
googleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters
    :: HashMap Text GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue -- ^ 'gcdcvwriipAddtional'
    -> GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters
googleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters pGcdcvwriipAddtional_ =
  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters'
    {_gcdcvwriipAddtional = _Coerce # pGcdcvwriipAddtional_}


gcdcvwriipAddtional :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters (HashMap Text GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue)
gcdcvwriipAddtional
  = lens _gcdcvwriipAddtional
      (\ s a -> s{_gcdcvwriipAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters
         where
        toJSON = toJSON . _gcdcvwriipAddtional

-- | The collection of suggestions.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSuggestions' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageSuggestions =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions'
    { _gcdvimsSuggestions :: Maybe [GoogleCloudDialogflowV2beta1IntentMessageSuggestion]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSuggestions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsSuggestions'
googleCloudDialogflowV2beta1IntentMessageSuggestions
    :: GoogleCloudDialogflowV2beta1IntentMessageSuggestions
googleCloudDialogflowV2beta1IntentMessageSuggestions =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions'
    {_gcdvimsSuggestions = Nothing}


-- | Required. The list of suggested replies.
gcdvimsSuggestions :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSuggestions [GoogleCloudDialogflowV2beta1IntentMessageSuggestion]
gcdvimsSuggestions
  = lens _gcdvimsSuggestions
      (\ s a -> s{_gcdvimsSuggestions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestions
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSuggestions"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSuggestions'
                   <$> (o .:? "suggestions" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestions
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSuggestions'{..}
          = object
              (catMaybes
                 [("suggestions" .=) <$> _gcdvimsSuggestions])

-- | Column properties for TableCard.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageColumnProperties' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageColumnProperties =
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties'
    { _gcdvimcpHeader              :: !(Maybe Text)
    , _gcdvimcpHorizontalAlignment :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageColumnProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcpHeader'
--
-- * 'gcdvimcpHorizontalAlignment'
googleCloudDialogflowV2beta1IntentMessageColumnProperties
    :: GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
googleCloudDialogflowV2beta1IntentMessageColumnProperties =
  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties'
    {_gcdvimcpHeader = Nothing, _gcdvimcpHorizontalAlignment = Nothing}


-- | Required. Column heading.
gcdvimcpHeader :: Lens' GoogleCloudDialogflowV2beta1IntentMessageColumnProperties (Maybe Text)
gcdvimcpHeader
  = lens _gcdvimcpHeader
      (\ s a -> s{_gcdvimcpHeader = a})

-- | Optional. Defines text alignment for all cells in this column.
gcdvimcpHorizontalAlignment :: Lens' GoogleCloudDialogflowV2beta1IntentMessageColumnProperties (Maybe GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment)
gcdvimcpHorizontalAlignment
  = lens _gcdvimcpHorizontalAlignment
      (\ s a -> s{_gcdvimcpHorizontalAlignment = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageColumnProperties"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageColumnProperties'
                   <$>
                   (o .:? "header") <*> (o .:? "horizontalAlignment"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageColumnProperties'{..}
          = object
              (catMaybes
                 [("header" .=) <$> _gcdvimcpHeader,
                  ("horizontalAlignment" .=) <$>
                    _gcdvimcpHorizontalAlignment])

-- | The response message for Agents.ImportAgent.
--
-- /See:/ 'googleCloudDialogflowV3alpha1ImportAgentResponse' smart constructor.
newtype GoogleCloudDialogflowV3alpha1ImportAgentResponse =
  GoogleCloudDialogflowV3alpha1ImportAgentResponse'
    { _gcdviarAgent :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV3alpha1ImportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdviarAgent'
googleCloudDialogflowV3alpha1ImportAgentResponse
    :: GoogleCloudDialogflowV3alpha1ImportAgentResponse
googleCloudDialogflowV3alpha1ImportAgentResponse =
  GoogleCloudDialogflowV3alpha1ImportAgentResponse' {_gcdviarAgent = Nothing}


-- | The unique identifier of the new agent. Format:
-- \`projects\/\/locations\/\/agents\/\`.
gcdviarAgent :: Lens' GoogleCloudDialogflowV3alpha1ImportAgentResponse (Maybe Text)
gcdviarAgent
  = lens _gcdviarAgent (\ s a -> s{_gcdviarAgent = a})

instance FromJSON
           GoogleCloudDialogflowV3alpha1ImportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV3alpha1ImportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowV3alpha1ImportAgentResponse' <$>
                   (o .:? "agent"))

instance ToJSON
           GoogleCloudDialogflowV3alpha1ImportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowV3alpha1ImportAgentResponse'{..}
          = object (catMaybes [("agent" .=) <$> _gcdviarAgent])

-- | Represents the intent to trigger programmatically rather than as a
-- result of natural language processing.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1IntentInput' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1IntentInput =
  GoogleCloudDialogflowCxV3beta1IntentInput'
    { _gcdcviiIntent :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1IntentInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcviiIntent'
googleCloudDialogflowCxV3beta1IntentInput
    :: GoogleCloudDialogflowCxV3beta1IntentInput
googleCloudDialogflowCxV3beta1IntentInput =
  GoogleCloudDialogflowCxV3beta1IntentInput' {_gcdcviiIntent = Nothing}


-- | Required. The unique identifier of the intent. Format:
-- \`projects\/\/locations\/\/agents\/\/intents\/\`.
gcdcviiIntent :: Lens' GoogleCloudDialogflowCxV3beta1IntentInput (Maybe Text)
gcdcviiIntent
  = lens _gcdcviiIntent
      (\ s a -> s{_gcdcviiIntent = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1IntentInput
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1IntentInput"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1IntentInput' <$>
                   (o .:? "intent"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1IntentInput
         where
        toJSON GoogleCloudDialogflowCxV3beta1IntentInput'{..}
          = object
              (catMaybes [("intent" .=) <$> _gcdcviiIntent])

-- | Represents the result of conversational query or event processing.
--
-- /See:/ 'googleCloudDialogflowV2QueryResult' smart constructor.
data GoogleCloudDialogflowV2QueryResult =
  GoogleCloudDialogflowV2QueryResult'
    { _gcdvqrLanguageCode                :: !(Maybe Text)
    , _gcdvqrAllRequiredParamsPresent    :: !(Maybe Bool)
    , _gcdvqrIntentDetectionConfidence   :: !(Maybe (Textual Double))
    , _gcdvqrFulfillmentMessages         :: !(Maybe [GoogleCloudDialogflowV2IntentMessage])
    , _gcdvqrSpeechRecognitionConfidence :: !(Maybe (Textual Double))
    , _gcdvqrAction                      :: !(Maybe Text)
    , _gcdvqrIntent                      :: !(Maybe GoogleCloudDialogflowV2Intent)
    , _gcdvqrSentimentAnalysisResult     :: !(Maybe GoogleCloudDialogflowV2SentimentAnalysisResult)
    , _gcdvqrQueryText                   :: !(Maybe Text)
    , _gcdvqrFulfillmentText             :: !(Maybe Text)
    , _gcdvqrParameters                  :: !(Maybe GoogleCloudDialogflowV2QueryResultParameters)
    , _gcdvqrWebhookPayload              :: !(Maybe GoogleCloudDialogflowV2QueryResultWebhookPayload)
    , _gcdvqrOutputContexts              :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gcdvqrWebhookSource               :: !(Maybe Text)
    , _gcdvqrDiagnosticInfo              :: !(Maybe GoogleCloudDialogflowV2QueryResultDiagnosticInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2QueryResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrLanguageCode'
--
-- * 'gcdvqrAllRequiredParamsPresent'
--
-- * 'gcdvqrIntentDetectionConfidence'
--
-- * 'gcdvqrFulfillmentMessages'
--
-- * 'gcdvqrSpeechRecognitionConfidence'
--
-- * 'gcdvqrAction'
--
-- * 'gcdvqrIntent'
--
-- * 'gcdvqrSentimentAnalysisResult'
--
-- * 'gcdvqrQueryText'
--
-- * 'gcdvqrFulfillmentText'
--
-- * 'gcdvqrParameters'
--
-- * 'gcdvqrWebhookPayload'
--
-- * 'gcdvqrOutputContexts'
--
-- * 'gcdvqrWebhookSource'
--
-- * 'gcdvqrDiagnosticInfo'
googleCloudDialogflowV2QueryResult
    :: GoogleCloudDialogflowV2QueryResult
googleCloudDialogflowV2QueryResult =
  GoogleCloudDialogflowV2QueryResult'
    { _gcdvqrLanguageCode = Nothing
    , _gcdvqrAllRequiredParamsPresent = Nothing
    , _gcdvqrIntentDetectionConfidence = Nothing
    , _gcdvqrFulfillmentMessages = Nothing
    , _gcdvqrSpeechRecognitionConfidence = Nothing
    , _gcdvqrAction = Nothing
    , _gcdvqrIntent = Nothing
    , _gcdvqrSentimentAnalysisResult = Nothing
    , _gcdvqrQueryText = Nothing
    , _gcdvqrFulfillmentText = Nothing
    , _gcdvqrParameters = Nothing
    , _gcdvqrWebhookPayload = Nothing
    , _gcdvqrOutputContexts = Nothing
    , _gcdvqrWebhookSource = Nothing
    , _gcdvqrDiagnosticInfo = Nothing
    }


-- | The language that was triggered during intent detection. See [Language
-- Support](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/language)
-- for a list of the currently supported language codes.
gcdvqrLanguageCode :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrLanguageCode
  = lens _gcdvqrLanguageCode
      (\ s a -> s{_gcdvqrLanguageCode = a})

-- | This field is set to: - \`false\` if the matched intent has required
-- parameters and not all of the required parameter values have been
-- collected. - \`true\` if all required parameter values have been
-- collected, or if the matched intent doesn\'t contain any required
-- parameters.
gcdvqrAllRequiredParamsPresent :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Bool)
gcdvqrAllRequiredParamsPresent
  = lens _gcdvqrAllRequiredParamsPresent
      (\ s a -> s{_gcdvqrAllRequiredParamsPresent = a})

-- | The intent detection confidence. Values range from 0.0 (completely
-- uncertain) to 1.0 (completely certain). This value is for informational
-- purpose only and is only used to help match the best intent within the
-- classification threshold. This value may change for the same end-user
-- expression at any time due to a model retraining or change in
-- implementation. If there are \`multiple knowledge_answers\` messages,
-- this value is set to the greatest \`knowledgeAnswers.match_confidence\`
-- value in the list.
gcdvqrIntentDetectionConfidence :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Double)
gcdvqrIntentDetectionConfidence
  = lens _gcdvqrIntentDetectionConfidence
      (\ s a -> s{_gcdvqrIntentDetectionConfidence = a})
      . mapping _Coerce

-- | The collection of rich messages to present to the user.
gcdvqrFulfillmentMessages :: Lens' GoogleCloudDialogflowV2QueryResult [GoogleCloudDialogflowV2IntentMessage]
gcdvqrFulfillmentMessages
  = lens _gcdvqrFulfillmentMessages
      (\ s a -> s{_gcdvqrFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | The Speech recognition confidence between 0.0 and 1.0. A higher number
-- indicates an estimated greater likelihood that the recognized words are
-- correct. The default of 0.0 is a sentinel value indicating that
-- confidence was not set. This field is not guaranteed to be accurate or
-- set. In particular this field isn\'t set for StreamingDetectIntent since
-- the streaming endpoint has separate confidence estimates per portion of
-- the audio in StreamingRecognitionResult.
gcdvqrSpeechRecognitionConfidence :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Double)
gcdvqrSpeechRecognitionConfidence
  = lens _gcdvqrSpeechRecognitionConfidence
      (\ s a -> s{_gcdvqrSpeechRecognitionConfidence = a})
      . mapping _Coerce

-- | The action name from the matched intent.
gcdvqrAction :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrAction
  = lens _gcdvqrAction (\ s a -> s{_gcdvqrAction = a})

-- | The intent that matched the conversational query. Some, not all fields
-- are filled in this message, including but not limited to: \`name\`,
-- \`display_name\`, \`end_interaction\` and \`is_fallback\`.
gcdvqrIntent :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2Intent)
gcdvqrIntent
  = lens _gcdvqrIntent (\ s a -> s{_gcdvqrIntent = a})

-- | The sentiment analysis result, which depends on the
-- \`sentiment_analysis_request_config\` specified in the request.
gcdvqrSentimentAnalysisResult :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2SentimentAnalysisResult)
gcdvqrSentimentAnalysisResult
  = lens _gcdvqrSentimentAnalysisResult
      (\ s a -> s{_gcdvqrSentimentAnalysisResult = a})

-- | The original conversational query text: - If natural language text was
-- provided as input, \`query_text\` contains a copy of the input. - If
-- natural language speech audio was provided as input, \`query_text\`
-- contains the speech recognition result. If speech recognizer produced
-- multiple alternatives, a particular one is picked. - If automatic spell
-- correction is enabled, \`query_text\` will contain the corrected user
-- input.
gcdvqrQueryText :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrQueryText
  = lens _gcdvqrQueryText
      (\ s a -> s{_gcdvqrQueryText = a})

-- | The text to be pronounced to the user or shown on the screen. Note: This
-- is a legacy field, \`fulfillment_messages\` should be preferred.
gcdvqrFulfillmentText :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrFulfillmentText
  = lens _gcdvqrFulfillmentText
      (\ s a -> s{_gcdvqrFulfillmentText = a})

-- | The collection of extracted parameters. Depending on your protocol or
-- client library language, this is a map, associative array, symbol table,
-- dictionary, or JSON object composed of a collection of (MapKey,
-- MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
-- MapValue type: - If parameter\'s entity type is a composite entity: map
-- - Else: string or number, depending on parameter value type - MapValue
-- value: - If parameter\'s entity type is a composite entity: map from
-- composite entity property names to property values - Else: parameter
-- value
gcdvqrParameters :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2QueryResultParameters)
gcdvqrParameters
  = lens _gcdvqrParameters
      (\ s a -> s{_gcdvqrParameters = a})

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
gcdvqrWebhookPayload :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2QueryResultWebhookPayload)
gcdvqrWebhookPayload
  = lens _gcdvqrWebhookPayload
      (\ s a -> s{_gcdvqrWebhookPayload = a})

-- | The collection of output contexts. If applicable,
-- \`output_contexts.parameters\` contains entries with name \`.original\`
-- containing the original parameter values before the query.
gcdvqrOutputContexts :: Lens' GoogleCloudDialogflowV2QueryResult [GoogleCloudDialogflowV2Context]
gcdvqrOutputContexts
  = lens _gcdvqrOutputContexts
      (\ s a -> s{_gcdvqrOutputContexts = a})
      . _Default
      . _Coerce

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`source\` field returned in the webhook response.
gcdvqrWebhookSource :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe Text)
gcdvqrWebhookSource
  = lens _gcdvqrWebhookSource
      (\ s a -> s{_gcdvqrWebhookSource = a})

-- | Free-form diagnostic information for the associated detect intent
-- request. The fields of this data can change without notice, so you
-- should not write code that depends on its structure. The data may
-- contain: - webhook call latency - webhook errors
gcdvqrDiagnosticInfo :: Lens' GoogleCloudDialogflowV2QueryResult (Maybe GoogleCloudDialogflowV2QueryResultDiagnosticInfo)
gcdvqrDiagnosticInfo
  = lens _gcdvqrDiagnosticInfo
      (\ s a -> s{_gcdvqrDiagnosticInfo = a})

instance FromJSON GoogleCloudDialogflowV2QueryResult
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2QueryResult"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResult' <$>
                   (o .:? "languageCode") <*>
                     (o .:? "allRequiredParamsPresent")
                     <*> (o .:? "intentDetectionConfidence")
                     <*> (o .:? "fulfillmentMessages" .!= mempty)
                     <*> (o .:? "speechRecognitionConfidence")
                     <*> (o .:? "action")
                     <*> (o .:? "intent")
                     <*> (o .:? "sentimentAnalysisResult")
                     <*> (o .:? "queryText")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "parameters")
                     <*> (o .:? "webhookPayload")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "webhookSource")
                     <*> (o .:? "diagnosticInfo"))

instance ToJSON GoogleCloudDialogflowV2QueryResult
         where
        toJSON GoogleCloudDialogflowV2QueryResult'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvqrLanguageCode,
                  ("allRequiredParamsPresent" .=) <$>
                    _gcdvqrAllRequiredParamsPresent,
                  ("intentDetectionConfidence" .=) <$>
                    _gcdvqrIntentDetectionConfidence,
                  ("fulfillmentMessages" .=) <$>
                    _gcdvqrFulfillmentMessages,
                  ("speechRecognitionConfidence" .=) <$>
                    _gcdvqrSpeechRecognitionConfidence,
                  ("action" .=) <$> _gcdvqrAction,
                  ("intent" .=) <$> _gcdvqrIntent,
                  ("sentimentAnalysisResult" .=) <$>
                    _gcdvqrSentimentAnalysisResult,
                  ("queryText" .=) <$> _gcdvqrQueryText,
                  ("fulfillmentText" .=) <$> _gcdvqrFulfillmentText,
                  ("parameters" .=) <$> _gcdvqrParameters,
                  ("webhookPayload" .=) <$> _gcdvqrWebhookPayload,
                  ("outputContexts" .=) <$> _gcdvqrOutputContexts,
                  ("webhookSource" .=) <$> _gcdvqrWebhookSource,
                  ("diagnosticInfo" .=) <$> _gcdvqrDiagnosticInfo])

-- | Represents a message posted into a conversation.
--
-- /See:/ 'googleCloudDialogflowV2Message' smart constructor.
data GoogleCloudDialogflowV2Message =
  GoogleCloudDialogflowV2Message'
    { _gcdvmLanguageCode      :: !(Maybe Text)
    , _gcdvmParticipantRole   :: !(Maybe GoogleCloudDialogflowV2MessageParticipantRole)
    , _gcdvmContent           :: !(Maybe Text)
    , _gcdvmMessageAnnotation :: !(Maybe GoogleCloudDialogflowV2MessageAnnotation)
    , _gcdvmName              :: !(Maybe Text)
    , _gcdvmParticipant       :: !(Maybe Text)
    , _gcdvmCreateTime        :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2Message' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvmLanguageCode'
--
-- * 'gcdvmParticipantRole'
--
-- * 'gcdvmContent'
--
-- * 'gcdvmMessageAnnotation'
--
-- * 'gcdvmName'
--
-- * 'gcdvmParticipant'
--
-- * 'gcdvmCreateTime'
googleCloudDialogflowV2Message
    :: GoogleCloudDialogflowV2Message
googleCloudDialogflowV2Message =
  GoogleCloudDialogflowV2Message'
    { _gcdvmLanguageCode = Nothing
    , _gcdvmParticipantRole = Nothing
    , _gcdvmContent = Nothing
    , _gcdvmMessageAnnotation = Nothing
    , _gcdvmName = Nothing
    , _gcdvmParticipant = Nothing
    , _gcdvmCreateTime = Nothing
    }


-- | Optional. The message language. This should be a
-- [BCP-47](https:\/\/www.rfc-editor.org\/rfc\/bcp\/bcp47.txt) language
-- tag. Example: \"en-US\".
gcdvmLanguageCode :: Lens' GoogleCloudDialogflowV2Message (Maybe Text)
gcdvmLanguageCode
  = lens _gcdvmLanguageCode
      (\ s a -> s{_gcdvmLanguageCode = a})

-- | Output only. The role of the participant.
gcdvmParticipantRole :: Lens' GoogleCloudDialogflowV2Message (Maybe GoogleCloudDialogflowV2MessageParticipantRole)
gcdvmParticipantRole
  = lens _gcdvmParticipantRole
      (\ s a -> s{_gcdvmParticipantRole = a})

-- | Required. The message content.
gcdvmContent :: Lens' GoogleCloudDialogflowV2Message (Maybe Text)
gcdvmContent
  = lens _gcdvmContent (\ s a -> s{_gcdvmContent = a})

-- | Output only. The annotation for the message.
gcdvmMessageAnnotation :: Lens' GoogleCloudDialogflowV2Message (Maybe GoogleCloudDialogflowV2MessageAnnotation)
gcdvmMessageAnnotation
  = lens _gcdvmMessageAnnotation
      (\ s a -> s{_gcdvmMessageAnnotation = a})

-- | The unique identifier of the message. Format:
-- \`projects\/\/conversations\/\/messages\/\`.
gcdvmName :: Lens' GoogleCloudDialogflowV2Message (Maybe Text)
gcdvmName
  = lens _gcdvmName (\ s a -> s{_gcdvmName = a})

-- | Output only. The participant that sends this message.
gcdvmParticipant :: Lens' GoogleCloudDialogflowV2Message (Maybe Text)
gcdvmParticipant
  = lens _gcdvmParticipant
      (\ s a -> s{_gcdvmParticipant = a})

-- | Output only. The time when the message was created.
gcdvmCreateTime :: Lens' GoogleCloudDialogflowV2Message (Maybe UTCTime)
gcdvmCreateTime
  = lens _gcdvmCreateTime
      (\ s a -> s{_gcdvmCreateTime = a})
      . mapping _DateTime

instance FromJSON GoogleCloudDialogflowV2Message
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2Message"
              (\ o ->
                 GoogleCloudDialogflowV2Message' <$>
                   (o .:? "languageCode") <*> (o .:? "participantRole")
                     <*> (o .:? "content")
                     <*> (o .:? "messageAnnotation")
                     <*> (o .:? "name")
                     <*> (o .:? "participant")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleCloudDialogflowV2Message where
        toJSON GoogleCloudDialogflowV2Message'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gcdvmLanguageCode,
                  ("participantRole" .=) <$> _gcdvmParticipantRole,
                  ("content" .=) <$> _gcdvmContent,
                  ("messageAnnotation" .=) <$> _gcdvmMessageAnnotation,
                  ("name" .=) <$> _gcdvmName,
                  ("participant" .=) <$> _gcdvmParticipant,
                  ("createTime" .=) <$> _gcdvmCreateTime])

-- | Actions on Google action to open a given url.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction' smart constructor.
data GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction =
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'
    { _gcdvimbccbcciouaURL :: !(Maybe Text)
    , _gcdvimbccbcciouaURLTypeHint :: !(Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbccbcciouaURL'
--
-- * 'gcdvimbccbcciouaURLTypeHint'
googleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
    :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
googleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction =
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'
    {_gcdvimbccbcciouaURL = Nothing, _gcdvimbccbcciouaURLTypeHint = Nothing}


-- | Required. URL
gcdvimbccbcciouaURL :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction (Maybe Text)
gcdvimbccbcciouaURL
  = lens _gcdvimbccbcciouaURL
      (\ s a -> s{_gcdvimbccbcciouaURL = a})

-- | Optional. Specifies the type of viewer that is used when opening the
-- URL. Defaults to opening via web browser.
gcdvimbccbcciouaURLTypeHint :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction (Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint)
gcdvimbccbcciouaURLTypeHint
  = lens _gcdvimbccbcciouaURLTypeHint
      (\ s a -> s{_gcdvimbccbcciouaURLTypeHint = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'
                   <$> (o .:? "url") <*> (o .:? "urlTypeHint"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _gcdvimbccbcciouaURL,
                  ("urlTypeHint" .=) <$> _gcdvimbccbcciouaURLTypeHint])

-- | Configuration of how speech should be synthesized.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1SynthesizeSpeechConfig' smart constructor.
data GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig =
  GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig'
    { _gcdcvsscVolumeGainDB     :: !(Maybe (Textual Double))
    , _gcdcvsscEffectsProFileId :: !(Maybe [Text])
    , _gcdcvsscVoice            :: !(Maybe GoogleCloudDialogflowCxV3beta1VoiceSelectionParams)
    , _gcdcvsscSpeakingRate     :: !(Maybe (Textual Double))
    , _gcdcvsscPitch            :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvsscVolumeGainDB'
--
-- * 'gcdcvsscEffectsProFileId'
--
-- * 'gcdcvsscVoice'
--
-- * 'gcdcvsscSpeakingRate'
--
-- * 'gcdcvsscPitch'
googleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
    :: GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
googleCloudDialogflowCxV3beta1SynthesizeSpeechConfig =
  GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig'
    { _gcdcvsscVolumeGainDB = Nothing
    , _gcdcvsscEffectsProFileId = Nothing
    , _gcdcvsscVoice = Nothing
    , _gcdcvsscSpeakingRate = Nothing
    , _gcdcvsscPitch = Nothing
    }


-- | Optional. Volume gain (in dB) of the normal native volume supported by
-- the specific voice, in the range [-96.0, 16.0]. If unset, or set to a
-- value of 0.0 (dB), will play at normal native signal amplitude. A value
-- of -6.0 (dB) will play at approximately half the amplitude of the normal
-- native signal amplitude. A value of +6.0 (dB) will play at approximately
-- twice the amplitude of the normal native signal amplitude. We strongly
-- recommend not to exceed +10 (dB) as there\'s usually no effective
-- increase in loudness for any value greater than that.
gcdcvsscVolumeGainDB :: Lens' GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig (Maybe Double)
gcdcvsscVolumeGainDB
  = lens _gcdcvsscVolumeGainDB
      (\ s a -> s{_gcdcvsscVolumeGainDB = a})
      . mapping _Coerce

-- | Optional. An identifier which selects \'audio effects\' profiles that
-- are applied on (post synthesized) text to speech. Effects are applied on
-- top of each other in the order they are given.
gcdcvsscEffectsProFileId :: Lens' GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig [Text]
gcdcvsscEffectsProFileId
  = lens _gcdcvsscEffectsProFileId
      (\ s a -> s{_gcdcvsscEffectsProFileId = a})
      . _Default
      . _Coerce

-- | Optional. The desired voice of the synthesized audio.
gcdcvsscVoice :: Lens' GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig (Maybe GoogleCloudDialogflowCxV3beta1VoiceSelectionParams)
gcdcvsscVoice
  = lens _gcdcvsscVoice
      (\ s a -> s{_gcdcvsscVoice = a})

-- | Optional. Speaking rate\/speed, in the range [0.25, 4.0]. 1.0 is the
-- normal native speed supported by the specific voice. 2.0 is twice as
-- fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0
-- speed. Any other values \< 0.25 or > 4.0 will return an error.
gcdcvsscSpeakingRate :: Lens' GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig (Maybe Double)
gcdcvsscSpeakingRate
  = lens _gcdcvsscSpeakingRate
      (\ s a -> s{_gcdcvsscSpeakingRate = a})
      . mapping _Coerce

-- | Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase
-- 20 semitones from the original pitch. -20 means decrease 20 semitones
-- from the original pitch.
gcdcvsscPitch :: Lens' GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig (Maybe Double)
gcdcvsscPitch
  = lens _gcdcvsscPitch
      (\ s a -> s{_gcdcvsscPitch = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig'
                   <$>
                   (o .:? "volumeGainDb") <*>
                     (o .:? "effectsProfileId" .!= mempty)
                     <*> (o .:? "voice")
                     <*> (o .:? "speakingRate")
                     <*> (o .:? "pitch"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig'{..}
          = object
              (catMaybes
                 [("volumeGainDb" .=) <$> _gcdcvsscVolumeGainDB,
                  ("effectsProfileId" .=) <$>
                    _gcdcvsscEffectsProFileId,
                  ("voice" .=) <$> _gcdcvsscVoice,
                  ("speakingRate" .=) <$> _gcdcvsscSpeakingRate,
                  ("pitch" .=) <$> _gcdcvsscPitch])

-- | The request message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookRequest' smart constructor.
data GoogleCloudDialogflowCxV3beta1WebhookRequest =
  GoogleCloudDialogflowCxV3beta1WebhookRequest'
    { _gcdcvwrPageInfo               :: !(Maybe GoogleCloudDialogflowCxV3beta1PageInfo)
    , _gcdcvwrSessionInfo            :: !(Maybe GoogleCloudDialogflowCxV3beta1SessionInfo)
    , _gcdcvwrPayload                :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestPayload)
    , _gcdcvwrFulfillmentInfo        :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo)
    , _gcdcvwrIntentInfo             :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo)
    , _gcdcvwrDetectIntentResponseId :: !(Maybe Text)
    , _gcdcvwrMessages               :: !(Maybe [GoogleCloudDialogflowCxV3beta1ResponseMessage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwrPageInfo'
--
-- * 'gcdcvwrSessionInfo'
--
-- * 'gcdcvwrPayload'
--
-- * 'gcdcvwrFulfillmentInfo'
--
-- * 'gcdcvwrIntentInfo'
--
-- * 'gcdcvwrDetectIntentResponseId'
--
-- * 'gcdcvwrMessages'
googleCloudDialogflowCxV3beta1WebhookRequest
    :: GoogleCloudDialogflowCxV3beta1WebhookRequest
googleCloudDialogflowCxV3beta1WebhookRequest =
  GoogleCloudDialogflowCxV3beta1WebhookRequest'
    { _gcdcvwrPageInfo = Nothing
    , _gcdcvwrSessionInfo = Nothing
    , _gcdcvwrPayload = Nothing
    , _gcdcvwrFulfillmentInfo = Nothing
    , _gcdcvwrIntentInfo = Nothing
    , _gcdcvwrDetectIntentResponseId = Nothing
    , _gcdcvwrMessages = Nothing
    }


-- | Information about page status.
gcdcvwrPageInfo :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequest (Maybe GoogleCloudDialogflowCxV3beta1PageInfo)
gcdcvwrPageInfo
  = lens _gcdcvwrPageInfo
      (\ s a -> s{_gcdcvwrPageInfo = a})

-- | Information about session status.
gcdcvwrSessionInfo :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequest (Maybe GoogleCloudDialogflowCxV3beta1SessionInfo)
gcdcvwrSessionInfo
  = lens _gcdcvwrSessionInfo
      (\ s a -> s{_gcdcvwrSessionInfo = a})

-- | Custom data set in QueryParameters.payload.
gcdcvwrPayload :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequest (Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestPayload)
gcdcvwrPayload
  = lens _gcdcvwrPayload
      (\ s a -> s{_gcdcvwrPayload = a})

-- | Always present. Information about the fulfillment that triggered this
-- webhook call.
gcdcvwrFulfillmentInfo :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequest (Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo)
gcdcvwrFulfillmentInfo
  = lens _gcdcvwrFulfillmentInfo
      (\ s a -> s{_gcdcvwrFulfillmentInfo = a})

-- | Information about the last matched intent.
gcdcvwrIntentInfo :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequest (Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo)
gcdcvwrIntentInfo
  = lens _gcdcvwrIntentInfo
      (\ s a -> s{_gcdcvwrIntentInfo = a})

-- | Always present. The unique identifier of the DetectIntentResponse that
-- will be returned to the API caller.
gcdcvwrDetectIntentResponseId :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequest (Maybe Text)
gcdcvwrDetectIntentResponseId
  = lens _gcdcvwrDetectIntentResponseId
      (\ s a -> s{_gcdcvwrDetectIntentResponseId = a})

-- | The list of rich message responses to present to the user. Webhook can
-- choose to append or replace this list in
-- WebhookResponse.fulfillment_response;
gcdcvwrMessages :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequest [GoogleCloudDialogflowCxV3beta1ResponseMessage]
gcdcvwrMessages
  = lens _gcdcvwrMessages
      (\ s a -> s{_gcdcvwrMessages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookRequest"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookRequest' <$>
                   (o .:? "pageInfo") <*> (o .:? "sessionInfo") <*>
                     (o .:? "payload")
                     <*> (o .:? "fulfillmentInfo")
                     <*> (o .:? "intentInfo")
                     <*> (o .:? "detectIntentResponseId")
                     <*> (o .:? "messages" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequest
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1WebhookRequest'{..}
          = object
              (catMaybes
                 [("pageInfo" .=) <$> _gcdcvwrPageInfo,
                  ("sessionInfo" .=) <$> _gcdcvwrSessionInfo,
                  ("payload" .=) <$> _gcdcvwrPayload,
                  ("fulfillmentInfo" .=) <$> _gcdcvwrFulfillmentInfo,
                  ("intentInfo" .=) <$> _gcdcvwrIntentInfo,
                  ("detectIntentResponseId" .=) <$>
                    _gcdcvwrDetectIntentResponseId,
                  ("messages" .=) <$> _gcdcvwrMessages])

-- | An object representing a latitude\/longitude pair. This is expressed as
-- a pair of doubles representing degrees latitude and degrees longitude.
-- Unless specified otherwise, this must conform to the WGS84 standard.
-- Values must be within normalized ranges.
--
-- /See:/ 'googleTypeLatLng' smart constructor.
data GoogleTypeLatLng =
  GoogleTypeLatLng'
    { _gtllLatitude  :: !(Maybe (Textual Double))
    , _gtllLongitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleTypeLatLng' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtllLatitude'
--
-- * 'gtllLongitude'
googleTypeLatLng
    :: GoogleTypeLatLng
googleTypeLatLng =
  GoogleTypeLatLng' {_gtllLatitude = Nothing, _gtllLongitude = Nothing}


-- | The latitude in degrees. It must be in the range [-90.0, +90.0].
gtllLatitude :: Lens' GoogleTypeLatLng (Maybe Double)
gtllLatitude
  = lens _gtllLatitude (\ s a -> s{_gtllLatitude = a})
      . mapping _Coerce

-- | The longitude in degrees. It must be in the range [-180.0, +180.0].
gtllLongitude :: Lens' GoogleTypeLatLng (Maybe Double)
gtllLongitude
  = lens _gtllLongitude
      (\ s a -> s{_gtllLongitude = a})
      . mapping _Coerce

instance FromJSON GoogleTypeLatLng where
        parseJSON
          = withObject "GoogleTypeLatLng"
              (\ o ->
                 GoogleTypeLatLng' <$>
                   (o .:? "latitude") <*> (o .:? "longitude"))

instance ToJSON GoogleTypeLatLng where
        toJSON GoogleTypeLatLng'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _gtllLatitude,
                  ("longitude" .=) <$> _gtllLongitude])

-- | Settings related to NLU.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1NluSettings' smart constructor.
data GoogleCloudDialogflowCxV3beta1NluSettings =
  GoogleCloudDialogflowCxV3beta1NluSettings'
    { _gcdcvnsModelTrainingMode       :: !(Maybe GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode)
    , _gcdcvnsModelType               :: !(Maybe GoogleCloudDialogflowCxV3beta1NluSettingsModelType)
    , _gcdcvnsClassificationThreshold :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1NluSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvnsModelTrainingMode'
--
-- * 'gcdcvnsModelType'
--
-- * 'gcdcvnsClassificationThreshold'
googleCloudDialogflowCxV3beta1NluSettings
    :: GoogleCloudDialogflowCxV3beta1NluSettings
googleCloudDialogflowCxV3beta1NluSettings =
  GoogleCloudDialogflowCxV3beta1NluSettings'
    { _gcdcvnsModelTrainingMode = Nothing
    , _gcdcvnsModelType = Nothing
    , _gcdcvnsClassificationThreshold = Nothing
    }


-- | Indicates NLU model training mode.
gcdcvnsModelTrainingMode :: Lens' GoogleCloudDialogflowCxV3beta1NluSettings (Maybe GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode)
gcdcvnsModelTrainingMode
  = lens _gcdcvnsModelTrainingMode
      (\ s a -> s{_gcdcvnsModelTrainingMode = a})

-- | Indicates the type of NLU model.
gcdcvnsModelType :: Lens' GoogleCloudDialogflowCxV3beta1NluSettings (Maybe GoogleCloudDialogflowCxV3beta1NluSettingsModelType)
gcdcvnsModelType
  = lens _gcdcvnsModelType
      (\ s a -> s{_gcdcvnsModelType = a})

-- | To filter out false positive results and still get variety in matched
-- natural language inputs for your agent, you can tune the machine
-- learning classification threshold. If the returned score value is less
-- than the threshold value, then a no-match event will be triggered. The
-- score values range from 0.0 (completely uncertain) to 1.0 (completely
-- certain). If set to 0.0, the default of 0.3 is used.
gcdcvnsClassificationThreshold :: Lens' GoogleCloudDialogflowCxV3beta1NluSettings (Maybe Double)
gcdcvnsClassificationThreshold
  = lens _gcdcvnsClassificationThreshold
      (\ s a -> s{_gcdcvnsClassificationThreshold = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1NluSettings
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1NluSettings"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1NluSettings' <$>
                   (o .:? "modelTrainingMode") <*> (o .:? "modelType")
                     <*> (o .:? "classificationThreshold"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1NluSettings
         where
        toJSON GoogleCloudDialogflowCxV3beta1NluSettings'{..}
          = object
              (catMaybes
                 [("modelTrainingMode" .=) <$>
                    _gcdcvnsModelTrainingMode,
                  ("modelType" .=) <$> _gcdcvnsModelType,
                  ("classificationThreshold" .=) <$>
                    _gcdcvnsClassificationThreshold])

-- | The free-form diagnostic info. For example, this field could contain
-- webhook call latency. The string keys of the Struct\'s fields map can
-- change without notice.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo =
  GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo'
    { _gcdcvqrdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqrdiAddtional'
googleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo
    :: HashMap Text JSONValue -- ^ 'gcdcvqrdiAddtional'
    -> GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo
googleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo pGcdcvqrdiAddtional_ =
  GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo'
    {_gcdcvqrdiAddtional = _Coerce # pGcdcvqrdiAddtional_}


-- | Properties of the object.
gcdcvqrdiAddtional :: Lens' GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo (HashMap Text JSONValue)
gcdcvqrdiAddtional
  = lens _gcdcvqrdiAddtional
      (\ s a -> s{_gcdcvqrdiAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo
         where
        toJSON = toJSON . _gcdcvqrdiAddtional

-- | The HTTP request headers to send together with webhook requests.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders =
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders'
    { _gcdcvwgwsrhAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwgwsrhAddtional'
googleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders
    :: HashMap Text Text -- ^ 'gcdcvwgwsrhAddtional'
    -> GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders
googleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders pGcdcvwgwsrhAddtional_ =
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders'
    {_gcdcvwgwsrhAddtional = _Coerce # pGcdcvwgwsrhAddtional_}


gcdcvwgwsrhAddtional :: Lens' GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders (HashMap Text Text)
gcdcvwgwsrhAddtional
  = lens _gcdcvwgwsrhAddtional
      (\ s a -> s{_gcdcvwgwsrhAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders
         where
        toJSON = toJSON . _gcdcvwgwsrhAddtional

-- | The response message for a webhook call. This response is validated by
-- the Dialogflow server. If validation fails, an error will be returned in
-- the QueryResult.diagnostic_info field. Setting JSON fields to an empty
-- value with the wrong type is a common error. To avoid this error: - Use
-- \`\"\"\` for empty strings - Use \`{}\` or \`null\` for empty objects -
-- Use \`[]\` or \`null\` for empty arrays For more information, see the
-- [Protocol Buffers Language
-- Guide](https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json).
--
-- /See:/ 'googleCloudDialogflowV2beta1WebhookResponse' smart constructor.
data GoogleCloudDialogflowV2beta1WebhookResponse =
  GoogleCloudDialogflowV2beta1WebhookResponse'
    { _gcdvwrFulfillmentMessages :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessage])
    , _gcdvwrPayload             :: !(Maybe GoogleCloudDialogflowV2beta1WebhookResponsePayload)
    , _gcdvwrFulfillmentText     :: !(Maybe Text)
    , _gcdvwrSource              :: !(Maybe Text)
    , _gcdvwrEndInteraction      :: !(Maybe Bool)
    , _gcdvwrOutputContexts      :: !(Maybe [GoogleCloudDialogflowV2beta1Context])
    , _gcdvwrFollowupEventInput  :: !(Maybe GoogleCloudDialogflowV2beta1EventInput)
    , _gcdvwrSessionEntityTypes  :: !(Maybe [GoogleCloudDialogflowV2beta1SessionEntityType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1WebhookResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrFulfillmentMessages'
--
-- * 'gcdvwrPayload'
--
-- * 'gcdvwrFulfillmentText'
--
-- * 'gcdvwrSource'
--
-- * 'gcdvwrEndInteraction'
--
-- * 'gcdvwrOutputContexts'
--
-- * 'gcdvwrFollowupEventInput'
--
-- * 'gcdvwrSessionEntityTypes'
googleCloudDialogflowV2beta1WebhookResponse
    :: GoogleCloudDialogflowV2beta1WebhookResponse
googleCloudDialogflowV2beta1WebhookResponse =
  GoogleCloudDialogflowV2beta1WebhookResponse'
    { _gcdvwrFulfillmentMessages = Nothing
    , _gcdvwrPayload = Nothing
    , _gcdvwrFulfillmentText = Nothing
    , _gcdvwrSource = Nothing
    , _gcdvwrEndInteraction = Nothing
    , _gcdvwrOutputContexts = Nothing
    , _gcdvwrFollowupEventInput = Nothing
    , _gcdvwrSessionEntityTypes = Nothing
    }


-- | Optional. The rich response messages intended for the end-user. When
-- provided, Dialogflow uses this field to populate
-- QueryResult.fulfillment_messages sent to the integration or API caller.
gcdvwrFulfillmentMessages :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse [GoogleCloudDialogflowV2beta1IntentMessage]
gcdvwrFulfillmentMessages
  = lens _gcdvwrFulfillmentMessages
      (\ s a -> s{_gcdvwrFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | Optional. This field can be used to pass custom data from your webhook
-- to the integration or API caller. Arbitrary JSON objects are supported.
-- When provided, Dialogflow uses this field to populate
-- QueryResult.webhook_payload sent to the integration or API caller. This
-- field is also used by the [Google Assistant
-- integration](https:\/\/cloud.google.com\/dialogflow\/docs\/integrations\/aog)
-- for rich response messages. See the format definition at [Google
-- Assistant Dialogflow webhook
-- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
gcdvwrPayload :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe GoogleCloudDialogflowV2beta1WebhookResponsePayload)
gcdvwrPayload
  = lens _gcdvwrPayload
      (\ s a -> s{_gcdvwrPayload = a})

-- | Optional. The text response message intended for the end-user. It is
-- recommended to use \`fulfillment_messages.text.text[0]\` instead. When
-- provided, Dialogflow uses this field to populate
-- QueryResult.fulfillment_text sent to the integration or API caller.
gcdvwrFulfillmentText :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe Text)
gcdvwrFulfillmentText
  = lens _gcdvwrFulfillmentText
      (\ s a -> s{_gcdvwrFulfillmentText = a})

-- | Optional. A custom field used to identify the webhook source. Arbitrary
-- strings are supported. When provided, Dialogflow uses this field to
-- populate QueryResult.webhook_source sent to the integration or API
-- caller.
gcdvwrSource :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe Text)
gcdvwrSource
  = lens _gcdvwrSource (\ s a -> s{_gcdvwrSource = a})

-- | Optional. Indicates that this intent ends an interaction. Some
-- integrations (e.g., Actions on Google or Dialogflow phone gateway) use
-- this information to close interaction with an end user. Default is
-- false.
gcdvwrEndInteraction :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe Bool)
gcdvwrEndInteraction
  = lens _gcdvwrEndInteraction
      (\ s a -> s{_gcdvwrEndInteraction = a})

-- | Optional. The collection of output contexts that will overwrite
-- currently active contexts for the session and reset their lifespans.
-- When provided, Dialogflow uses this field to populate
-- QueryResult.output_contexts sent to the integration or API caller.
gcdvwrOutputContexts :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse [GoogleCloudDialogflowV2beta1Context]
gcdvwrOutputContexts
  = lens _gcdvwrOutputContexts
      (\ s a -> s{_gcdvwrOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. Invokes the supplied events. When this field is set,
-- Dialogflow ignores the \`fulfillment_text\`, \`fulfillment_messages\`,
-- and \`payload\` fields.
gcdvwrFollowupEventInput :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse (Maybe GoogleCloudDialogflowV2beta1EventInput)
gcdvwrFollowupEventInput
  = lens _gcdvwrFollowupEventInput
      (\ s a -> s{_gcdvwrFollowupEventInput = a})

-- | Optional. Additional session entity types to replace or extend developer
-- entity types with. The entity synonyms apply to all languages and
-- persist for the session. Setting this data from a webhook overwrites the
-- session entity types that have been set using \`detectIntent\`,
-- \`streamingDetectIntent\` or SessionEntityType management methods.
gcdvwrSessionEntityTypes :: Lens' GoogleCloudDialogflowV2beta1WebhookResponse [GoogleCloudDialogflowV2beta1SessionEntityType]
gcdvwrSessionEntityTypes
  = lens _gcdvwrSessionEntityTypes
      (\ s a -> s{_gcdvwrSessionEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1WebhookResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1WebhookResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1WebhookResponse' <$>
                   (o .:? "fulfillmentMessages" .!= mempty) <*>
                     (o .:? "payload")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "source")
                     <*> (o .:? "endInteraction")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "followupEventInput")
                     <*> (o .:? "sessionEntityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1WebhookResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1WebhookResponse'{..}
          = object
              (catMaybes
                 [("fulfillmentMessages" .=) <$>
                    _gcdvwrFulfillmentMessages,
                  ("payload" .=) <$> _gcdvwrPayload,
                  ("fulfillmentText" .=) <$> _gcdvwrFulfillmentText,
                  ("source" .=) <$> _gcdvwrSource,
                  ("endInteraction" .=) <$> _gcdvwrEndInteraction,
                  ("outputContexts" .=) <$> _gcdvwrOutputContexts,
                  ("followupEventInput" .=) <$>
                    _gcdvwrFollowupEventInput,
                  ("sessionEntityTypes" .=) <$>
                    _gcdvwrSessionEntityTypes])

-- | Represents parameter information.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo' smart constructor.
data GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo =
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo'
    { _gcdcvpifipiJustCollected :: !(Maybe Bool)
    , _gcdcvpifipiState         :: !(Maybe GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState)
    , _gcdcvpifipiValue         :: !(Maybe JSONValue)
    , _gcdcvpifipiRequired      :: !(Maybe Bool)
    , _gcdcvpifipiDisplayName   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvpifipiJustCollected'
--
-- * 'gcdcvpifipiState'
--
-- * 'gcdcvpifipiValue'
--
-- * 'gcdcvpifipiRequired'
--
-- * 'gcdcvpifipiDisplayName'
googleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
    :: GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
googleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo =
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo'
    { _gcdcvpifipiJustCollected = Nothing
    , _gcdcvpifipiState = Nothing
    , _gcdcvpifipiValue = Nothing
    , _gcdcvpifipiRequired = Nothing
    , _gcdcvpifipiDisplayName = Nothing
    }


-- | Optional for WebhookRequest. Ignored for WebhookResponse. Indicates if
-- the parameter value was just collected on the last conversation turn.
gcdcvpifipiJustCollected :: Lens' GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo (Maybe Bool)
gcdcvpifipiJustCollected
  = lens _gcdcvpifipiJustCollected
      (\ s a -> s{_gcdcvpifipiJustCollected = a})

-- | Always present for WebhookRequest. Required for WebhookResponse. The
-- state of the parameter. This field can be set to INVALID by the webhook
-- to invalidate the parameter; other values set by the webhook will be
-- ignored.
gcdcvpifipiState :: Lens' GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo (Maybe GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfoState)
gcdcvpifipiState
  = lens _gcdcvpifipiState
      (\ s a -> s{_gcdcvpifipiState = a})

-- | Optional for both WebhookRequest and WebhookResponse. The value of the
-- parameter. This field can be set by the webhook to change the parameter
-- value.
gcdcvpifipiValue :: Lens' GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo (Maybe JSONValue)
gcdcvpifipiValue
  = lens _gcdcvpifipiValue
      (\ s a -> s{_gcdcvpifipiValue = a})

-- | Optional for both WebhookRequest and WebhookResponse. Indicates whether
-- the parameter is required. Optional parameters will not trigger prompts;
-- however, they are filled if the user specifies them. Required parameters
-- must be filled before form filling concludes.
gcdcvpifipiRequired :: Lens' GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo (Maybe Bool)
gcdcvpifipiRequired
  = lens _gcdcvpifipiRequired
      (\ s a -> s{_gcdcvpifipiRequired = a})

-- | Always present for WebhookRequest. Required for WebhookResponse. The
-- human-readable name of the parameter, unique within the form. This field
-- cannot be modified by the webhook.
gcdcvpifipiDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo (Maybe Text)
gcdcvpifipiDisplayName
  = lens _gcdcvpifipiDisplayName
      (\ s a -> s{_gcdcvpifipiDisplayName = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo'
                   <$>
                   (o .:? "justCollected") <*> (o .:? "state") <*>
                     (o .:? "value")
                     <*> (o .:? "required")
                     <*> (o .:? "displayName"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo'{..}
          = object
              (catMaybes
                 [("justCollected" .=) <$> _gcdcvpifipiJustCollected,
                  ("state" .=) <$> _gcdcvpifipiState,
                  ("value" .=) <$> _gcdcvpifipiValue,
                  ("required" .=) <$> _gcdcvpifipiRequired,
                  ("displayName" .=) <$> _gcdcvpifipiDisplayName])

-- | Response media object for media content card.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject =
  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject'
    { _gcdvimmcrmoIcon        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimmcrmoName        :: !(Maybe Text)
    , _gcdvimmcrmoContentURL  :: !(Maybe Text)
    , _gcdvimmcrmoLargeImage  :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimmcrmoDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimmcrmoIcon'
--
-- * 'gcdvimmcrmoName'
--
-- * 'gcdvimmcrmoContentURL'
--
-- * 'gcdvimmcrmoLargeImage'
--
-- * 'gcdvimmcrmoDescription'
googleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
    :: GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
googleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject =
  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject'
    { _gcdvimmcrmoIcon = Nothing
    , _gcdvimmcrmoName = Nothing
    , _gcdvimmcrmoContentURL = Nothing
    , _gcdvimmcrmoLargeImage = Nothing
    , _gcdvimmcrmoDescription = Nothing
    }


-- | Optional. Icon to display above media content.
gcdvimmcrmoIcon :: Lens' GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimmcrmoIcon
  = lens _gcdvimmcrmoIcon
      (\ s a -> s{_gcdvimmcrmoIcon = a})

-- | Required. Name of media card.
gcdvimmcrmoName :: Lens' GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject (Maybe Text)
gcdvimmcrmoName
  = lens _gcdvimmcrmoName
      (\ s a -> s{_gcdvimmcrmoName = a})

-- | Required. Url where the media is stored.
gcdvimmcrmoContentURL :: Lens' GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject (Maybe Text)
gcdvimmcrmoContentURL
  = lens _gcdvimmcrmoContentURL
      (\ s a -> s{_gcdvimmcrmoContentURL = a})

-- | Optional. Image to display above media content.
gcdvimmcrmoLargeImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimmcrmoLargeImage
  = lens _gcdvimmcrmoLargeImage
      (\ s a -> s{_gcdvimmcrmoLargeImage = a})

-- | Optional. Description of media card.
gcdvimmcrmoDescription :: Lens' GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject (Maybe Text)
gcdvimmcrmoDescription
  = lens _gcdvimmcrmoDescription
      (\ s a -> s{_gcdvimmcrmoDescription = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject'
                   <$>
                   (o .:? "icon") <*> (o .:? "name") <*>
                     (o .:? "contentUrl")
                     <*> (o .:? "largeImage")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject'{..}
          = object
              (catMaybes
                 [("icon" .=) <$> _gcdvimmcrmoIcon,
                  ("name" .=) <$> _gcdvimmcrmoName,
                  ("contentUrl" .=) <$> _gcdvimmcrmoContentURL,
                  ("largeImage" .=) <$> _gcdvimmcrmoLargeImage,
                  ("description" .=) <$> _gcdvimmcrmoDescription])

-- | The collection of parameters associated with the event. Depending on
-- your protocol or client library language, this is a map, associative
-- array, symbol table, dictionary, or JSON object composed of a collection
-- of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value:
-- parameter name - MapValue type: - If parameter\'s entity type is a
-- composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
--
-- /See:/ 'googleCloudDialogflowV2beta1EventInputParameters' smart constructor.
newtype GoogleCloudDialogflowV2beta1EventInputParameters =
  GoogleCloudDialogflowV2beta1EventInputParameters'
    { _gcdveipAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1EventInputParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveipAddtional'
googleCloudDialogflowV2beta1EventInputParameters
    :: HashMap Text JSONValue -- ^ 'gcdveipAddtional'
    -> GoogleCloudDialogflowV2beta1EventInputParameters
googleCloudDialogflowV2beta1EventInputParameters pGcdveipAddtional_ =
  GoogleCloudDialogflowV2beta1EventInputParameters'
    {_gcdveipAddtional = _Coerce # pGcdveipAddtional_}


-- | Properties of the object.
gcdveipAddtional :: Lens' GoogleCloudDialogflowV2beta1EventInputParameters (HashMap Text JSONValue)
gcdveipAddtional
  = lens _gcdveipAddtional
      (\ s a -> s{_gcdveipAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1EventInputParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1EventInputParameters"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EventInputParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1EventInputParameters
         where
        toJSON = toJSON . _gcdveipAddtional

-- | Response of FulfillIntent
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FulfillIntentResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1FulfillIntentResponse =
  GoogleCloudDialogflowCxV3beta1FulfillIntentResponse'
    { _gOutputAudioConfig :: !(Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
    , _gResponseId        :: !(Maybe Text)
    , _gOutputAudio       :: !(Maybe Bytes)
    , _gQueryResult       :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FulfillIntentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gOutputAudioConfig'
--
-- * 'gResponseId'
--
-- * 'gOutputAudio'
--
-- * 'gQueryResult'
googleCloudDialogflowCxV3beta1FulfillIntentResponse
    :: GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
googleCloudDialogflowCxV3beta1FulfillIntentResponse =
  GoogleCloudDialogflowCxV3beta1FulfillIntentResponse'
    { _gOutputAudioConfig = Nothing
    , _gResponseId = Nothing
    , _gOutputAudio = Nothing
    , _gQueryResult = Nothing
    }


-- | The config used by the speech synthesizer to generate the output audio.
gOutputAudioConfig :: Lens' GoogleCloudDialogflowCxV3beta1FulfillIntentResponse (Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
gOutputAudioConfig
  = lens _gOutputAudioConfig
      (\ s a -> s{_gOutputAudioConfig = a})

-- | Output only. The unique identifier of the response. It can be used to
-- locate a response in the training example set or for reporting issues.
gResponseId :: Lens' GoogleCloudDialogflowCxV3beta1FulfillIntentResponse (Maybe Text)
gResponseId
  = lens _gResponseId (\ s a -> s{_gResponseId = a})

-- | The audio data bytes encoded as specified in the request. Note: The
-- output audio is generated based on the values of default platform text
-- responses found in the \`query_result.response_messages\` field. If
-- multiple default text responses exist, they will be concatenated when
-- generating audio. If no default platform text responses exist, the
-- generated audio content will be empty. In some scenarios, multiple
-- output audio fields may be present in the response structure. In these
-- cases, only the top-most-level audio output has content.
gOutputAudio :: Lens' GoogleCloudDialogflowCxV3beta1FulfillIntentResponse (Maybe ByteString)
gOutputAudio
  = lens _gOutputAudio (\ s a -> s{_gOutputAudio = a})
      . mapping _Bytes

-- | The result of the conversational query.
gQueryResult :: Lens' GoogleCloudDialogflowCxV3beta1FulfillIntentResponse (Maybe GoogleCloudDialogflowCxV3beta1QueryResult)
gQueryResult
  = lens _gQueryResult (\ s a -> s{_gQueryResult = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FulfillIntentResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FulfillIntentResponse'
                   <$>
                   (o .:? "outputAudioConfig") <*> (o .:? "responseId")
                     <*> (o .:? "outputAudio")
                     <*> (o .:? "queryResult"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FulfillIntentResponse'{..}
          = object
              (catMaybes
                 [("outputAudioConfig" .=) <$> _gOutputAudioConfig,
                  ("responseId" .=) <$> _gResponseId,
                  ("outputAudio" .=) <$> _gOutputAudio,
                  ("queryResult" .=) <$> _gQueryResult])

-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular, for the Dialogflow Phone
-- Gateway integration, this field has the form: { \"telephony\": {
-- \"caller_id\": \"+18558363987\" } } Note: The caller ID field
-- (\`caller_id\`) will be redacted for Trial Edition agents and populated
-- with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Essentials Edition
-- agents.
--
-- /See:/ 'googleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload'
    { _gcdvodirpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvodirpAddtional'
googleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
    :: HashMap Text JSONValue -- ^ 'gcdvodirpAddtional'
    -> GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
googleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload pGcdvodirpAddtional_ =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload'
    {_gcdvodirpAddtional = _Coerce # pGcdvodirpAddtional_}


-- | Properties of the object.
gcdvodirpAddtional :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload (HashMap Text JSONValue)
gcdvodirpAddtional
  = lens _gcdvodirpAddtional
      (\ s a -> s{_gcdvodirpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload
         where
        toJSON = toJSON . _gcdvodirpAddtional

-- | The quick replies response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageQuickReplies' smart constructor.
data GoogleCloudDialogflowV2IntentMessageQuickReplies =
  GoogleCloudDialogflowV2IntentMessageQuickReplies'
    { _gcdvimqrTitle        :: !(Maybe Text)
    , _gcdvimqrQuickReplies :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageQuickReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimqrTitle'
--
-- * 'gcdvimqrQuickReplies'
googleCloudDialogflowV2IntentMessageQuickReplies
    :: GoogleCloudDialogflowV2IntentMessageQuickReplies
googleCloudDialogflowV2IntentMessageQuickReplies =
  GoogleCloudDialogflowV2IntentMessageQuickReplies'
    {_gcdvimqrTitle = Nothing, _gcdvimqrQuickReplies = Nothing}


-- | Optional. The title of the collection of quick replies.
gcdvimqrTitle :: Lens' GoogleCloudDialogflowV2IntentMessageQuickReplies (Maybe Text)
gcdvimqrTitle
  = lens _gcdvimqrTitle
      (\ s a -> s{_gcdvimqrTitle = a})

-- | Optional. The collection of quick replies.
gcdvimqrQuickReplies :: Lens' GoogleCloudDialogflowV2IntentMessageQuickReplies [Text]
gcdvimqrQuickReplies
  = lens _gcdvimqrQuickReplies
      (\ s a -> s{_gcdvimqrQuickReplies = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageQuickReplies
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageQuickReplies"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageQuickReplies' <$>
                   (o .:? "title") <*>
                     (o .:? "quickReplies" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageQuickReplies
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageQuickReplies'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _gcdvimqrTitle,
                  ("quickReplies" .=) <$> _gcdvimqrQuickReplies])

-- | Represents the result of querying a Knowledge base.
--
-- /See:/ 'googleCloudDialogflowV2beta1KnowledgeAnswers' smart constructor.
newtype GoogleCloudDialogflowV2beta1KnowledgeAnswers =
  GoogleCloudDialogflowV2beta1KnowledgeAnswers'
    { _gcdvkaAnswers :: Maybe [GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1KnowledgeAnswers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvkaAnswers'
googleCloudDialogflowV2beta1KnowledgeAnswers
    :: GoogleCloudDialogflowV2beta1KnowledgeAnswers
googleCloudDialogflowV2beta1KnowledgeAnswers =
  GoogleCloudDialogflowV2beta1KnowledgeAnswers' {_gcdvkaAnswers = Nothing}


-- | A list of answers from Knowledge Connector.
gcdvkaAnswers :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswers [GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer]
gcdvkaAnswers
  = lens _gcdvkaAnswers
      (\ s a -> s{_gcdvkaAnswers = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswers
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1KnowledgeAnswers"
              (\ o ->
                 GoogleCloudDialogflowV2beta1KnowledgeAnswers' <$>
                   (o .:? "answers" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswers
         where
        toJSON
          GoogleCloudDialogflowV2beta1KnowledgeAnswers'{..}
          = object
              (catMaybes [("answers" .=) <$> _gcdvkaAnswers])

-- | Optional. Contains information about a button.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCardButton' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageCardButton'
    { _gcdvimcbText     :: !(Maybe Text)
    , _gcdvimcbPostback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcbText'
--
-- * 'gcdvimcbPostback'
googleCloudDialogflowV2beta1IntentMessageCardButton
    :: GoogleCloudDialogflowV2beta1IntentMessageCardButton
googleCloudDialogflowV2beta1IntentMessageCardButton =
  GoogleCloudDialogflowV2beta1IntentMessageCardButton'
    {_gcdvimcbText = Nothing, _gcdvimcbPostback = Nothing}


-- | Optional. The text to show on the button.
gcdvimcbText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCardButton (Maybe Text)
gcdvimcbText
  = lens _gcdvimcbText (\ s a -> s{_gcdvimcbText = a})

-- | Optional. The text to send back to the Dialogflow API or a URI to open.
gcdvimcbPostback :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCardButton (Maybe Text)
gcdvimcbPostback
  = lens _gcdvimcbPostback
      (\ s a -> s{_gcdvimcbPostback = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCardButton'
                   <$> (o .:? "text") <*> (o .:? "postback"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCardButton
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCardButton'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvimcbText,
                  ("postback" .=) <$> _gcdvimcbPostback])

-- | Each case has a Boolean condition. When it is evaluated to be True, the
-- corresponding messages will be selected and evaluated recursively.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase' smart constructor.
data GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase =
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase'
    { _gcdcvfcccCaseContent :: !(Maybe [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent])
    , _gcdcvfcccCondition   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfcccCaseContent'
--
-- * 'gcdcvfcccCondition'
googleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
    :: GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
googleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase =
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase'
    {_gcdcvfcccCaseContent = Nothing, _gcdcvfcccCondition = Nothing}


-- | A list of case content.
gcdcvfcccCaseContent :: Lens' GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent]
gcdcvfcccCaseContent
  = lens _gcdcvfcccCaseContent
      (\ s a -> s{_gcdcvfcccCaseContent = a})
      . _Default
      . _Coerce

-- | The condition to activate and select this case. Empty means the
-- condition is always true. The condition is evaluated against form
-- parameters or session parameters. See the [conditions
-- reference](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/condition).
gcdcvfcccCondition :: Lens' GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase (Maybe Text)
gcdcvfcccCondition
  = lens _gcdcvfcccCondition
      (\ s a -> s{_gcdcvfcccCondition = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase'
                   <$>
                   (o .:? "caseContent" .!= mempty) <*>
                     (o .:? "condition"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase'{..}
          = object
              (catMaybes
                 [("caseContent" .=) <$> _gcdcvfcccCaseContent,
                  ("condition" .=) <$> _gcdcvfcccCondition])

-- | Optional. The collection of parameters associated with this context.
-- Depending on your protocol or client library language, this is a map,
-- associative array, symbol table, dictionary, or JSON object composed of
-- a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
-- value: parameter name - MapValue type: - If parameter\'s entity type is
-- a composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
--
-- /See:/ 'googleCloudDialogflowV2beta1ContextParameters' smart constructor.
newtype GoogleCloudDialogflowV2beta1ContextParameters =
  GoogleCloudDialogflowV2beta1ContextParameters'
    { _gcdvcpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1ContextParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvcpAddtional'
googleCloudDialogflowV2beta1ContextParameters
    :: HashMap Text JSONValue -- ^ 'gcdvcpAddtional'
    -> GoogleCloudDialogflowV2beta1ContextParameters
googleCloudDialogflowV2beta1ContextParameters pGcdvcpAddtional_ =
  GoogleCloudDialogflowV2beta1ContextParameters'
    {_gcdvcpAddtional = _Coerce # pGcdvcpAddtional_}


-- | Properties of the object.
gcdvcpAddtional :: Lens' GoogleCloudDialogflowV2beta1ContextParameters (HashMap Text JSONValue)
gcdvcpAddtional
  = lens _gcdvcpAddtional
      (\ s a -> s{_gcdvcpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1ContextParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1ContextParameters"
              (\ o ->
                 GoogleCloudDialogflowV2beta1ContextParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1ContextParameters
         where
        toJSON = toJSON . _gcdvcpAddtional

-- | The card for presenting a list of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageListSelect' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageListSelect =
  GoogleCloudDialogflowV2beta1IntentMessageListSelect'
    { _gcdvimlsItems    :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageListSelectItem])
    , _gcdvimlsSubtitle :: !(Maybe Text)
    , _gcdvimlsTitle    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageListSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlsItems'
--
-- * 'gcdvimlsSubtitle'
--
-- * 'gcdvimlsTitle'
googleCloudDialogflowV2beta1IntentMessageListSelect
    :: GoogleCloudDialogflowV2beta1IntentMessageListSelect
googleCloudDialogflowV2beta1IntentMessageListSelect =
  GoogleCloudDialogflowV2beta1IntentMessageListSelect'
    { _gcdvimlsItems = Nothing
    , _gcdvimlsSubtitle = Nothing
    , _gcdvimlsTitle = Nothing
    }


-- | Required. List items.
gcdvimlsItems :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelect [GoogleCloudDialogflowV2beta1IntentMessageListSelectItem]
gcdvimlsItems
  = lens _gcdvimlsItems
      (\ s a -> s{_gcdvimlsItems = a})
      . _Default
      . _Coerce

-- | Optional. Subtitle of the list.
gcdvimlsSubtitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelect (Maybe Text)
gcdvimlsSubtitle
  = lens _gcdvimlsSubtitle
      (\ s a -> s{_gcdvimlsSubtitle = a})

-- | Optional. The overall title of the list.
gcdvimlsTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelect (Maybe Text)
gcdvimlsTitle
  = lens _gcdvimlsTitle
      (\ s a -> s{_gcdvimlsTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageListSelect"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageListSelect'
                   <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "subtitle") <*>
                     (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelect
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageListSelect'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _gcdvimlsItems,
                  ("subtitle" .=) <$> _gcdvimlsSubtitle,
                  ("title" .=) <$> _gcdvimlsTitle])

-- | Plays audio from a file in Telephony Gateway.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'
    { _gcdvimtpaAudioURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtpaAudioURI'
googleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
    :: GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
googleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'
    {_gcdvimtpaAudioURI = Nothing}


-- | Required. URI to a Google Cloud Storage object containing the audio to
-- play, e.g., \"gs:\/\/bucket\/object\". The object must contain a single
-- channel (mono) of linear PCM audio (2 bytes \/ sample) at 8kHz. This
-- object must be readable by the
-- \`service-\'gcp-sa-dialogflow.iam.gserviceaccount.com\` service account
-- where is the number of the Telephony Gateway project (usually the same
-- as the Dialogflow agent project). If the Google Cloud Storage bucket is
-- in the Telephony Gateway project, this permission is added by default
-- when enabling the Dialogflow V2 API. For audio from other sources,
-- consider using the \`TelephonySynthesizeSpeech\` message with SSML.
gcdvimtpaAudioURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio (Maybe Text)
gcdvimtpaAudioURI
  = lens _gcdvimtpaAudioURI
      (\ s a -> s{_gcdvimtpaAudioURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'
                   <$> (o .:? "audioUri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio'{..}
          = object
              (catMaybes [("audioUri" .=) <$> _gcdvimtpaAudioURI])

-- | Represents a part of a training phrase.
--
-- /See:/ 'googleCloudDialogflowV2IntentTrainingPhrasePart' smart constructor.
data GoogleCloudDialogflowV2IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2IntentTrainingPhrasePart'
    { _gcdvitppText        :: !(Maybe Text)
    , _gcdvitppUserDefined :: !(Maybe Bool)
    , _gcdvitppEntityType  :: !(Maybe Text)
    , _gcdvitppAlias       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentTrainingPhrasePart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvitppText'
--
-- * 'gcdvitppUserDefined'
--
-- * 'gcdvitppEntityType'
--
-- * 'gcdvitppAlias'
googleCloudDialogflowV2IntentTrainingPhrasePart
    :: GoogleCloudDialogflowV2IntentTrainingPhrasePart
googleCloudDialogflowV2IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2IntentTrainingPhrasePart'
    { _gcdvitppText = Nothing
    , _gcdvitppUserDefined = Nothing
    , _gcdvitppEntityType = Nothing
    , _gcdvitppAlias = Nothing
    }


-- | Required. The text for this part.
gcdvitppText :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Text)
gcdvitppText
  = lens _gcdvitppText (\ s a -> s{_gcdvitppText = a})

-- | Optional. Indicates whether the text was manually annotated. This field
-- is set to true when the Dialogflow Console is used to manually annotate
-- the part. When creating an annotated part with the API, you must set
-- this to true.
gcdvitppUserDefined :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Bool)
gcdvitppUserDefined
  = lens _gcdvitppUserDefined
      (\ s a -> s{_gcdvitppUserDefined = a})

-- | Optional. The entity type name prefixed with \`\'\`. This field is
-- required for annotated parts of the training phrase.
gcdvitppEntityType :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Text)
gcdvitppEntityType
  = lens _gcdvitppEntityType
      (\ s a -> s{_gcdvitppEntityType = a})

-- | Optional. The parameter name for the value extracted from the annotated
-- part of the example. This field is required for annotated parts of the
-- training phrase.
gcdvitppAlias :: Lens' GoogleCloudDialogflowV2IntentTrainingPhrasePart (Maybe Text)
gcdvitppAlias
  = lens _gcdvitppAlias
      (\ s a -> s{_gcdvitppAlias = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentTrainingPhrasePart
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentTrainingPhrasePart"
              (\ o ->
                 GoogleCloudDialogflowV2IntentTrainingPhrasePart' <$>
                   (o .:? "text") <*> (o .:? "userDefined") <*>
                     (o .:? "entityType")
                     <*> (o .:? "alias"))

instance ToJSON
           GoogleCloudDialogflowV2IntentTrainingPhrasePart
         where
        toJSON
          GoogleCloudDialogflowV2IntentTrainingPhrasePart'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvitppText,
                  ("userDefined" .=) <$> _gcdvitppUserDefined,
                  ("entityType" .=) <$> _gcdvitppEntityType,
                  ("alias" .=) <$> _gcdvitppAlias])

-- | The response message for Agents.ImportAgent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ImportAgentResponse' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ImportAgentResponse =
  GoogleCloudDialogflowCxV3beta1ImportAgentResponse'
    { _gcdcviarAgent :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ImportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcviarAgent'
googleCloudDialogflowCxV3beta1ImportAgentResponse
    :: GoogleCloudDialogflowCxV3beta1ImportAgentResponse
googleCloudDialogflowCxV3beta1ImportAgentResponse =
  GoogleCloudDialogflowCxV3beta1ImportAgentResponse' {_gcdcviarAgent = Nothing}


-- | The unique identifier of the new agent. Format:
-- \`projects\/\/locations\/\/agents\/\`.
gcdcviarAgent :: Lens' GoogleCloudDialogflowCxV3beta1ImportAgentResponse (Maybe Text)
gcdcviarAgent
  = lens _gcdcviarAgent
      (\ s a -> s{_gcdcviarAgent = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ImportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ImportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ImportAgentResponse'
                   <$> (o .:? "agent"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ImportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ImportAgentResponse'{..}
          = object
              (catMaybes [("agent" .=) <$> _gcdcviarAgent])

-- | An event handler specifies an event that can be handled during a
-- session. When the specified event happens, the following actions are
-- taken in order: * If there is a \`trigger_fulfillment\` associated with
-- the event, it will be called. * If there is a \`target_page\` associated
-- with the event, the session will transition into the specified page. *
-- If there is a \`target_flow\` associated with the event, the session
-- will transition into the specified flow.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1EventHandler' smart constructor.
data GoogleCloudDialogflowCxV3beta1EventHandler =
  GoogleCloudDialogflowCxV3beta1EventHandler'
    { _gcdcvehEvent              :: !(Maybe Text)
    , _gcdcvehTriggerFulfillment :: !(Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
    , _gcdcvehName               :: !(Maybe Text)
    , _gcdcvehTargetPage         :: !(Maybe Text)
    , _gcdcvehTargetFlow         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1EventHandler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvehEvent'
--
-- * 'gcdcvehTriggerFulfillment'
--
-- * 'gcdcvehName'
--
-- * 'gcdcvehTargetPage'
--
-- * 'gcdcvehTargetFlow'
googleCloudDialogflowCxV3beta1EventHandler
    :: GoogleCloudDialogflowCxV3beta1EventHandler
googleCloudDialogflowCxV3beta1EventHandler =
  GoogleCloudDialogflowCxV3beta1EventHandler'
    { _gcdcvehEvent = Nothing
    , _gcdcvehTriggerFulfillment = Nothing
    , _gcdcvehName = Nothing
    , _gcdcvehTargetPage = Nothing
    , _gcdcvehTargetFlow = Nothing
    }


-- | Required. The name of the event to handle.
gcdcvehEvent :: Lens' GoogleCloudDialogflowCxV3beta1EventHandler (Maybe Text)
gcdcvehEvent
  = lens _gcdcvehEvent (\ s a -> s{_gcdcvehEvent = a})

-- | The fulfillment to call when the event occurs. Handling webhook errors
-- with a fulfillment enabled with webhook could cause infinite loop. It is
-- invalid to specify such fulfillment for a handler handling webhooks.
gcdcvehTriggerFulfillment :: Lens' GoogleCloudDialogflowCxV3beta1EventHandler (Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
gcdcvehTriggerFulfillment
  = lens _gcdcvehTriggerFulfillment
      (\ s a -> s{_gcdcvehTriggerFulfillment = a})

-- | Output only. The unique identifier of this event handler.
gcdcvehName :: Lens' GoogleCloudDialogflowCxV3beta1EventHandler (Maybe Text)
gcdcvehName
  = lens _gcdcvehName (\ s a -> s{_gcdcvehName = a})

-- | The target page to transition to. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/pages\/\`.
gcdcvehTargetPage :: Lens' GoogleCloudDialogflowCxV3beta1EventHandler (Maybe Text)
gcdcvehTargetPage
  = lens _gcdcvehTargetPage
      (\ s a -> s{_gcdcvehTargetPage = a})

-- | The target flow to transition to. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
gcdcvehTargetFlow :: Lens' GoogleCloudDialogflowCxV3beta1EventHandler (Maybe Text)
gcdcvehTargetFlow
  = lens _gcdcvehTargetFlow
      (\ s a -> s{_gcdcvehTargetFlow = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1EventHandler
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1EventHandler"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1EventHandler' <$>
                   (o .:? "event") <*> (o .:? "triggerFulfillment") <*>
                     (o .:? "name")
                     <*> (o .:? "targetPage")
                     <*> (o .:? "targetFlow"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1EventHandler
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1EventHandler'{..}
          = object
              (catMaybes
                 [("event" .=) <$> _gcdcvehEvent,
                  ("triggerFulfillment" .=) <$>
                    _gcdcvehTriggerFulfillment,
                  ("name" .=) <$> _gcdcvehName,
                  ("targetPage" .=) <$> _gcdcvehTargetPage,
                  ("targetFlow" .=) <$> _gcdcvehTargetFlow])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'googleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty =
  GoogleProtobufEmpty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
--
googleProtobufEmpty
    :: GoogleProtobufEmpty
googleProtobufEmpty = GoogleProtobufEmpty'


instance FromJSON GoogleProtobufEmpty where
        parseJSON
          = withObject "GoogleProtobufEmpty"
              (\ o -> pure GoogleProtobufEmpty')

instance ToJSON GoogleProtobufEmpty where
        toJSON = const emptyObject

-- | Optional. This field can be used to pass custom data from your webhook
-- to the integration or API caller. Arbitrary JSON objects are supported.
-- When provided, Dialogflow uses this field to populate
-- QueryResult.webhook_payload sent to the integration or API caller. This
-- field is also used by the [Google Assistant
-- integration](https:\/\/cloud.google.com\/dialogflow\/docs\/integrations\/aog)
-- for rich response messages. See the format definition at [Google
-- Assistant Dialogflow webhook
-- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
--
-- /See:/ 'googleCloudDialogflowV2beta1WebhookResponsePayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1WebhookResponsePayload =
  GoogleCloudDialogflowV2beta1WebhookResponsePayload'
    { _gcdvwrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1WebhookResponsePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrpAddtional'
googleCloudDialogflowV2beta1WebhookResponsePayload
    :: HashMap Text JSONValue -- ^ 'gcdvwrpAddtional'
    -> GoogleCloudDialogflowV2beta1WebhookResponsePayload
googleCloudDialogflowV2beta1WebhookResponsePayload pGcdvwrpAddtional_ =
  GoogleCloudDialogflowV2beta1WebhookResponsePayload'
    {_gcdvwrpAddtional = _Coerce # pGcdvwrpAddtional_}


-- | Properties of the object.
gcdvwrpAddtional :: Lens' GoogleCloudDialogflowV2beta1WebhookResponsePayload (HashMap Text JSONValue)
gcdvwrpAddtional
  = lens _gcdvwrpAddtional
      (\ s a -> s{_gcdvwrpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1WebhookResponsePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1WebhookResponsePayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1WebhookResponsePayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1WebhookResponsePayload
         where
        toJSON = toJSON . _gcdvwrpAddtional

-- | The quick replies response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageQuickReplies' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageQuickReplies =
  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'
    { _gcdvimqrsTitle        :: !(Maybe Text)
    , _gcdvimqrsQuickReplies :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageQuickReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimqrsTitle'
--
-- * 'gcdvimqrsQuickReplies'
googleCloudDialogflowV2beta1IntentMessageQuickReplies
    :: GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
googleCloudDialogflowV2beta1IntentMessageQuickReplies =
  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'
    {_gcdvimqrsTitle = Nothing, _gcdvimqrsQuickReplies = Nothing}


-- | Optional. The title of the collection of quick replies.
gcdvimqrsTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageQuickReplies (Maybe Text)
gcdvimqrsTitle
  = lens _gcdvimqrsTitle
      (\ s a -> s{_gcdvimqrsTitle = a})

-- | Optional. The collection of quick replies.
gcdvimqrsQuickReplies :: Lens' GoogleCloudDialogflowV2beta1IntentMessageQuickReplies [Text]
gcdvimqrsQuickReplies
  = lens _gcdvimqrsQuickReplies
      (\ s a -> s{_gcdvimqrsQuickReplies = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageQuickReplies"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'
                   <$>
                   (o .:? "title") <*>
                     (o .:? "quickReplies" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageQuickReplies'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _gcdvimqrsTitle,
                  ("quickReplies" .=) <$> _gcdvimqrsQuickReplies])

-- | The suggestion chip message that allows the user to jump out to the app
-- or website associated with this agent.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageLinkOutSuggestion' smart constructor.
data GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'
    { _gcdvimlosURI             :: !(Maybe Text)
    , _gcdvimlosDestinationName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlosURI'
--
-- * 'gcdvimlosDestinationName'
googleCloudDialogflowV2IntentMessageLinkOutSuggestion
    :: GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
googleCloudDialogflowV2IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'
    {_gcdvimlosURI = Nothing, _gcdvimlosDestinationName = Nothing}


-- | Required. The URI of the app or site to open when the user taps the
-- suggestion chip.
gcdvimlosURI :: Lens' GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion (Maybe Text)
gcdvimlosURI
  = lens _gcdvimlosURI (\ s a -> s{_gcdvimlosURI = a})

-- | Required. The name of the app or site this chip is linking to.
gcdvimlosDestinationName :: Lens' GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion (Maybe Text)
gcdvimlosDestinationName
  = lens _gcdvimlosDestinationName
      (\ s a -> s{_gcdvimlosDestinationName = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'
                   <$> (o .:? "uri") <*> (o .:? "destinationName"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gcdvimlosURI,
                  ("destinationName" .=) <$>
                    _gcdvimlosDestinationName])

--
-- /See:/ 'googleRpcStatusDetailsItem' smart constructor.
newtype GoogleRpcStatusDetailsItem =
  GoogleRpcStatusDetailsItem'
    { _grsdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleRpcStatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsdiAddtional'
googleRpcStatusDetailsItem
    :: HashMap Text JSONValue -- ^ 'grsdiAddtional'
    -> GoogleRpcStatusDetailsItem
googleRpcStatusDetailsItem pGrsdiAddtional_ =
  GoogleRpcStatusDetailsItem' {_grsdiAddtional = _Coerce # pGrsdiAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
grsdiAddtional :: Lens' GoogleRpcStatusDetailsItem (HashMap Text JSONValue)
grsdiAddtional
  = lens _grsdiAddtional
      (\ s a -> s{_grsdiAddtional = a})
      . _Coerce

instance FromJSON GoogleRpcStatusDetailsItem where
        parseJSON
          = withObject "GoogleRpcStatusDetailsItem"
              (\ o ->
                 GoogleRpcStatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON GoogleRpcStatusDetailsItem where
        toJSON = toJSON . _grsdiAddtional

-- | The response message for EntityTypes.BatchUpdateEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse' smart constructor.
newtype GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'
    { _gcdvbuetrEntityTypes :: Maybe [GoogleCloudDialogflowV2beta1EntityType]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvbuetrEntityTypes'
googleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
    :: GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
googleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'
    {_gcdvbuetrEntityTypes = Nothing}


-- | The collection of updated or created entity types.
gcdvbuetrEntityTypes :: Lens' GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse [GoogleCloudDialogflowV2beta1EntityType]
gcdvbuetrEntityTypes
  = lens _gcdvbuetrEntityTypes
      (\ s a -> s{_gcdvbuetrEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'
                   <$> (o .:? "entityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse'{..}
          = object
              (catMaybes
                 [("entityTypes" .=) <$> _gcdvbuetrEntityTypes])

-- | Custom data set in QueryParameters.payload.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookRequestPayload' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1WebhookRequestPayload =
  GoogleCloudDialogflowCxV3beta1WebhookRequestPayload'
    { _gcdcvwrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookRequestPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwrpAddtional'
googleCloudDialogflowCxV3beta1WebhookRequestPayload
    :: HashMap Text JSONValue -- ^ 'gcdcvwrpAddtional'
    -> GoogleCloudDialogflowCxV3beta1WebhookRequestPayload
googleCloudDialogflowCxV3beta1WebhookRequestPayload pGcdcvwrpAddtional_ =
  GoogleCloudDialogflowCxV3beta1WebhookRequestPayload'
    {_gcdcvwrpAddtional = _Coerce # pGcdcvwrpAddtional_}


-- | Properties of the object.
gcdcvwrpAddtional :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequestPayload (HashMap Text JSONValue)
gcdcvwrpAddtional
  = lens _gcdcvwrpAddtional
      (\ s a -> s{_gcdcvwrpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookRequestPayload"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookRequestPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestPayload
         where
        toJSON = toJSON . _gcdcvwrpAddtional

-- | Optional. The collection of parameters associated with this context.
-- Depending on your protocol or client library language, this is a map,
-- associative array, symbol table, dictionary, or JSON object composed of
-- a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
-- value: parameter name - MapValue type: - If parameter\'s entity type is
-- a composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
--
-- /See:/ 'googleCloudDialogflowV2ContextParameters' smart constructor.
newtype GoogleCloudDialogflowV2ContextParameters =
  GoogleCloudDialogflowV2ContextParameters'
    { _gAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2ContextParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAddtional'
googleCloudDialogflowV2ContextParameters
    :: HashMap Text JSONValue -- ^ 'gAddtional'
    -> GoogleCloudDialogflowV2ContextParameters
googleCloudDialogflowV2ContextParameters pGAddtional_ =
  GoogleCloudDialogflowV2ContextParameters'
    {_gAddtional = _Coerce # pGAddtional_}


-- | Properties of the object.
gAddtional :: Lens' GoogleCloudDialogflowV2ContextParameters (HashMap Text JSONValue)
gAddtional
  = lens _gAddtional (\ s a -> s{_gAddtional = a}) .
      _Coerce

instance FromJSON
           GoogleCloudDialogflowV2ContextParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ContextParameters"
              (\ o ->
                 GoogleCloudDialogflowV2ContextParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2ContextParameters
         where
        toJSON = toJSON . _gAddtional

-- | Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you
-- to respond to users with more vivid content, e.g. with media and
-- suggestions. If you want to show a single card with more control over
-- the layout, please use RbmStandaloneCard instead.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmCarouselCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard =
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard'
    { _gcdvimrccCardWidth    :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth)
    , _gcdvimrccCardContents :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrccCardWidth'
--
-- * 'gcdvimrccCardContents'
googleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
googleCloudDialogflowV2beta1IntentMessageRbmCarouselCard =
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard'
    {_gcdvimrccCardWidth = Nothing, _gcdvimrccCardContents = Nothing}


-- | Required. The width of the cards in the carousel.
gcdvimrccCardWidth :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth)
gcdvimrccCardWidth
  = lens _gcdvimrccCardWidth
      (\ s a -> s{_gcdvimrccCardWidth = a})

-- | Required. The cards in the carousel. A carousel must have at least 2
-- cards and at most 10.
gcdvimrccCardContents :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard [GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent]
gcdvimrccCardContents
  = lens _gcdvimrccCardContents
      (\ s a -> s{_gcdvimrccCardContents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard'
                   <$>
                   (o .:? "cardWidth") <*>
                     (o .:? "cardContents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard'{..}
          = object
              (catMaybes
                 [("cardWidth" .=) <$> _gcdvimrccCardWidth,
                  ("cardContents" .=) <$> _gcdvimrccCardContents])

-- | Table card for Actions on Google.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageTableCard' smart constructor.
data GoogleCloudDialogflowV2IntentMessageTableCard =
  GoogleCloudDialogflowV2IntentMessageTableCard'
    { _gcdvimtcImage            :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimtcButtons          :: !(Maybe [GoogleCloudDialogflowV2IntentMessageBasicCardButton])
    , _gcdvimtcRows             :: !(Maybe [GoogleCloudDialogflowV2IntentMessageTableCardRow])
    , _gcdvimtcSubtitle         :: !(Maybe Text)
    , _gcdvimtcColumnProperties :: !(Maybe [GoogleCloudDialogflowV2IntentMessageColumnProperties])
    , _gcdvimtcTitle            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageTableCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtcImage'
--
-- * 'gcdvimtcButtons'
--
-- * 'gcdvimtcRows'
--
-- * 'gcdvimtcSubtitle'
--
-- * 'gcdvimtcColumnProperties'
--
-- * 'gcdvimtcTitle'
googleCloudDialogflowV2IntentMessageTableCard
    :: GoogleCloudDialogflowV2IntentMessageTableCard
googleCloudDialogflowV2IntentMessageTableCard =
  GoogleCloudDialogflowV2IntentMessageTableCard'
    { _gcdvimtcImage = Nothing
    , _gcdvimtcButtons = Nothing
    , _gcdvimtcRows = Nothing
    , _gcdvimtcSubtitle = Nothing
    , _gcdvimtcColumnProperties = Nothing
    , _gcdvimtcTitle = Nothing
    }


-- | Optional. Image which should be displayed on the card.
gcdvimtcImage :: Lens' GoogleCloudDialogflowV2IntentMessageTableCard (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimtcImage
  = lens _gcdvimtcImage
      (\ s a -> s{_gcdvimtcImage = a})

-- | Optional. List of buttons for the card.
gcdvimtcButtons :: Lens' GoogleCloudDialogflowV2IntentMessageTableCard [GoogleCloudDialogflowV2IntentMessageBasicCardButton]
gcdvimtcButtons
  = lens _gcdvimtcButtons
      (\ s a -> s{_gcdvimtcButtons = a})
      . _Default
      . _Coerce

-- | Optional. Rows in this table of data.
gcdvimtcRows :: Lens' GoogleCloudDialogflowV2IntentMessageTableCard [GoogleCloudDialogflowV2IntentMessageTableCardRow]
gcdvimtcRows
  = lens _gcdvimtcRows (\ s a -> s{_gcdvimtcRows = a})
      . _Default
      . _Coerce

-- | Optional. Subtitle to the title.
gcdvimtcSubtitle :: Lens' GoogleCloudDialogflowV2IntentMessageTableCard (Maybe Text)
gcdvimtcSubtitle
  = lens _gcdvimtcSubtitle
      (\ s a -> s{_gcdvimtcSubtitle = a})

-- | Optional. Display properties for the columns in this table.
gcdvimtcColumnProperties :: Lens' GoogleCloudDialogflowV2IntentMessageTableCard [GoogleCloudDialogflowV2IntentMessageColumnProperties]
gcdvimtcColumnProperties
  = lens _gcdvimtcColumnProperties
      (\ s a -> s{_gcdvimtcColumnProperties = a})
      . _Default
      . _Coerce

-- | Required. Title of the card.
gcdvimtcTitle :: Lens' GoogleCloudDialogflowV2IntentMessageTableCard (Maybe Text)
gcdvimtcTitle
  = lens _gcdvimtcTitle
      (\ s a -> s{_gcdvimtcTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageTableCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageTableCard"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageTableCard' <$>
                   (o .:? "image") <*> (o .:? "buttons" .!= mempty) <*>
                     (o .:? "rows" .!= mempty)
                     <*> (o .:? "subtitle")
                     <*> (o .:? "columnProperties" .!= mempty)
                     <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageTableCard
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageTableCard'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimtcImage,
                  ("buttons" .=) <$> _gcdvimtcButtons,
                  ("rows" .=) <$> _gcdvimtcRows,
                  ("subtitle" .=) <$> _gcdvimtcSubtitle,
                  ("columnProperties" .=) <$>
                    _gcdvimtcColumnProperties,
                  ("title" .=) <$> _gcdvimtcTitle])

-- | An intent represents a user\'s intent to interact with a conversational
-- agent. You can provide information for the Dialogflow API to use to
-- match user input to an intent by adding training phrases (i.e., examples
-- of user input) to your intent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Intent' smart constructor.
data GoogleCloudDialogflowCxV3beta1Intent =
  GoogleCloudDialogflowCxV3beta1Intent'
    { _gcdcviPriority        :: !(Maybe (Textual Int32))
    , _gcdcviName            :: !(Maybe Text)
    , _gcdcviParameters      :: !(Maybe [GoogleCloudDialogflowCxV3beta1IntentParameter])
    , _gcdcviDisplayName     :: !(Maybe Text)
    , _gcdcviTrainingPhrases :: !(Maybe [GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase])
    , _gcdcviIsFallback      :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Intent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcviPriority'
--
-- * 'gcdcviName'
--
-- * 'gcdcviParameters'
--
-- * 'gcdcviDisplayName'
--
-- * 'gcdcviTrainingPhrases'
--
-- * 'gcdcviIsFallback'
googleCloudDialogflowCxV3beta1Intent
    :: GoogleCloudDialogflowCxV3beta1Intent
googleCloudDialogflowCxV3beta1Intent =
  GoogleCloudDialogflowCxV3beta1Intent'
    { _gcdcviPriority = Nothing
    , _gcdcviName = Nothing
    , _gcdcviParameters = Nothing
    , _gcdcviDisplayName = Nothing
    , _gcdcviTrainingPhrases = Nothing
    , _gcdcviIsFallback = Nothing
    }


-- | The priority of this intent. Higher numbers represent higher priorities.
-- - If the supplied value is unspecified or 0, the service translates the
-- value to 500,000, which corresponds to the \`Normal\` priority in the
-- console. - If the supplied value is negative, the intent is ignored in
-- runtime detect intent requests.
gcdcviPriority :: Lens' GoogleCloudDialogflowCxV3beta1Intent (Maybe Int32)
gcdcviPriority
  = lens _gcdcviPriority
      (\ s a -> s{_gcdcviPriority = a})
      . mapping _Coerce

-- | The unique identifier of the intent. Required for the
-- Intents.UpdateIntent method. Intents.CreateIntent populates the name
-- automatically. Format: \`projects\/\/locations\/\/agents\/\/intents\/\`.
gcdcviName :: Lens' GoogleCloudDialogflowCxV3beta1Intent (Maybe Text)
gcdcviName
  = lens _gcdcviName (\ s a -> s{_gcdcviName = a})

-- | The collection of parameters associated with the intent.
gcdcviParameters :: Lens' GoogleCloudDialogflowCxV3beta1Intent [GoogleCloudDialogflowCxV3beta1IntentParameter]
gcdcviParameters
  = lens _gcdcviParameters
      (\ s a -> s{_gcdcviParameters = a})
      . _Default
      . _Coerce

-- | Required. The human-readable name of the intent, unique within the
-- agent.
gcdcviDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1Intent (Maybe Text)
gcdcviDisplayName
  = lens _gcdcviDisplayName
      (\ s a -> s{_gcdcviDisplayName = a})

-- | The collection of training phrases the agent is trained on to identify
-- the intent.
gcdcviTrainingPhrases :: Lens' GoogleCloudDialogflowCxV3beta1Intent [GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase]
gcdcviTrainingPhrases
  = lens _gcdcviTrainingPhrases
      (\ s a -> s{_gcdcviTrainingPhrases = a})
      . _Default
      . _Coerce

-- | Indicates whether this is a fallback intent. Currently only default
-- fallback intent is allowed in the agent, which is added upon agent
-- creation. Adding training phrases to fallback intent is useful in the
-- case of requests that are mistakenly matched, since training phrases
-- assigned to fallback intents act as negative examples that triggers
-- no-match event.
gcdcviIsFallback :: Lens' GoogleCloudDialogflowCxV3beta1Intent (Maybe Bool)
gcdcviIsFallback
  = lens _gcdcviIsFallback
      (\ s a -> s{_gcdcviIsFallback = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1Intent
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Intent"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Intent' <$>
                   (o .:? "priority") <*> (o .:? "name") <*>
                     (o .:? "parameters" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "trainingPhrases" .!= mempty)
                     <*> (o .:? "isFallback"))

instance ToJSON GoogleCloudDialogflowCxV3beta1Intent
         where
        toJSON GoogleCloudDialogflowCxV3beta1Intent'{..}
          = object
              (catMaybes
                 [("priority" .=) <$> _gcdcviPriority,
                  ("name" .=) <$> _gcdcviName,
                  ("parameters" .=) <$> _gcdcviParameters,
                  ("displayName" .=) <$> _gcdcviDisplayName,
                  ("trainingPhrases" .=) <$> _gcdcviTrainingPhrases,
                  ("isFallback" .=) <$> _gcdcviIsFallback])

-- | Metadata returned for the TestCases.ImportTestCases long running
-- operation.
--
-- /See:/ 'googleCloudDialogflowV3alpha1ImportTestCasesMetadata' smart constructor.
data GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata =
  GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata' with the minimum fields required to make a request.
--
googleCloudDialogflowV3alpha1ImportTestCasesMetadata
    :: GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata
googleCloudDialogflowV3alpha1ImportTestCasesMetadata =
  GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata'


instance FromJSON
           GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata"
              (\ o ->
                 pure
                   GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata')

instance ToJSON
           GoogleCloudDialogflowV3alpha1ImportTestCasesMetadata
         where
        toJSON = const emptyObject

-- | Contains information about a button.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCardButton' smart constructor.
data GoogleCloudDialogflowV2IntentMessageCardButton =
  GoogleCloudDialogflowV2IntentMessageCardButton'
    { _gText     :: !(Maybe Text)
    , _gPostback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gText'
--
-- * 'gPostback'
googleCloudDialogflowV2IntentMessageCardButton
    :: GoogleCloudDialogflowV2IntentMessageCardButton
googleCloudDialogflowV2IntentMessageCardButton =
  GoogleCloudDialogflowV2IntentMessageCardButton'
    {_gText = Nothing, _gPostback = Nothing}


-- | Optional. The text to show on the button.
gText :: Lens' GoogleCloudDialogflowV2IntentMessageCardButton (Maybe Text)
gText = lens _gText (\ s a -> s{_gText = a})

-- | Optional. The text to send back to the Dialogflow API or a URI to open.
gPostback :: Lens' GoogleCloudDialogflowV2IntentMessageCardButton (Maybe Text)
gPostback
  = lens _gPostback (\ s a -> s{_gPostback = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCardButton' <$>
                   (o .:? "text") <*> (o .:? "postback"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCardButton
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageCardButton'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gText,
                  ("postback" .=) <$> _gPostback])

-- | The card for presenting a list of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageListSelect' smart constructor.
data GoogleCloudDialogflowV2IntentMessageListSelect =
  GoogleCloudDialogflowV2IntentMessageListSelect'
    { _gcdvimlscItems    :: !(Maybe [GoogleCloudDialogflowV2IntentMessageListSelectItem])
    , _gcdvimlscSubtitle :: !(Maybe Text)
    , _gcdvimlscTitle    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageListSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlscItems'
--
-- * 'gcdvimlscSubtitle'
--
-- * 'gcdvimlscTitle'
googleCloudDialogflowV2IntentMessageListSelect
    :: GoogleCloudDialogflowV2IntentMessageListSelect
googleCloudDialogflowV2IntentMessageListSelect =
  GoogleCloudDialogflowV2IntentMessageListSelect'
    { _gcdvimlscItems = Nothing
    , _gcdvimlscSubtitle = Nothing
    , _gcdvimlscTitle = Nothing
    }


-- | Required. List items.
gcdvimlscItems :: Lens' GoogleCloudDialogflowV2IntentMessageListSelect [GoogleCloudDialogflowV2IntentMessageListSelectItem]
gcdvimlscItems
  = lens _gcdvimlscItems
      (\ s a -> s{_gcdvimlscItems = a})
      . _Default
      . _Coerce

-- | Optional. Subtitle of the list.
gcdvimlscSubtitle :: Lens' GoogleCloudDialogflowV2IntentMessageListSelect (Maybe Text)
gcdvimlscSubtitle
  = lens _gcdvimlscSubtitle
      (\ s a -> s{_gcdvimlscSubtitle = a})

-- | Optional. The overall title of the list.
gcdvimlscTitle :: Lens' GoogleCloudDialogflowV2IntentMessageListSelect (Maybe Text)
gcdvimlscTitle
  = lens _gcdvimlscTitle
      (\ s a -> s{_gcdvimlscTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageListSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageListSelect"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageListSelect' <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "subtitle") <*>
                     (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageListSelect
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageListSelect'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _gcdvimlscItems,
                  ("subtitle" .=) <$> _gcdvimlscSubtitle,
                  ("title" .=) <$> _gcdvimlscTitle])

-- | Response message for [Documents.AutoApproveSmartMessagingEntries].
--
-- /See:/ 'googleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse' smart constructor.
data GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse =
  GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse'
    { _gcdvaasmerDisabledCount   :: !(Maybe (Textual Int32))
    , _gcdvaasmerEnabledCount    :: !(Maybe (Textual Int32))
    , _gcdvaasmerUnreviewedCount :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvaasmerDisabledCount'
--
-- * 'gcdvaasmerEnabledCount'
--
-- * 'gcdvaasmerUnreviewedCount'
googleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse
    :: GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse
googleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse =
  GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse'
    { _gcdvaasmerDisabledCount = Nothing
    , _gcdvaasmerEnabledCount = Nothing
    , _gcdvaasmerUnreviewedCount = Nothing
    }


-- | Number of smart messaging entries disabled.
gcdvaasmerDisabledCount :: Lens' GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse (Maybe Int32)
gcdvaasmerDisabledCount
  = lens _gcdvaasmerDisabledCount
      (\ s a -> s{_gcdvaasmerDisabledCount = a})
      . mapping _Coerce

-- | Number of smart messaging entries enabled.
gcdvaasmerEnabledCount :: Lens' GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse (Maybe Int32)
gcdvaasmerEnabledCount
  = lens _gcdvaasmerEnabledCount
      (\ s a -> s{_gcdvaasmerEnabledCount = a})
      . mapping _Coerce

-- | Number of smart messaging entries unreviewed.
gcdvaasmerUnreviewedCount :: Lens' GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse (Maybe Int32)
gcdvaasmerUnreviewedCount
  = lens _gcdvaasmerUnreviewedCount
      (\ s a -> s{_gcdvaasmerUnreviewedCount = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse'
                   <$>
                   (o .:? "disabledCount") <*> (o .:? "enabledCount")
                     <*> (o .:? "unreviewedCount"))

instance ToJSON
           GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1AutoApproveSmartMessagingEntriesResponse'{..}
          = object
              (catMaybes
                 [("disabledCount" .=) <$> _gcdvaasmerDisabledCount,
                  ("enabledCount" .=) <$> _gcdvaasmerEnabledCount,
                  ("unreviewedCount" .=) <$>
                    _gcdvaasmerUnreviewedCount])

-- | Response of MatchIntent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1MatchIntentResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1MatchIntentResponse =
  GoogleCloudDialogflowCxV3beta1MatchIntentResponse'
    { _gcdcvmirTriggerIntent :: !(Maybe Text)
    , _gcdcvmirCurrentPage   :: !(Maybe GoogleCloudDialogflowCxV3beta1Page)
    , _gcdcvmirText          :: !(Maybe Text)
    , _gcdcvmirMatches       :: !(Maybe [GoogleCloudDialogflowCxV3beta1Match])
    , _gcdcvmirTranscript    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1MatchIntentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvmirTriggerIntent'
--
-- * 'gcdcvmirCurrentPage'
--
-- * 'gcdcvmirText'
--
-- * 'gcdcvmirMatches'
--
-- * 'gcdcvmirTranscript'
googleCloudDialogflowCxV3beta1MatchIntentResponse
    :: GoogleCloudDialogflowCxV3beta1MatchIntentResponse
googleCloudDialogflowCxV3beta1MatchIntentResponse =
  GoogleCloudDialogflowCxV3beta1MatchIntentResponse'
    { _gcdcvmirTriggerIntent = Nothing
    , _gcdcvmirCurrentPage = Nothing
    , _gcdcvmirText = Nothing
    , _gcdcvmirMatches = Nothing
    , _gcdcvmirTranscript = Nothing
    }


-- | If an intent was provided as input, this field will contain a copy of
-- the intent identifier.
gcdcvmirTriggerIntent :: Lens' GoogleCloudDialogflowCxV3beta1MatchIntentResponse (Maybe Text)
gcdcvmirTriggerIntent
  = lens _gcdcvmirTriggerIntent
      (\ s a -> s{_gcdcvmirTriggerIntent = a})

-- | The current Page. Some, not all fields are filled in this message,
-- including but not limited to \`name\` and \`display_name\`.
gcdcvmirCurrentPage :: Lens' GoogleCloudDialogflowCxV3beta1MatchIntentResponse (Maybe GoogleCloudDialogflowCxV3beta1Page)
gcdcvmirCurrentPage
  = lens _gcdcvmirCurrentPage
      (\ s a -> s{_gcdcvmirCurrentPage = a})

-- | If natural language text was provided as input, this field will contain
-- a copy of the text.
gcdcvmirText :: Lens' GoogleCloudDialogflowCxV3beta1MatchIntentResponse (Maybe Text)
gcdcvmirText
  = lens _gcdcvmirText (\ s a -> s{_gcdcvmirText = a})

-- | Match results, if more than one, ordered descendingly by the confidence
-- we have that the particular intent matches the query.
gcdcvmirMatches :: Lens' GoogleCloudDialogflowCxV3beta1MatchIntentResponse [GoogleCloudDialogflowCxV3beta1Match]
gcdcvmirMatches
  = lens _gcdcvmirMatches
      (\ s a -> s{_gcdcvmirMatches = a})
      . _Default
      . _Coerce

-- | If natural language speech audio was provided as input, this field will
-- contain the trascript for the audio.
gcdcvmirTranscript :: Lens' GoogleCloudDialogflowCxV3beta1MatchIntentResponse (Maybe Text)
gcdcvmirTranscript
  = lens _gcdcvmirTranscript
      (\ s a -> s{_gcdcvmirTranscript = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1MatchIntentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1MatchIntentResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1MatchIntentResponse'
                   <$>
                   (o .:? "triggerIntent") <*> (o .:? "currentPage") <*>
                     (o .:? "text")
                     <*> (o .:? "matches" .!= mempty)
                     <*> (o .:? "transcript"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1MatchIntentResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1MatchIntentResponse'{..}
          = object
              (catMaybes
                 [("triggerIntent" .=) <$> _gcdcvmirTriggerIntent,
                  ("currentPage" .=) <$> _gcdcvmirCurrentPage,
                  ("text" .=) <$> _gcdcvmirText,
                  ("matches" .=) <$> _gcdcvmirMatches,
                  ("transcript" .=) <$> _gcdcvmirTranscript])

-- | Rich Business Messaging (RBM) Media displayed in Cards The following
-- media-types are currently supported: Image Types * image\/jpeg *
-- image\/jpg\' * image\/gif * image\/png Video Types * video\/h263 *
-- video\/m4v * video\/mp4 * video\/mpeg * video\/mpeg4 * video\/webm
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia =
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia'
    { _gcdvimrccrmHeight       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight)
    , _gcdvimrccrmThumbnailURI :: !(Maybe Text)
    , _gcdvimrccrmFileURI      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrccrmHeight'
--
-- * 'gcdvimrccrmThumbnailURI'
--
-- * 'gcdvimrccrmFileURI'
googleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
googleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia =
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia'
    { _gcdvimrccrmHeight = Nothing
    , _gcdvimrccrmThumbnailURI = Nothing
    , _gcdvimrccrmFileURI = Nothing
    }


-- | Required for cards with vertical orientation. The height of the media
-- within a rich card with a vertical layout. For a standalone card with
-- horizontal layout, height is not customizable, and this field is
-- ignored.
gcdvimrccrmHeight :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight)
gcdvimrccrmHeight
  = lens _gcdvimrccrmHeight
      (\ s a -> s{_gcdvimrccrmHeight = a})

-- | Optional. Publicly reachable URI of the thumbnail.If you don\'t provide
-- a thumbnail URI, the RBM platform displays a blank placeholder thumbnail
-- until the user\'s device downloads the file. Depending on the user\'s
-- setting, the file may not download automatically and may require the
-- user to tap a download button.
gcdvimrccrmThumbnailURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia (Maybe Text)
gcdvimrccrmThumbnailURI
  = lens _gcdvimrccrmThumbnailURI
      (\ s a -> s{_gcdvimrccrmThumbnailURI = a})

-- | Required. Publicly reachable URI of the file. The RBM platform
-- determines the MIME type of the file from the content-type field in the
-- HTTP headers when the platform fetches the file. The content-type field
-- must be present and accurate in the HTTP response from the URL.
gcdvimrccrmFileURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia (Maybe Text)
gcdvimrccrmFileURI
  = lens _gcdvimrccrmFileURI
      (\ s a -> s{_gcdvimrccrmFileURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia'
                   <$>
                   (o .:? "height") <*> (o .:? "thumbnailUri") <*>
                     (o .:? "fileUri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _gcdvimrccrmHeight,
                  ("thumbnailUri" .=) <$> _gcdvimrccrmThumbnailURI,
                  ("fileUri" .=) <$> _gcdvimrccrmFileURI])

-- | Actions on Google action to open a given url.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction =
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'
    { _gcdvimbccbcciourlaURL :: !(Maybe Text)
    , _gcdvimbccbcciourlaURLTypeHint :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbccbcciourlaURL'
--
-- * 'gcdvimbccbcciourlaURLTypeHint'
googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
    :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction =
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'
    {_gcdvimbccbcciourlaURL = Nothing, _gcdvimbccbcciourlaURLTypeHint = Nothing}


-- | Required. URL
gcdvimbccbcciourlaURL :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction (Maybe Text)
gcdvimbccbcciourlaURL
  = lens _gcdvimbccbcciourlaURL
      (\ s a -> s{_gcdvimbccbcciourlaURL = a})

-- | Optional. Specifies the type of viewer that is used when opening the
-- URL. Defaults to opening via web browser.
gcdvimbccbcciourlaURLTypeHint :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction (Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLActionURLTypeHint)
gcdvimbccbcciourlaURLTypeHint
  = lens _gcdvimbccbcciourlaURLTypeHint
      (\ s a -> s{_gcdvimbccbcciourlaURLTypeHint = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'
                   <$> (o .:? "url") <*> (o .:? "urlTypeHint"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenURLAction'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _gcdvimbccbcciourlaURL,
                  ("urlTypeHint" .=) <$>
                    _gcdvimbccbcciourlaURLTypeHint])

-- | The card response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageCard =
  GoogleCloudDialogflowV2beta1IntentMessageCard'
    { _gcdvimcButtons  :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageCardButton])
    , _gcdvimcImageURI :: !(Maybe Text)
    , _gcdvimcSubtitle :: !(Maybe Text)
    , _gcdvimcTitle    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcButtons'
--
-- * 'gcdvimcImageURI'
--
-- * 'gcdvimcSubtitle'
--
-- * 'gcdvimcTitle'
googleCloudDialogflowV2beta1IntentMessageCard
    :: GoogleCloudDialogflowV2beta1IntentMessageCard
googleCloudDialogflowV2beta1IntentMessageCard =
  GoogleCloudDialogflowV2beta1IntentMessageCard'
    { _gcdvimcButtons = Nothing
    , _gcdvimcImageURI = Nothing
    , _gcdvimcSubtitle = Nothing
    , _gcdvimcTitle = Nothing
    }


-- | Optional. The collection of card buttons.
gcdvimcButtons :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard [GoogleCloudDialogflowV2beta1IntentMessageCardButton]
gcdvimcButtons
  = lens _gcdvimcButtons
      (\ s a -> s{_gcdvimcButtons = a})
      . _Default
      . _Coerce

-- | Optional. The public URI to an image file for the card.
gcdvimcImageURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard (Maybe Text)
gcdvimcImageURI
  = lens _gcdvimcImageURI
      (\ s a -> s{_gcdvimcImageURI = a})

-- | Optional. The subtitle of the card.
gcdvimcSubtitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard (Maybe Text)
gcdvimcSubtitle
  = lens _gcdvimcSubtitle
      (\ s a -> s{_gcdvimcSubtitle = a})

-- | Optional. The title of the card.
gcdvimcTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCard (Maybe Text)
gcdvimcTitle
  = lens _gcdvimcTitle (\ s a -> s{_gcdvimcTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCard' <$>
                   (o .:? "buttons" .!= mempty) <*> (o .:? "imageUri")
                     <*> (o .:? "subtitle")
                     <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCard'{..}
          = object
              (catMaybes
                 [("buttons" .=) <$> _gcdvimcButtons,
                  ("imageUri" .=) <$> _gcdvimcImageURI,
                  ("subtitle" .=) <$> _gcdvimcSubtitle,
                  ("title" .=) <$> _gcdvimcTitle])

-- | The collection of suggestions.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSuggestions' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageSuggestions =
  GoogleCloudDialogflowV2IntentMessageSuggestions'
    { _gSuggestions :: Maybe [GoogleCloudDialogflowV2IntentMessageSuggestion]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSuggestions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gSuggestions'
googleCloudDialogflowV2IntentMessageSuggestions
    :: GoogleCloudDialogflowV2IntentMessageSuggestions
googleCloudDialogflowV2IntentMessageSuggestions =
  GoogleCloudDialogflowV2IntentMessageSuggestions' {_gSuggestions = Nothing}


-- | Required. The list of suggested replies.
gSuggestions :: Lens' GoogleCloudDialogflowV2IntentMessageSuggestions [GoogleCloudDialogflowV2IntentMessageSuggestion]
gSuggestions
  = lens _gSuggestions (\ s a -> s{_gSuggestions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSuggestions
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSuggestions"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSuggestions' <$>
                   (o .:? "suggestions" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSuggestions
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSuggestions'{..}
          = object
              (catMaybes [("suggestions" .=) <$> _gSuggestions])

-- | Opens the given URI.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'
    { _gcdvimbcbouaURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbouaURI'
googleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
    :: GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
googleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'
    {_gcdvimbcbouaURI = Nothing}


-- | Required. The HTTP or HTTPS scheme URI.
gcdvimbcbouaURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction (Maybe Text)
gcdvimbcbouaURI
  = lens _gcdvimbcbouaURI
      (\ s a -> s{_gcdvimbcbouaURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'
                   <$> (o .:? "uri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenURIAction'{..}
          = object
              (catMaybes [("uri" .=) <$> _gcdvimbcbouaURI])

-- | The suggestion chip message that the user can tap to quickly post a
-- reply to the conversation.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSuggestion' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestion'
    { _gcdvimsTitle :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsTitle'
googleCloudDialogflowV2beta1IntentMessageSuggestion
    :: GoogleCloudDialogflowV2beta1IntentMessageSuggestion
googleCloudDialogflowV2beta1IntentMessageSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageSuggestion' {_gcdvimsTitle = Nothing}


-- | Required. The text shown the in the suggestion chip.
gcdvimsTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSuggestion (Maybe Text)
gcdvimsTitle
  = lens _gcdvimsTitle (\ s a -> s{_gcdvimsTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSuggestion'
                   <$> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSuggestion'{..}
          = object (catMaybes [("title" .=) <$> _gcdvimsTitle])

-- | Represents a fulfillment response to the user.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse =
  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse'
    { _gcdcvwrfrMergeBehavior :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior)
    , _gcdcvwrfrMessages      :: !(Maybe [GoogleCloudDialogflowCxV3beta1ResponseMessage])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwrfrMergeBehavior'
--
-- * 'gcdcvwrfrMessages'
googleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
    :: GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
googleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse =
  GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse'
    {_gcdcvwrfrMergeBehavior = Nothing, _gcdcvwrfrMessages = Nothing}


-- | Merge behavior for \`messages\`.
gcdcvwrfrMergeBehavior :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse (Maybe GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponseMergeBehavior)
gcdcvwrfrMergeBehavior
  = lens _gcdcvwrfrMergeBehavior
      (\ s a -> s{_gcdcvwrfrMergeBehavior = a})

-- | The list of rich message responses to present to the user.
gcdcvwrfrMessages :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse [GoogleCloudDialogflowCxV3beta1ResponseMessage]
gcdcvwrfrMessages
  = lens _gcdcvwrfrMessages
      (\ s a -> s{_gcdcvwrfrMessages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse'
                   <$>
                   (o .:? "mergeBehavior") <*>
                     (o .:? "messages" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse'{..}
          = object
              (catMaybes
                 [("mergeBehavior" .=) <$> _gcdcvwrfrMergeBehavior,
                  ("messages" .=) <$> _gcdcvwrfrMessages])

-- | Represents the contents of the original request that was passed to the
-- \`[Streaming]DetectIntent\` call.
--
-- /See:/ 'googleCloudDialogflowV2beta1OriginalDetectIntentRequest' smart constructor.
data GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'
    { _gcdvodirPayload :: !(Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload)
    , _gcdvodirVersion :: !(Maybe Text)
    , _gcdvodirSource  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvodirPayload'
--
-- * 'gcdvodirVersion'
--
-- * 'gcdvodirSource'
googleCloudDialogflowV2beta1OriginalDetectIntentRequest
    :: GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
googleCloudDialogflowV2beta1OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'
    { _gcdvodirPayload = Nothing
    , _gcdvodirVersion = Nothing
    , _gcdvodirSource = Nothing
    }


-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular, for the Dialogflow Phone
-- Gateway integration, this field has the form: { \"telephony\": {
-- \"caller_id\": \"+18558363987\" } } Note: The caller ID field
-- (\`caller_id\`) will be redacted for Trial Edition agents and populated
-- with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Essentials Edition
-- agents.
gcdvodirPayload :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest (Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequestPayload)
gcdvodirPayload
  = lens _gcdvodirPayload
      (\ s a -> s{_gcdvodirPayload = a})

-- | Optional. The version of the protocol used for this request. This field
-- is AoG-specific.
gcdvodirVersion :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest (Maybe Text)
gcdvodirVersion
  = lens _gcdvodirVersion
      (\ s a -> s{_gcdvodirVersion = a})

-- | The source of this request, e.g., \`google\`, \`facebook\`, \`slack\`.
-- It is set by Dialogflow-owned servers.
gcdvodirSource :: Lens' GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest (Maybe Text)
gcdvodirSource
  = lens _gcdvodirSource
      (\ s a -> s{_gcdvodirSource = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'
                   <$>
                   (o .:? "payload") <*> (o .:? "version") <*>
                     (o .:? "source"))

instance ToJSON
           GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
         where
        toJSON
          GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest'{..}
          = object
              (catMaybes
                 [("payload" .=) <$> _gcdvodirPayload,
                  ("version" .=) <$> _gcdvodirVersion,
                  ("source" .=) <$> _gcdvodirSource])

-- | The collection of parameters associated with the event. Depending on
-- your protocol or client library language, this is a map, associative
-- array, symbol table, dictionary, or JSON object composed of a collection
-- of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value:
-- parameter name - MapValue type: - If parameter\'s entity type is a
-- composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
--
-- /See:/ 'googleCloudDialogflowV2EventInputParameters' smart constructor.
newtype GoogleCloudDialogflowV2EventInputParameters =
  GoogleCloudDialogflowV2EventInputParameters'
    { _gcdveipsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2EventInputParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveipsAddtional'
googleCloudDialogflowV2EventInputParameters
    :: HashMap Text JSONValue -- ^ 'gcdveipsAddtional'
    -> GoogleCloudDialogflowV2EventInputParameters
googleCloudDialogflowV2EventInputParameters pGcdveipsAddtional_ =
  GoogleCloudDialogflowV2EventInputParameters'
    {_gcdveipsAddtional = _Coerce # pGcdveipsAddtional_}


-- | Properties of the object.
gcdveipsAddtional :: Lens' GoogleCloudDialogflowV2EventInputParameters (HashMap Text JSONValue)
gcdveipsAddtional
  = lens _gcdveipsAddtional
      (\ s a -> s{_gcdveipsAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2EventInputParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2EventInputParameters"
              (\ o ->
                 GoogleCloudDialogflowV2EventInputParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2EventInputParameters
         where
        toJSON = toJSON . _gcdveipsAddtional

-- | Response media object for media content card.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject' smart constructor.
data GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject =
  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject'
    { _gcdvimmcrmocIcon        :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimmcrmocName        :: !(Maybe Text)
    , _gcdvimmcrmocContentURL  :: !(Maybe Text)
    , _gcdvimmcrmocLargeImage  :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimmcrmocDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimmcrmocIcon'
--
-- * 'gcdvimmcrmocName'
--
-- * 'gcdvimmcrmocContentURL'
--
-- * 'gcdvimmcrmocLargeImage'
--
-- * 'gcdvimmcrmocDescription'
googleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
    :: GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
googleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject =
  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject'
    { _gcdvimmcrmocIcon = Nothing
    , _gcdvimmcrmocName = Nothing
    , _gcdvimmcrmocContentURL = Nothing
    , _gcdvimmcrmocLargeImage = Nothing
    , _gcdvimmcrmocDescription = Nothing
    }


-- | Optional. Icon to display above media content.
gcdvimmcrmocIcon :: Lens' GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimmcrmocIcon
  = lens _gcdvimmcrmocIcon
      (\ s a -> s{_gcdvimmcrmocIcon = a})

-- | Required. Name of media card.
gcdvimmcrmocName :: Lens' GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject (Maybe Text)
gcdvimmcrmocName
  = lens _gcdvimmcrmocName
      (\ s a -> s{_gcdvimmcrmocName = a})

-- | Required. Url where the media is stored.
gcdvimmcrmocContentURL :: Lens' GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject (Maybe Text)
gcdvimmcrmocContentURL
  = lens _gcdvimmcrmocContentURL
      (\ s a -> s{_gcdvimmcrmocContentURL = a})

-- | Optional. Image to display above media content.
gcdvimmcrmocLargeImage :: Lens' GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimmcrmocLargeImage
  = lens _gcdvimmcrmocLargeImage
      (\ s a -> s{_gcdvimmcrmocLargeImage = a})

-- | Optional. Description of media card.
gcdvimmcrmocDescription :: Lens' GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject (Maybe Text)
gcdvimmcrmocDescription
  = lens _gcdvimmcrmocDescription
      (\ s a -> s{_gcdvimmcrmocDescription = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject'
                   <$>
                   (o .:? "icon") <*> (o .:? "name") <*>
                     (o .:? "contentUrl")
                     <*> (o .:? "largeImage")
                     <*> (o .:? "description"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject'{..}
          = object
              (catMaybes
                 [("icon" .=) <$> _gcdvimmcrmocIcon,
                  ("name" .=) <$> _gcdvimmcrmocName,
                  ("contentUrl" .=) <$> _gcdvimmcrmocContentURL,
                  ("largeImage" .=) <$> _gcdvimmcrmocLargeImage,
                  ("description" .=) <$> _gcdvimmcrmocDescription])

-- | An item in the list.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageListSelectItem' smart constructor.
data GoogleCloudDialogflowV2IntentMessageListSelectItem =
  GoogleCloudDialogflowV2IntentMessageListSelectItem'
    { _gcdvimlsiImage       :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimlsiTitle       :: !(Maybe Text)
    , _gcdvimlsiDescription :: !(Maybe Text)
    , _gcdvimlsiInfo        :: !(Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageListSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlsiImage'
--
-- * 'gcdvimlsiTitle'
--
-- * 'gcdvimlsiDescription'
--
-- * 'gcdvimlsiInfo'
googleCloudDialogflowV2IntentMessageListSelectItem
    :: GoogleCloudDialogflowV2IntentMessageListSelectItem
googleCloudDialogflowV2IntentMessageListSelectItem =
  GoogleCloudDialogflowV2IntentMessageListSelectItem'
    { _gcdvimlsiImage = Nothing
    , _gcdvimlsiTitle = Nothing
    , _gcdvimlsiDescription = Nothing
    , _gcdvimlsiInfo = Nothing
    }


-- | Optional. The image to display.
gcdvimlsiImage :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimlsiImage
  = lens _gcdvimlsiImage
      (\ s a -> s{_gcdvimlsiImage = a})

-- | Required. The title of the list item.
gcdvimlsiTitle :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe Text)
gcdvimlsiTitle
  = lens _gcdvimlsiTitle
      (\ s a -> s{_gcdvimlsiTitle = a})

-- | Optional. The main text describing the item.
gcdvimlsiDescription :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe Text)
gcdvimlsiDescription
  = lens _gcdvimlsiDescription
      (\ s a -> s{_gcdvimlsiDescription = a})

-- | Required. Additional information about this option.
gcdvimlsiInfo :: Lens' GoogleCloudDialogflowV2IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2IntentMessageSelectItemInfo)
gcdvimlsiInfo
  = lens _gcdvimlsiInfo
      (\ s a -> s{_gcdvimlsiInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageListSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageListSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageListSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageListSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageListSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimlsiImage,
                  ("title" .=) <$> _gcdvimlsiTitle,
                  ("description" .=) <$> _gcdvimlsiDescription,
                  ("info" .=) <$> _gcdvimlsiInfo])

-- | This field can be used to pass custom data into the webhook associated
-- with the agent. Arbitrary JSON objects are supported.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryParametersPayload' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1QueryParametersPayload =
  GoogleCloudDialogflowCxV3beta1QueryParametersPayload'
    { _gcdcvqppAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryParametersPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqppAddtional'
googleCloudDialogflowCxV3beta1QueryParametersPayload
    :: HashMap Text JSONValue -- ^ 'gcdcvqppAddtional'
    -> GoogleCloudDialogflowCxV3beta1QueryParametersPayload
googleCloudDialogflowCxV3beta1QueryParametersPayload pGcdcvqppAddtional_ =
  GoogleCloudDialogflowCxV3beta1QueryParametersPayload'
    {_gcdcvqppAddtional = _Coerce # pGcdcvqppAddtional_}


-- | Properties of the object.
gcdcvqppAddtional :: Lens' GoogleCloudDialogflowCxV3beta1QueryParametersPayload (HashMap Text JSONValue)
gcdcvqppAddtional
  = lens _gcdcvqppAddtional
      (\ s a -> s{_gcdcvqppAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryParametersPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryParametersPayload"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryParametersPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryParametersPayload
         where
        toJSON = toJSON . _gcdcvqppAddtional

-- | Metadata associated with the long running operation for
-- Versions.CreateVersion.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1CreateVersionOperationMetadata' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata =
  GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata'
    { _gcdcvcvomVersion :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvcvomVersion'
googleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
    :: GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
googleCloudDialogflowCxV3beta1CreateVersionOperationMetadata =
  GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata'
    {_gcdcvcvomVersion = Nothing}


-- | Name of the created version. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/versions\/\`.
gcdcvcvomVersion :: Lens' GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata (Maybe Text)
gcdcvcvomVersion
  = lens _gcdcvcvomVersion
      (\ s a -> s{_gcdcvcvomVersion = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata'
                   <$> (o .:? "version"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata'{..}
          = object
              (catMaybes [("version" .=) <$> _gcdcvcvomVersion])

-- | Represents a part of a training phrase.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1IntentTrainingPhrasePart' smart constructor.
data GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart =
  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart'
    { _gcdcvitppParameterId :: !(Maybe Text)
    , _gcdcvitppText        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvitppParameterId'
--
-- * 'gcdcvitppText'
googleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
    :: GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
googleCloudDialogflowCxV3beta1IntentTrainingPhrasePart =
  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart'
    {_gcdcvitppParameterId = Nothing, _gcdcvitppText = Nothing}


-- | The parameter used to annotate this part of the training phrase. This
-- field is required for annotated parts of the training phrase.
gcdcvitppParameterId :: Lens' GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart (Maybe Text)
gcdcvitppParameterId
  = lens _gcdcvitppParameterId
      (\ s a -> s{_gcdcvitppParameterId = a})

-- | Required. The text for this part.
gcdcvitppText :: Lens' GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart (Maybe Text)
gcdcvitppText
  = lens _gcdcvitppText
      (\ s a -> s{_gcdcvitppText = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart'
                   <$> (o .:? "parameterId") <*> (o .:? "text"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart'{..}
          = object
              (catMaybes
                 [("parameterId" .=) <$> _gcdcvitppParameterId,
                  ("text" .=) <$> _gcdcvitppText])

-- | Indicates that the conversation succeeded, i.e., the bot handled the
-- issue that the customer talked to it about. Dialogflow only uses this to
-- determine which conversations should be counted as successful and
-- doesn\'t process the metadata in this message in any way. Note that
-- Dialogflow also considers conversations that get to the conversation end
-- page as successful even if they don\'t return ConversationSuccess. You
-- may set this, for example: * In the entry_fulfillment of a Page if
-- entering the page indicates that the conversation succeeded. * In a
-- webhook response when you determine that you handled the customer issue.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess =
  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess'
    { _gcdcvrmcsMetadata :: Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmcsMetadata'
googleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
    :: GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
googleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess =
  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess'
    {_gcdcvrmcsMetadata = Nothing}


-- | Custom metadata. Dialogflow doesn\'t impose any structure on this.
gcdcvrmcsMetadata :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata)
gcdcvrmcsMetadata
  = lens _gcdcvrmcsMetadata
      (\ s a -> s{_gcdcvrmcsMetadata = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess'
                   <$> (o .:? "metadata"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess'{..}
          = object
              (catMaybes [("metadata" .=) <$> _gcdcvrmcsMetadata])

-- | Returns a response containing a custom, platform-specific payload.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessagePayload' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ResponseMessagePayload =
  GoogleCloudDialogflowCxV3beta1ResponseMessagePayload'
    { _gcdcvrmpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessagePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmpAddtional'
googleCloudDialogflowCxV3beta1ResponseMessagePayload
    :: HashMap Text JSONValue -- ^ 'gcdcvrmpAddtional'
    -> GoogleCloudDialogflowCxV3beta1ResponseMessagePayload
googleCloudDialogflowCxV3beta1ResponseMessagePayload pGcdcvrmpAddtional_ =
  GoogleCloudDialogflowCxV3beta1ResponseMessagePayload'
    {_gcdcvrmpAddtional = _Coerce # pGcdcvrmpAddtional_}


-- | Properties of the object.
gcdcvrmpAddtional :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessagePayload (HashMap Text JSONValue)
gcdcvrmpAddtional
  = lens _gcdcvrmpAddtional
      (\ s a -> s{_gcdcvrmpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessagePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessagePayload"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessagePayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessagePayload
         where
        toJSON = toJSON . _gcdcvrmpAddtional

-- | Row of TableCard.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageTableCardRow' smart constructor.
data GoogleCloudDialogflowV2IntentMessageTableCardRow =
  GoogleCloudDialogflowV2IntentMessageTableCardRow'
    { _gCells        :: !(Maybe [GoogleCloudDialogflowV2IntentMessageTableCardCell])
    , _gDividerAfter :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageTableCardRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gCells'
--
-- * 'gDividerAfter'
googleCloudDialogflowV2IntentMessageTableCardRow
    :: GoogleCloudDialogflowV2IntentMessageTableCardRow
googleCloudDialogflowV2IntentMessageTableCardRow =
  GoogleCloudDialogflowV2IntentMessageTableCardRow'
    {_gCells = Nothing, _gDividerAfter = Nothing}


-- | Optional. List of cells that make up this row.
gCells :: Lens' GoogleCloudDialogflowV2IntentMessageTableCardRow [GoogleCloudDialogflowV2IntentMessageTableCardCell]
gCells
  = lens _gCells (\ s a -> s{_gCells = a}) . _Default .
      _Coerce

-- | Optional. Whether to add a visual divider after this row.
gDividerAfter :: Lens' GoogleCloudDialogflowV2IntentMessageTableCardRow (Maybe Bool)
gDividerAfter
  = lens _gDividerAfter
      (\ s a -> s{_gDividerAfter = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageTableCardRow
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageTableCardRow"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageTableCardRow' <$>
                   (o .:? "cells" .!= mempty) <*>
                     (o .:? "dividerAfter"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageTableCardRow
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageTableCardRow'{..}
          = object
              (catMaybes
                 [("cells" .=) <$> _gCells,
                  ("dividerAfter" .=) <$> _gDividerAfter])

-- | Represents fulfillment information communicated to the webhook.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo =
  GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo'
    { _gcdcvwrfiTag :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwrfiTag'
googleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
    :: GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
googleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo =
  GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo'
    {_gcdcvwrfiTag = Nothing}


-- | Always present. The tag used to identify which fulfillment is being
-- called.
gcdcvwrfiTag :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo (Maybe Text)
gcdcvwrfiTag
  = lens _gcdcvwrfiTag (\ s a -> s{_gcdcvwrfiTag = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo'
                   <$> (o .:? "tag"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo'{..}
          = object (catMaybes [("tag" .=) <$> _gcdcvwrfiTag])

-- | The response message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ExportAgentResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ExportAgentResponse =
  GoogleCloudDialogflowCxV3beta1ExportAgentResponse'
    { _gcdcvearAgentURI     :: !(Maybe Text)
    , _gcdcvearAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ExportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvearAgentURI'
--
-- * 'gcdcvearAgentContent'
googleCloudDialogflowCxV3beta1ExportAgentResponse
    :: GoogleCloudDialogflowCxV3beta1ExportAgentResponse
googleCloudDialogflowCxV3beta1ExportAgentResponse =
  GoogleCloudDialogflowCxV3beta1ExportAgentResponse'
    {_gcdcvearAgentURI = Nothing, _gcdcvearAgentContent = Nothing}


-- | The URI to a file containing the exported agent. This field is populated
-- only if \`agent_uri\` is specified in ExportAgentRequest.
gcdcvearAgentURI :: Lens' GoogleCloudDialogflowCxV3beta1ExportAgentResponse (Maybe Text)
gcdcvearAgentURI
  = lens _gcdcvearAgentURI
      (\ s a -> s{_gcdcvearAgentURI = a})

-- | Uncompressed raw byte content for agent.
gcdcvearAgentContent :: Lens' GoogleCloudDialogflowCxV3beta1ExportAgentResponse (Maybe ByteString)
gcdcvearAgentContent
  = lens _gcdcvearAgentContent
      (\ s a -> s{_gcdcvearAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ExportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ExportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ExportAgentResponse'
                   <$> (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ExportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ExportAgentResponse'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gcdcvearAgentURI,
                  ("agentContent" .=) <$> _gcdcvearAgentContent])

-- | Represents a value for an intent parameter.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue' smart constructor.
data GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue =
  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue'
    { _gcdcvwriiipvOriginalValue :: !(Maybe Text)
    , _gcdcvwriiipvResolvedValue :: !(Maybe JSONValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwriiipvOriginalValue'
--
-- * 'gcdcvwriiipvResolvedValue'
googleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
    :: GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
googleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue =
  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue'
    {_gcdcvwriiipvOriginalValue = Nothing, _gcdcvwriiipvResolvedValue = Nothing}


-- | Always present. Original text value extracted from user utterance.
gcdcvwriiipvOriginalValue :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue (Maybe Text)
gcdcvwriiipvOriginalValue
  = lens _gcdcvwriiipvOriginalValue
      (\ s a -> s{_gcdcvwriiipvOriginalValue = a})

-- | Always present. Structured value for the parameter extracted from user
-- utterance.
gcdcvwriiipvResolvedValue :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue (Maybe JSONValue)
gcdcvwriiipvResolvedValue
  = lens _gcdcvwriiipvResolvedValue
      (\ s a -> s{_gcdcvwriiipvResolvedValue = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue'
                   <$>
                   (o .:? "originalValue") <*> (o .:? "resolvedValue"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue'{..}
          = object
              (catMaybes
                 [("originalValue" .=) <$> _gcdcvwriiipvOriginalValue,
                  ("resolvedValue" .=) <$> _gcdcvwriiipvResolvedValue])

-- | The result of sentiment analysis. Sentiment analysis inspects user input
-- and identifies the prevailing subjective opinion, especially to
-- determine a user\'s attitude as positive, negative, or neutral. For
-- Participants.AnalyzeContent, it needs to be configured in
-- DetectIntentRequest.query_params. For
-- Participants.StreamingAnalyzeContent, it needs to be configured in
-- StreamingDetectIntentRequest.query_params. And for
-- Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it
-- needs to be configured in
-- ConversationProfile.human_agent_assistant_config
--
-- /See:/ 'googleCloudDialogflowV2beta1SentimentAnalysisResult' smart constructor.
newtype GoogleCloudDialogflowV2beta1SentimentAnalysisResult =
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult'
    { _gQueryTextSentiment :: Maybe GoogleCloudDialogflowV2beta1Sentiment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1SentimentAnalysisResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gQueryTextSentiment'
googleCloudDialogflowV2beta1SentimentAnalysisResult
    :: GoogleCloudDialogflowV2beta1SentimentAnalysisResult
googleCloudDialogflowV2beta1SentimentAnalysisResult =
  GoogleCloudDialogflowV2beta1SentimentAnalysisResult'
    {_gQueryTextSentiment = Nothing}


-- | The sentiment analysis result for \`query_text\`.
gQueryTextSentiment :: Lens' GoogleCloudDialogflowV2beta1SentimentAnalysisResult (Maybe GoogleCloudDialogflowV2beta1Sentiment)
gQueryTextSentiment
  = lens _gQueryTextSentiment
      (\ s a -> s{_gQueryTextSentiment = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1SentimentAnalysisResult
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1SentimentAnalysisResult"
              (\ o ->
                 GoogleCloudDialogflowV2beta1SentimentAnalysisResult'
                   <$> (o .:? "queryTextSentiment"))

instance ToJSON
           GoogleCloudDialogflowV2beta1SentimentAnalysisResult
         where
        toJSON
          GoogleCloudDialogflowV2beta1SentimentAnalysisResult'{..}
          = object
              (catMaybes
                 [("queryTextSentiment" .=) <$> _gQueryTextSentiment])

-- | The response message for Intents.ListIntents.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListIntentsResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListIntentsResponse =
  GoogleCloudDialogflowCxV3beta1ListIntentsResponse'
    { _gcdcvlirIntents       :: !(Maybe [GoogleCloudDialogflowCxV3beta1Intent])
    , _gcdcvlirNextPageToken :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlirIntents'
--
-- * 'gcdcvlirNextPageToken'
googleCloudDialogflowCxV3beta1ListIntentsResponse
    :: GoogleCloudDialogflowCxV3beta1ListIntentsResponse
googleCloudDialogflowCxV3beta1ListIntentsResponse =
  GoogleCloudDialogflowCxV3beta1ListIntentsResponse'
    {_gcdcvlirIntents = Nothing, _gcdcvlirNextPageToken = Nothing}


-- | The list of intents. There will be a maximum number of items returned
-- based on the page_size field in the request.
gcdcvlirIntents :: Lens' GoogleCloudDialogflowCxV3beta1ListIntentsResponse [GoogleCloudDialogflowCxV3beta1Intent]
gcdcvlirIntents
  = lens _gcdcvlirIntents
      (\ s a -> s{_gcdcvlirIntents = a})
      . _Default
      . _Coerce

-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlirNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListIntentsResponse (Maybe Text)
gcdcvlirNextPageToken
  = lens _gcdcvlirNextPageToken
      (\ s a -> s{_gcdcvlirNextPageToken = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListIntentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListIntentsResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListIntentsResponse'
                   <$>
                   (o .:? "intents" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListIntentsResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListIntentsResponse'{..}
          = object
              (catMaybes
                 [("intents" .=) <$> _gcdcvlirIntents,
                  ("nextPageToken" .=) <$> _gcdcvlirNextPageToken])

-- | A Dialogflow CX conversation (session) can be described and visualized
-- as a state machine. The states of a CX session are represented by pages.
-- For each flow, you define many pages, where your combined pages can
-- handle a complete conversation on the topics the flow is designed for.
-- At any given moment, exactly one page is the current page, the current
-- page is considered active, and the flow associated with that page is
-- considered active. Every flow has a special start page. When a flow
-- initially becomes active, the start page page becomes the current page.
-- For each conversational turn, the current page will either stay the same
-- or transition to another page. You configure each page to collect
-- information from the end-user that is relevant for the conversational
-- state represented by the page. For more information, see the [Page
-- guide](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/page).
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Page' smart constructor.
data GoogleCloudDialogflowCxV3beta1Page =
  GoogleCloudDialogflowCxV3beta1Page'
    { _gcdcvpEventHandlers         :: !(Maybe [GoogleCloudDialogflowCxV3beta1EventHandler])
    , _gcdcvpTransitionRoutes      :: !(Maybe [GoogleCloudDialogflowCxV3beta1TransitionRoute])
    , _gcdcvpName                  :: !(Maybe Text)
    , _gcdcvpTransitionRouteGroups :: !(Maybe [Text])
    , _gcdcvpDisplayName           :: !(Maybe Text)
    , _gcdcvpForm                  :: !(Maybe GoogleCloudDialogflowCxV3beta1Form)
    , _gcdcvpEntryFulfillment      :: !(Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Page' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvpEventHandlers'
--
-- * 'gcdcvpTransitionRoutes'
--
-- * 'gcdcvpName'
--
-- * 'gcdcvpTransitionRouteGroups'
--
-- * 'gcdcvpDisplayName'
--
-- * 'gcdcvpForm'
--
-- * 'gcdcvpEntryFulfillment'
googleCloudDialogflowCxV3beta1Page
    :: GoogleCloudDialogflowCxV3beta1Page
googleCloudDialogflowCxV3beta1Page =
  GoogleCloudDialogflowCxV3beta1Page'
    { _gcdcvpEventHandlers = Nothing
    , _gcdcvpTransitionRoutes = Nothing
    , _gcdcvpName = Nothing
    , _gcdcvpTransitionRouteGroups = Nothing
    , _gcdcvpDisplayName = Nothing
    , _gcdcvpForm = Nothing
    , _gcdcvpEntryFulfillment = Nothing
    }


-- | Handlers associated with the page to handle events such as webhook
-- errors, no match or no input.
gcdcvpEventHandlers :: Lens' GoogleCloudDialogflowCxV3beta1Page [GoogleCloudDialogflowCxV3beta1EventHandler]
gcdcvpEventHandlers
  = lens _gcdcvpEventHandlers
      (\ s a -> s{_gcdcvpEventHandlers = a})
      . _Default
      . _Coerce

-- | A list of transitions for the transition rules of this page. They route
-- the conversation to another page in the same flow, or another flow. When
-- we are in a certain page, the TransitionRoutes are evalauted in the
-- following order: * TransitionRoutes defined in the page with intent
-- specified. * TransitionRoutes defined in the transition route groups. *
-- TransitionRoutes defined in flow with intent specified. *
-- TransitionRoutes defined in the page with only condition specified.
gcdcvpTransitionRoutes :: Lens' GoogleCloudDialogflowCxV3beta1Page [GoogleCloudDialogflowCxV3beta1TransitionRoute]
gcdcvpTransitionRoutes
  = lens _gcdcvpTransitionRoutes
      (\ s a -> s{_gcdcvpTransitionRoutes = a})
      . _Default
      . _Coerce

-- | The unique identifier of the page. Required for the Pages.UpdatePage
-- method. Pages.CreatePage populates the name automatically. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/pages\/\`.
gcdcvpName :: Lens' GoogleCloudDialogflowCxV3beta1Page (Maybe Text)
gcdcvpName
  = lens _gcdcvpName (\ s a -> s{_gcdcvpName = a})

-- | Ordered list of \`TransitionRouteGroups\` associated with the page.
-- Transition route groups must be unique within a page. * If multiple
-- transition routes within a page scope refer to the same intent, then the
-- precedence order is: page\'s transition route -> page\'s transition
-- route group -> flow\'s transition routes. * If multiple transition route
-- groups within a page contain the same intent, then the first group in
-- the ordered list takes precedence.
-- Format:\`projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/\`.
gcdcvpTransitionRouteGroups :: Lens' GoogleCloudDialogflowCxV3beta1Page [Text]
gcdcvpTransitionRouteGroups
  = lens _gcdcvpTransitionRouteGroups
      (\ s a -> s{_gcdcvpTransitionRouteGroups = a})
      . _Default
      . _Coerce

-- | Required. The human-readable name of the page, unique within the agent.
gcdcvpDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1Page (Maybe Text)
gcdcvpDisplayName
  = lens _gcdcvpDisplayName
      (\ s a -> s{_gcdcvpDisplayName = a})

-- | The form associated with the page, used for collecting parameters
-- relevant to the page.
gcdcvpForm :: Lens' GoogleCloudDialogflowCxV3beta1Page (Maybe GoogleCloudDialogflowCxV3beta1Form)
gcdcvpForm
  = lens _gcdcvpForm (\ s a -> s{_gcdcvpForm = a})

-- | The fulfillment to call when the session is entering the page.
gcdcvpEntryFulfillment :: Lens' GoogleCloudDialogflowCxV3beta1Page (Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
gcdcvpEntryFulfillment
  = lens _gcdcvpEntryFulfillment
      (\ s a -> s{_gcdcvpEntryFulfillment = a})

instance FromJSON GoogleCloudDialogflowCxV3beta1Page
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Page"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Page' <$>
                   (o .:? "eventHandlers" .!= mempty) <*>
                     (o .:? "transitionRoutes" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "transitionRouteGroups" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "form")
                     <*> (o .:? "entryFulfillment"))

instance ToJSON GoogleCloudDialogflowCxV3beta1Page
         where
        toJSON GoogleCloudDialogflowCxV3beta1Page'{..}
          = object
              (catMaybes
                 [("eventHandlers" .=) <$> _gcdcvpEventHandlers,
                  ("transitionRoutes" .=) <$> _gcdcvpTransitionRoutes,
                  ("name" .=) <$> _gcdcvpName,
                  ("transitionRouteGroups" .=) <$>
                    _gcdcvpTransitionRouteGroups,
                  ("displayName" .=) <$> _gcdcvpDisplayName,
                  ("form" .=) <$> _gcdcvpForm,
                  ("entryFulfillment" .=) <$> _gcdcvpEntryFulfillment])

-- | Free-form diagnostic information for the associated detect intent
-- request. The fields of this data can change without notice, so you
-- should not write code that depends on its structure. The data may
-- contain: - webhook call latency - webhook errors
--
-- /See:/ 'googleCloudDialogflowV2QueryResultDiagnosticInfo' smart constructor.
newtype GoogleCloudDialogflowV2QueryResultDiagnosticInfo =
  GoogleCloudDialogflowV2QueryResultDiagnosticInfo'
    { _gcdvqrdiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2QueryResultDiagnosticInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrdiAddtional'
googleCloudDialogflowV2QueryResultDiagnosticInfo
    :: HashMap Text JSONValue -- ^ 'gcdvqrdiAddtional'
    -> GoogleCloudDialogflowV2QueryResultDiagnosticInfo
googleCloudDialogflowV2QueryResultDiagnosticInfo pGcdvqrdiAddtional_ =
  GoogleCloudDialogflowV2QueryResultDiagnosticInfo'
    {_gcdvqrdiAddtional = _Coerce # pGcdvqrdiAddtional_}


-- | Properties of the object.
gcdvqrdiAddtional :: Lens' GoogleCloudDialogflowV2QueryResultDiagnosticInfo (HashMap Text JSONValue)
gcdvqrdiAddtional
  = lens _gcdvqrdiAddtional
      (\ s a -> s{_gcdvqrdiAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2QueryResultDiagnosticInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2QueryResultDiagnosticInfo"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResultDiagnosticInfo' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2QueryResultDiagnosticInfo
         where
        toJSON = toJSON . _gcdvqrdiAddtional

-- | The request message for Flows.TrainFlow.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1TrainFlowRequest' smart constructor.
data GoogleCloudDialogflowCxV3beta1TrainFlowRequest =
  GoogleCloudDialogflowCxV3beta1TrainFlowRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1TrainFlowRequest' with the minimum fields required to make a request.
--
googleCloudDialogflowCxV3beta1TrainFlowRequest
    :: GoogleCloudDialogflowCxV3beta1TrainFlowRequest
googleCloudDialogflowCxV3beta1TrainFlowRequest =
  GoogleCloudDialogflowCxV3beta1TrainFlowRequest'


instance FromJSON
           GoogleCloudDialogflowCxV3beta1TrainFlowRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1TrainFlowRequest"
              (\ o ->
                 pure GoogleCloudDialogflowCxV3beta1TrainFlowRequest')

instance ToJSON
           GoogleCloudDialogflowCxV3beta1TrainFlowRequest
         where
        toJSON = const emptyObject

-- | The text response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageText' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageText =
  GoogleCloudDialogflowV2IntentMessageText'
    { _gcdvimtText :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtText'
googleCloudDialogflowV2IntentMessageText
    :: GoogleCloudDialogflowV2IntentMessageText
googleCloudDialogflowV2IntentMessageText =
  GoogleCloudDialogflowV2IntentMessageText' {_gcdvimtText = Nothing}


-- | Optional. The collection of the agent\'s responses.
gcdvimtText :: Lens' GoogleCloudDialogflowV2IntentMessageText [Text]
gcdvimtText
  = lens _gcdvimtText (\ s a -> s{_gcdvimtText = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageText
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageText"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageText' <$>
                   (o .:? "text" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageText
         where
        toJSON GoogleCloudDialogflowV2IntentMessageText'{..}
          = object (catMaybes [("text" .=) <$> _gcdvimtText])

-- | Custom metadata. Dialogflow doesn\'t impose any structure on this.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata =
  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata'
    { _gcdcvrmcsmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmcsmAddtional'
googleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata
    :: HashMap Text JSONValue -- ^ 'gcdcvrmcsmAddtional'
    -> GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata
googleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata pGcdcvrmcsmAddtional_ =
  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata'
    {_gcdcvrmcsmAddtional = _Coerce # pGcdcvrmcsmAddtional_}


-- | Properties of the object.
gcdcvrmcsmAddtional :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata (HashMap Text JSONValue)
gcdcvrmcsmAddtional
  = lens _gcdcvrmcsmAddtional
      (\ s a -> s{_gcdcvrmcsmAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccessMetadata
         where
        toJSON = toJSON . _gcdcvrmcsmAddtional

-- | The collection of extracted parameters. Depending on your protocol or
-- client library language, this is a map, associative array, symbol table,
-- dictionary, or JSON object composed of a collection of (MapKey,
-- MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
-- MapValue type: - If parameter\'s entity type is a composite entity: map
-- - Else: string or number, depending on parameter value type - MapValue
-- value: - If parameter\'s entity type is a composite entity: map from
-- composite entity property names to property values - Else: parameter
-- value
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResultParameters' smart constructor.
newtype GoogleCloudDialogflowV2beta1QueryResultParameters =
  GoogleCloudDialogflowV2beta1QueryResultParameters'
    { _gcdvqrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResultParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrpAddtional'
googleCloudDialogflowV2beta1QueryResultParameters
    :: HashMap Text JSONValue -- ^ 'gcdvqrpAddtional'
    -> GoogleCloudDialogflowV2beta1QueryResultParameters
googleCloudDialogflowV2beta1QueryResultParameters pGcdvqrpAddtional_ =
  GoogleCloudDialogflowV2beta1QueryResultParameters'
    {_gcdvqrpAddtional = _Coerce # pGcdvqrpAddtional_}


-- | Properties of the object.
gcdvqrpAddtional :: Lens' GoogleCloudDialogflowV2beta1QueryResultParameters (HashMap Text JSONValue)
gcdvqrpAddtional
  = lens _gcdvqrpAddtional
      (\ s a -> s{_gcdvqrpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResultParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResultParameters"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResultParameters'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResultParameters
         where
        toJSON = toJSON . _gcdvqrpAddtional

-- | The basic card message. Useful for displaying information.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBasicCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageBasicCard =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard'
    { _gcdvimbccImage         :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimbccButtons       :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton])
    , _gcdvimbccSubtitle      :: !(Maybe Text)
    , _gcdvimbccTitle         :: !(Maybe Text)
    , _gcdvimbccFormattedText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBasicCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbccImage'
--
-- * 'gcdvimbccButtons'
--
-- * 'gcdvimbccSubtitle'
--
-- * 'gcdvimbccTitle'
--
-- * 'gcdvimbccFormattedText'
googleCloudDialogflowV2beta1IntentMessageBasicCard
    :: GoogleCloudDialogflowV2beta1IntentMessageBasicCard
googleCloudDialogflowV2beta1IntentMessageBasicCard =
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard'
    { _gcdvimbccImage = Nothing
    , _gcdvimbccButtons = Nothing
    , _gcdvimbccSubtitle = Nothing
    , _gcdvimbccTitle = Nothing
    , _gcdvimbccFormattedText = Nothing
    }


-- | Optional. The image for the card.
gcdvimbccImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimbccImage
  = lens _gcdvimbccImage
      (\ s a -> s{_gcdvimbccImage = a})

-- | Optional. The collection of card buttons.
gcdvimbccButtons :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton]
gcdvimbccButtons
  = lens _gcdvimbccButtons
      (\ s a -> s{_gcdvimbccButtons = a})
      . _Default
      . _Coerce

-- | Optional. The subtitle of the card.
gcdvimbccSubtitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe Text)
gcdvimbccSubtitle
  = lens _gcdvimbccSubtitle
      (\ s a -> s{_gcdvimbccSubtitle = a})

-- | Optional. The title of the card.
gcdvimbccTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe Text)
gcdvimbccTitle
  = lens _gcdvimbccTitle
      (\ s a -> s{_gcdvimbccTitle = a})

-- | Required, unless image is present. The body text of the card.
gcdvimbccFormattedText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBasicCard (Maybe Text)
gcdvimbccFormattedText
  = lens _gcdvimbccFormattedText
      (\ s a -> s{_gcdvimbccFormattedText = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBasicCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBasicCard'
                   <$>
                   (o .:? "image") <*> (o .:? "buttons" .!= mempty) <*>
                     (o .:? "subtitle")
                     <*> (o .:? "title")
                     <*> (o .:? "formattedText"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBasicCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBasicCard'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimbccImage,
                  ("buttons" .=) <$> _gcdvimbccButtons,
                  ("subtitle" .=) <$> _gcdvimbccSubtitle,
                  ("title" .=) <$> _gcdvimbccTitle,
                  ("formattedText" .=) <$> _gcdvimbccFormattedText])

-- | A list of cascading if-else conditions. Cases are mutually exclusive.
-- The first one with a matching condition is selected, all the rest
-- ignored.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FulfillmentConditionalCases' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases =
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases'
    { _gcdcvfccCases :: Maybe [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfccCases'
googleCloudDialogflowCxV3beta1FulfillmentConditionalCases
    :: GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
googleCloudDialogflowCxV3beta1FulfillmentConditionalCases =
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases'
    {_gcdcvfccCases = Nothing}


-- | A list of cascading if-else conditions.
gcdcvfccCases :: Lens' GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase]
gcdcvfccCases
  = lens _gcdcvfccCases
      (\ s a -> s{_gcdcvfccCases = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases'
                   <$> (o .:? "cases" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases'{..}
          = object
              (catMaybes [("cases" .=) <$> _gcdcvfccCases])

-- | The response message for
-- TransitionRouteGroups.ListTransitionRouteGroups.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse =
  GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse'
    { _gcdcvltrgrNextPageToken         :: !(Maybe Text)
    , _gcdcvltrgrTransitionRouteGroups :: !(Maybe [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvltrgrNextPageToken'
--
-- * 'gcdcvltrgrTransitionRouteGroups'
googleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
    :: GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
googleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse =
  GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse'
    { _gcdcvltrgrNextPageToken = Nothing
    , _gcdcvltrgrTransitionRouteGroups = Nothing
    }


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvltrgrNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse (Maybe Text)
gcdcvltrgrNextPageToken
  = lens _gcdcvltrgrNextPageToken
      (\ s a -> s{_gcdcvltrgrNextPageToken = a})

-- | The list of transition route groups. There will be a maximum number of
-- items returned based on the page_size field in the request. The list may
-- in some cases be empty or contain fewer entries than page_size even if
-- this isn\'t the last page.
gcdcvltrgrTransitionRouteGroups :: Lens' GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse [GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
gcdcvltrgrTransitionRouteGroups
  = lens _gcdcvltrgrTransitionRouteGroups
      (\ s a -> s{_gcdcvltrgrTransitionRouteGroups = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "transitionRouteGroups" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvltrgrNextPageToken,
                  ("transitionRouteGroups" .=) <$>
                    _gcdcvltrgrTransitionRouteGroups])

-- | Settings related to speech recognition.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1SpeechToTextSettings' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1SpeechToTextSettings =
  GoogleCloudDialogflowCxV3beta1SpeechToTextSettings'
    { _gcdcvsttsEnableSpeechAdaptation :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1SpeechToTextSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvsttsEnableSpeechAdaptation'
googleCloudDialogflowCxV3beta1SpeechToTextSettings
    :: GoogleCloudDialogflowCxV3beta1SpeechToTextSettings
googleCloudDialogflowCxV3beta1SpeechToTextSettings =
  GoogleCloudDialogflowCxV3beta1SpeechToTextSettings'
    {_gcdcvsttsEnableSpeechAdaptation = Nothing}


-- | Whether to use speech adaptation for speech recognition.
gcdcvsttsEnableSpeechAdaptation :: Lens' GoogleCloudDialogflowCxV3beta1SpeechToTextSettings (Maybe Bool)
gcdcvsttsEnableSpeechAdaptation
  = lens _gcdcvsttsEnableSpeechAdaptation
      (\ s a -> s{_gcdcvsttsEnableSpeechAdaptation = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1SpeechToTextSettings
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1SpeechToTextSettings"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1SpeechToTextSettings'
                   <$> (o .:? "enableSpeechAdaptation"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1SpeechToTextSettings
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1SpeechToTextSettings'{..}
          = object
              (catMaybes
                 [("enableSpeechAdaptation" .=) <$>
                    _gcdcvsttsEnableSpeechAdaptation])

-- | Represents an example that the agent is trained on.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentTrainingPhrase' smart constructor.
data GoogleCloudDialogflowV2beta1IntentTrainingPhrase =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase'
    { _gParts           :: !(Maybe [GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart])
    , _gName            :: !(Maybe Text)
    , _gTimesAddedCount :: !(Maybe (Textual Int32))
    , _gType            :: !(Maybe GoogleCloudDialogflowV2beta1IntentTrainingPhraseType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentTrainingPhrase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gParts'
--
-- * 'gName'
--
-- * 'gTimesAddedCount'
--
-- * 'gType'
googleCloudDialogflowV2beta1IntentTrainingPhrase
    :: GoogleCloudDialogflowV2beta1IntentTrainingPhrase
googleCloudDialogflowV2beta1IntentTrainingPhrase =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrase'
    { _gParts = Nothing
    , _gName = Nothing
    , _gTimesAddedCount = Nothing
    , _gType = Nothing
    }


-- | Required. The ordered list of training phrase parts. The parts are
-- concatenated in order to form the training phrase. Note: The API does
-- not automatically annotate training phrases like the Dialogflow Console
-- does. Note: Do not forget to include whitespace at part boundaries, so
-- the training phrase is well formatted when the parts are concatenated.
-- If the training phrase does not need to be annotated with parameters,
-- you just need a single part with only the Part.text field set. If you
-- want to annotate the training phrase, you must create multiple parts,
-- where the fields of each part are populated in one of two ways: -
-- \`Part.text\` is set to a part of the phrase that has no parameters. -
-- \`Part.text\` is set to a part of the phrase that you want to annotate,
-- and the \`entity_type\`, \`alias\`, and \`user_defined\` fields are all
-- set.
gParts :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase [GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart]
gParts
  = lens _gParts (\ s a -> s{_gParts = a}) . _Default .
      _Coerce

-- | Output only. The unique identifier of this training phrase.
gName :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase (Maybe Text)
gName = lens _gName (\ s a -> s{_gName = a})

-- | Optional. Indicates how many times this example was added to the intent.
-- Each time a developer adds an existing sample by editing an intent or
-- training, this counter is increased.
gTimesAddedCount :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase (Maybe Int32)
gTimesAddedCount
  = lens _gTimesAddedCount
      (\ s a -> s{_gTimesAddedCount = a})
      . mapping _Coerce

-- | Required. The type of the training phrase.
gType :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrase (Maybe GoogleCloudDialogflowV2beta1IntentTrainingPhraseType)
gType = lens _gType (\ s a -> s{_gType = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrase
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentTrainingPhrase"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentTrainingPhrase' <$>
                   (o .:? "parts" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "timesAddedCount")
                     <*> (o .:? "type"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrase
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentTrainingPhrase'{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _gParts, ("name" .=) <$> _gName,
                  ("timesAddedCount" .=) <$> _gTimesAddedCount,
                  ("type" .=) <$> _gType])

-- | The response message for Agents.ListAgents.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListAgentsResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListAgentsResponse =
  GoogleCloudDialogflowCxV3beta1ListAgentsResponse'
    { _gcdcvlarNextPageToken :: !(Maybe Text)
    , _gcdcvlarAgents        :: !(Maybe [GoogleCloudDialogflowCxV3beta1Agent])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListAgentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlarNextPageToken'
--
-- * 'gcdcvlarAgents'
googleCloudDialogflowCxV3beta1ListAgentsResponse
    :: GoogleCloudDialogflowCxV3beta1ListAgentsResponse
googleCloudDialogflowCxV3beta1ListAgentsResponse =
  GoogleCloudDialogflowCxV3beta1ListAgentsResponse'
    {_gcdcvlarNextPageToken = Nothing, _gcdcvlarAgents = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlarNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListAgentsResponse (Maybe Text)
gcdcvlarNextPageToken
  = lens _gcdcvlarNextPageToken
      (\ s a -> s{_gcdcvlarNextPageToken = a})

-- | The list of agents. There will be a maximum number of items returned
-- based on the page_size field in the request.
gcdcvlarAgents :: Lens' GoogleCloudDialogflowCxV3beta1ListAgentsResponse [GoogleCloudDialogflowCxV3beta1Agent]
gcdcvlarAgents
  = lens _gcdcvlarAgents
      (\ s a -> s{_gcdcvlarAgents = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListAgentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListAgentsResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListAgentsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "agents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListAgentsResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListAgentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlarNextPageToken,
                  ("agents" .=) <$> _gcdcvlarAgents])

-- | Represents the result of a conversational query.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryResult' smart constructor.
data GoogleCloudDialogflowCxV3beta1QueryResult =
  GoogleCloudDialogflowCxV3beta1QueryResult'
    { _gcdcvqrTriggerIntent             :: !(Maybe Text)
    , _gcdcvqrLanguageCode              :: !(Maybe Text)
    , _gcdcvqrIntentDetectionConfidence :: !(Maybe (Textual Double))
    , _gcdcvqrCurrentPage               :: !(Maybe GoogleCloudDialogflowCxV3beta1Page)
    , _gcdcvqrText                      :: !(Maybe Text)
    , _gcdcvqrWebhookPayloads           :: !(Maybe [GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem])
    , _gcdcvqrWebhookStatuses           :: !(Maybe [GoogleRpcStatus])
    , _gcdcvqrIntent                    :: !(Maybe GoogleCloudDialogflowCxV3beta1Intent)
    , _gcdcvqrTriggerEvent              :: !(Maybe Text)
    , _gcdcvqrSentimentAnalysisResult   :: !(Maybe GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult)
    , _gcdcvqrParameters                :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryResultParameters)
    , _gcdcvqrMatch                     :: !(Maybe GoogleCloudDialogflowCxV3beta1Match)
    , _gcdcvqrResponseMessages          :: !(Maybe [GoogleCloudDialogflowCxV3beta1ResponseMessage])
    , _gcdcvqrTranscript                :: !(Maybe Text)
    , _gcdcvqrDiagnosticInfo            :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqrTriggerIntent'
--
-- * 'gcdcvqrLanguageCode'
--
-- * 'gcdcvqrIntentDetectionConfidence'
--
-- * 'gcdcvqrCurrentPage'
--
-- * 'gcdcvqrText'
--
-- * 'gcdcvqrWebhookPayloads'
--
-- * 'gcdcvqrWebhookStatuses'
--
-- * 'gcdcvqrIntent'
--
-- * 'gcdcvqrTriggerEvent'
--
-- * 'gcdcvqrSentimentAnalysisResult'
--
-- * 'gcdcvqrParameters'
--
-- * 'gcdcvqrMatch'
--
-- * 'gcdcvqrResponseMessages'
--
-- * 'gcdcvqrTranscript'
--
-- * 'gcdcvqrDiagnosticInfo'
googleCloudDialogflowCxV3beta1QueryResult
    :: GoogleCloudDialogflowCxV3beta1QueryResult
googleCloudDialogflowCxV3beta1QueryResult =
  GoogleCloudDialogflowCxV3beta1QueryResult'
    { _gcdcvqrTriggerIntent = Nothing
    , _gcdcvqrLanguageCode = Nothing
    , _gcdcvqrIntentDetectionConfidence = Nothing
    , _gcdcvqrCurrentPage = Nothing
    , _gcdcvqrText = Nothing
    , _gcdcvqrWebhookPayloads = Nothing
    , _gcdcvqrWebhookStatuses = Nothing
    , _gcdcvqrIntent = Nothing
    , _gcdcvqrTriggerEvent = Nothing
    , _gcdcvqrSentimentAnalysisResult = Nothing
    , _gcdcvqrParameters = Nothing
    , _gcdcvqrMatch = Nothing
    , _gcdcvqrResponseMessages = Nothing
    , _gcdcvqrTranscript = Nothing
    , _gcdcvqrDiagnosticInfo = Nothing
    }


-- | If an intent was provided as input, this field will contain a copy of
-- the intent identifier.
gcdcvqrTriggerIntent :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe Text)
gcdcvqrTriggerIntent
  = lens _gcdcvqrTriggerIntent
      (\ s a -> s{_gcdcvqrTriggerIntent = a})

-- | The language that was triggered during intent detection. See [Language
-- Support](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/language)
-- for a list of the currently supported language codes.
gcdcvqrLanguageCode :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe Text)
gcdcvqrLanguageCode
  = lens _gcdcvqrLanguageCode
      (\ s a -> s{_gcdcvqrLanguageCode = a})

-- | The intent detection confidence. Values range from 0.0 (completely
-- uncertain) to 1.0 (completely certain). This value is for informational
-- purpose only and is only used to help match the best intent within the
-- classification threshold. This value may change for the same end-user
-- expression at any time due to a model retraining or change in
-- implementation. This field is deprecated, please use QueryResult.match
-- instead.
gcdcvqrIntentDetectionConfidence :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe Double)
gcdcvqrIntentDetectionConfidence
  = lens _gcdcvqrIntentDetectionConfidence
      (\ s a -> s{_gcdcvqrIntentDetectionConfidence = a})
      . mapping _Coerce

-- | The current Page. Some, not all fields are filled in this message,
-- including but not limited to \`name\` and \`display_name\`.
gcdcvqrCurrentPage :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe GoogleCloudDialogflowCxV3beta1Page)
gcdcvqrCurrentPage
  = lens _gcdcvqrCurrentPage
      (\ s a -> s{_gcdcvqrCurrentPage = a})

-- | If natural language text was provided as input, this field will contain
-- a copy of the text.
gcdcvqrText :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe Text)
gcdcvqrText
  = lens _gcdcvqrText (\ s a -> s{_gcdcvqrText = a})

-- | The list of webhook payload in WebhookResponse.payload, in the order of
-- call sequence. If some webhook call fails or doesn\'t return any
-- payload, an empty \`Struct\` would be used instead.
gcdcvqrWebhookPayloads :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult [GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem]
gcdcvqrWebhookPayloads
  = lens _gcdcvqrWebhookPayloads
      (\ s a -> s{_gcdcvqrWebhookPayloads = a})
      . _Default
      . _Coerce

-- | The list of webhook call status in the order of call sequence.
gcdcvqrWebhookStatuses :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult [GoogleRpcStatus]
gcdcvqrWebhookStatuses
  = lens _gcdcvqrWebhookStatuses
      (\ s a -> s{_gcdcvqrWebhookStatuses = a})
      . _Default
      . _Coerce

-- | The Intent that matched the conversational query. Some, not all fields
-- are filled in this message, including but not limited to: \`name\` and
-- \`display_name\`. This field is deprecated, please use QueryResult.match
-- instead.
gcdcvqrIntent :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe GoogleCloudDialogflowCxV3beta1Intent)
gcdcvqrIntent
  = lens _gcdcvqrIntent
      (\ s a -> s{_gcdcvqrIntent = a})

-- | If an event was provided as input, this field will contain the name of
-- the event.
gcdcvqrTriggerEvent :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe Text)
gcdcvqrTriggerEvent
  = lens _gcdcvqrTriggerEvent
      (\ s a -> s{_gcdcvqrTriggerEvent = a})

-- | The sentiment analyss result, which depends on
-- \`analyze_query_text_sentiment\`, specified in the request.
gcdcvqrSentimentAnalysisResult :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult)
gcdcvqrSentimentAnalysisResult
  = lens _gcdcvqrSentimentAnalysisResult
      (\ s a -> s{_gcdcvqrSentimentAnalysisResult = a})

-- | The collected session parameters. Depending on your protocol or client
-- library language, this is a map, associative array, symbol table,
-- dictionary, or JSON object composed of a collection of (MapKey,
-- MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
-- MapValue type: - If parameter\'s entity type is a composite entity: map
-- - Else: string or number, depending on parameter value type - MapValue
-- value: - If parameter\'s entity type is a composite entity: map from
-- composite entity property names to property values - Else: parameter
-- value
gcdcvqrParameters :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe GoogleCloudDialogflowCxV3beta1QueryResultParameters)
gcdcvqrParameters
  = lens _gcdcvqrParameters
      (\ s a -> s{_gcdcvqrParameters = a})

-- | Intent match result, could be an intent or an event.
gcdcvqrMatch :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe GoogleCloudDialogflowCxV3beta1Match)
gcdcvqrMatch
  = lens _gcdcvqrMatch (\ s a -> s{_gcdcvqrMatch = a})

-- | The list of rich messages returned to the client. Responses vary from
-- simple text messages to more sophisticated, structured payloads used to
-- drive complex logic.
gcdcvqrResponseMessages :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult [GoogleCloudDialogflowCxV3beta1ResponseMessage]
gcdcvqrResponseMessages
  = lens _gcdcvqrResponseMessages
      (\ s a -> s{_gcdcvqrResponseMessages = a})
      . _Default
      . _Coerce

-- | If natural language speech audio was provided as input, this field will
-- contain the trascript for the audio.
gcdcvqrTranscript :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe Text)
gcdcvqrTranscript
  = lens _gcdcvqrTranscript
      (\ s a -> s{_gcdcvqrTranscript = a})

-- | The free-form diagnostic info. For example, this field could contain
-- webhook call latency. The string keys of the Struct\'s fields map can
-- change without notice.
gcdcvqrDiagnosticInfo :: Lens' GoogleCloudDialogflowCxV3beta1QueryResult (Maybe GoogleCloudDialogflowCxV3beta1QueryResultDiagnosticInfo)
gcdcvqrDiagnosticInfo
  = lens _gcdcvqrDiagnosticInfo
      (\ s a -> s{_gcdcvqrDiagnosticInfo = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryResult
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryResult"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryResult' <$>
                   (o .:? "triggerIntent") <*> (o .:? "languageCode")
                     <*> (o .:? "intentDetectionConfidence")
                     <*> (o .:? "currentPage")
                     <*> (o .:? "text")
                     <*> (o .:? "webhookPayloads" .!= mempty)
                     <*> (o .:? "webhookStatuses" .!= mempty)
                     <*> (o .:? "intent")
                     <*> (o .:? "triggerEvent")
                     <*> (o .:? "sentimentAnalysisResult")
                     <*> (o .:? "parameters")
                     <*> (o .:? "match")
                     <*> (o .:? "responseMessages" .!= mempty)
                     <*> (o .:? "transcript")
                     <*> (o .:? "diagnosticInfo"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryResult
         where
        toJSON GoogleCloudDialogflowCxV3beta1QueryResult'{..}
          = object
              (catMaybes
                 [("triggerIntent" .=) <$> _gcdcvqrTriggerIntent,
                  ("languageCode" .=) <$> _gcdcvqrLanguageCode,
                  ("intentDetectionConfidence" .=) <$>
                    _gcdcvqrIntentDetectionConfidence,
                  ("currentPage" .=) <$> _gcdcvqrCurrentPage,
                  ("text" .=) <$> _gcdcvqrText,
                  ("webhookPayloads" .=) <$> _gcdcvqrWebhookPayloads,
                  ("webhookStatuses" .=) <$> _gcdcvqrWebhookStatuses,
                  ("intent" .=) <$> _gcdcvqrIntent,
                  ("triggerEvent" .=) <$> _gcdcvqrTriggerEvent,
                  ("sentimentAnalysisResult" .=) <$>
                    _gcdcvqrSentimentAnalysisResult,
                  ("parameters" .=) <$> _gcdcvqrParameters,
                  ("match" .=) <$> _gcdcvqrMatch,
                  ("responseMessages" .=) <$> _gcdcvqrResponseMessages,
                  ("transcript" .=) <$> _gcdcvqrTranscript,
                  ("diagnosticInfo" .=) <$> _gcdcvqrDiagnosticInfo])

-- | The response message for TestCases.ExportTestCases.
--
-- /See:/ 'googleCloudDialogflowV3alpha1ExportTestCasesResponse' smart constructor.
data GoogleCloudDialogflowV3alpha1ExportTestCasesResponse =
  GoogleCloudDialogflowV3alpha1ExportTestCasesResponse'
    { _gcdvetcrContent :: !(Maybe Bytes)
    , _gcdvetcrGcsURI  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV3alpha1ExportTestCasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvetcrContent'
--
-- * 'gcdvetcrGcsURI'
googleCloudDialogflowV3alpha1ExportTestCasesResponse
    :: GoogleCloudDialogflowV3alpha1ExportTestCasesResponse
googleCloudDialogflowV3alpha1ExportTestCasesResponse =
  GoogleCloudDialogflowV3alpha1ExportTestCasesResponse'
    {_gcdvetcrContent = Nothing, _gcdvetcrGcsURI = Nothing}


-- | Uncompressed raw byte content for test cases.
gcdvetcrContent :: Lens' GoogleCloudDialogflowV3alpha1ExportTestCasesResponse (Maybe ByteString)
gcdvetcrContent
  = lens _gcdvetcrContent
      (\ s a -> s{_gcdvetcrContent = a})
      . mapping _Bytes

-- | The URI to a file containing the exported test cases. This field is
-- populated only if \`gcs_uri\` is specified in ExportTestCasesRequest.
gcdvetcrGcsURI :: Lens' GoogleCloudDialogflowV3alpha1ExportTestCasesResponse (Maybe Text)
gcdvetcrGcsURI
  = lens _gcdvetcrGcsURI
      (\ s a -> s{_gcdvetcrGcsURI = a})

instance FromJSON
           GoogleCloudDialogflowV3alpha1ExportTestCasesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV3alpha1ExportTestCasesResponse"
              (\ o ->
                 GoogleCloudDialogflowV3alpha1ExportTestCasesResponse'
                   <$> (o .:? "content") <*> (o .:? "gcsUri"))

instance ToJSON
           GoogleCloudDialogflowV3alpha1ExportTestCasesResponse
         where
        toJSON
          GoogleCloudDialogflowV3alpha1ExportTestCasesResponse'{..}
          = object
              (catMaybes
                 [("content" .=) <$> _gcdvetcrContent,
                  ("gcsUri" .=) <$> _gcdvetcrGcsURI])

-- | Metadata associated with the long running operation for
-- Versions.CreateVersion.
--
-- /See:/ 'googleCloudDialogflowV3alpha1CreateVersionOperationMetadata' smart constructor.
newtype GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata =
  GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata'
    { _gcdvcvomVersion :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvcvomVersion'
googleCloudDialogflowV3alpha1CreateVersionOperationMetadata
    :: GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata
googleCloudDialogflowV3alpha1CreateVersionOperationMetadata =
  GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata'
    {_gcdvcvomVersion = Nothing}


-- | Name of the created version. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/versions\/\`.
gcdvcvomVersion :: Lens' GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata (Maybe Text)
gcdvcvomVersion
  = lens _gcdvcvomVersion
      (\ s a -> s{_gcdvcvomVersion = a})

instance FromJSON
           GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata"
              (\ o ->
                 GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata'
                   <$> (o .:? "version"))

instance ToJSON
           GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata
         where
        toJSON
          GoogleCloudDialogflowV3alpha1CreateVersionOperationMetadata'{..}
          = object
              (catMaybes [("version" .=) <$> _gcdvcvomVersion])

-- | Webhooks host the developer\'s business logic. During a session,
-- webhooks allow the developer to use the data extracted by Dialogflow\'s
-- natural language processing to generate dynamic responses, validate
-- collected data, or trigger actions on the backend.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Webhook' smart constructor.
data GoogleCloudDialogflowCxV3beta1Webhook =
  GoogleCloudDialogflowCxV3beta1Webhook'
    { _gcdcvwGenericWebService :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookGenericWebService)
    , _gcdcvwDisabled          :: !(Maybe Bool)
    , _gcdcvwName              :: !(Maybe Text)
    , _gcdcvwDisplayName       :: !(Maybe Text)
    , _gcdcvwTimeout           :: !(Maybe GDuration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Webhook' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwGenericWebService'
--
-- * 'gcdcvwDisabled'
--
-- * 'gcdcvwName'
--
-- * 'gcdcvwDisplayName'
--
-- * 'gcdcvwTimeout'
googleCloudDialogflowCxV3beta1Webhook
    :: GoogleCloudDialogflowCxV3beta1Webhook
googleCloudDialogflowCxV3beta1Webhook =
  GoogleCloudDialogflowCxV3beta1Webhook'
    { _gcdcvwGenericWebService = Nothing
    , _gcdcvwDisabled = Nothing
    , _gcdcvwName = Nothing
    , _gcdcvwDisplayName = Nothing
    , _gcdcvwTimeout = Nothing
    }


-- | Configuration for a generic web service.
gcdcvwGenericWebService :: Lens' GoogleCloudDialogflowCxV3beta1Webhook (Maybe GoogleCloudDialogflowCxV3beta1WebhookGenericWebService)
gcdcvwGenericWebService
  = lens _gcdcvwGenericWebService
      (\ s a -> s{_gcdcvwGenericWebService = a})

-- | Indicates whether the webhook is disabled.
gcdcvwDisabled :: Lens' GoogleCloudDialogflowCxV3beta1Webhook (Maybe Bool)
gcdcvwDisabled
  = lens _gcdcvwDisabled
      (\ s a -> s{_gcdcvwDisabled = a})

-- | The unique identifier of the webhook. Required for the
-- Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name
-- automatically. Format:
-- \`projects\/\/locations\/\/agents\/\/webhooks\/\`.
gcdcvwName :: Lens' GoogleCloudDialogflowCxV3beta1Webhook (Maybe Text)
gcdcvwName
  = lens _gcdcvwName (\ s a -> s{_gcdcvwName = a})

-- | Required. The human-readable name of the webhook, unique within the
-- agent.
gcdcvwDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1Webhook (Maybe Text)
gcdcvwDisplayName
  = lens _gcdcvwDisplayName
      (\ s a -> s{_gcdcvwDisplayName = a})

-- | Webhook execution timeout. Execution is considered failed if Dialogflow
-- doesn\'t receive a response from webhook at the end of the timeout
-- period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
gcdcvwTimeout :: Lens' GoogleCloudDialogflowCxV3beta1Webhook (Maybe Scientific)
gcdcvwTimeout
  = lens _gcdcvwTimeout
      (\ s a -> s{_gcdcvwTimeout = a})
      . mapping _GDuration

instance FromJSON
           GoogleCloudDialogflowCxV3beta1Webhook
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Webhook"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Webhook' <$>
                   (o .:? "genericWebService") <*> (o .:? "disabled")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "timeout"))

instance ToJSON GoogleCloudDialogflowCxV3beta1Webhook
         where
        toJSON GoogleCloudDialogflowCxV3beta1Webhook'{..}
          = object
              (catMaybes
                 [("genericWebService" .=) <$>
                    _gcdcvwGenericWebService,
                  ("disabled" .=) <$> _gcdcvwDisabled,
                  ("name" .=) <$> _gcdcvwName,
                  ("displayName" .=) <$> _gcdcvwDisplayName,
                  ("timeout" .=) <$> _gcdcvwTimeout])

-- | Represents one match result of MatchIntent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Match' smart constructor.
data GoogleCloudDialogflowCxV3beta1Match =
  GoogleCloudDialogflowCxV3beta1Match'
    { _gcdcvmMatchType     :: !(Maybe GoogleCloudDialogflowCxV3beta1MatchMatchType)
    , _gcdcvmResolvedInput :: !(Maybe Text)
    , _gcdcvmConfidence    :: !(Maybe (Textual Double))
    , _gcdcvmIntent        :: !(Maybe GoogleCloudDialogflowCxV3beta1Intent)
    , _gcdcvmParameters    :: !(Maybe GoogleCloudDialogflowCxV3beta1MatchParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Match' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvmMatchType'
--
-- * 'gcdcvmResolvedInput'
--
-- * 'gcdcvmConfidence'
--
-- * 'gcdcvmIntent'
--
-- * 'gcdcvmParameters'
googleCloudDialogflowCxV3beta1Match
    :: GoogleCloudDialogflowCxV3beta1Match
googleCloudDialogflowCxV3beta1Match =
  GoogleCloudDialogflowCxV3beta1Match'
    { _gcdcvmMatchType = Nothing
    , _gcdcvmResolvedInput = Nothing
    , _gcdcvmConfidence = Nothing
    , _gcdcvmIntent = Nothing
    , _gcdcvmParameters = Nothing
    }


-- | Type of this Match.
gcdcvmMatchType :: Lens' GoogleCloudDialogflowCxV3beta1Match (Maybe GoogleCloudDialogflowCxV3beta1MatchMatchType)
gcdcvmMatchType
  = lens _gcdcvmMatchType
      (\ s a -> s{_gcdcvmMatchType = a})

-- | Final text input which was matched during MatchIntent. This value can be
-- different from original input sent in request because of spelling
-- correction or other processing.
gcdcvmResolvedInput :: Lens' GoogleCloudDialogflowCxV3beta1Match (Maybe Text)
gcdcvmResolvedInput
  = lens _gcdcvmResolvedInput
      (\ s a -> s{_gcdcvmResolvedInput = a})

-- | The confidence of this match. Values range from 0.0 (completely
-- uncertain) to 1.0 (completely certain). This value is for informational
-- purpose only and is only used to help match the best intent within the
-- classification threshold. This value may change for the same end-user
-- expression at any time due to a model retraining or change in
-- implementation.
gcdcvmConfidence :: Lens' GoogleCloudDialogflowCxV3beta1Match (Maybe Double)
gcdcvmConfidence
  = lens _gcdcvmConfidence
      (\ s a -> s{_gcdcvmConfidence = a})
      . mapping _Coerce

-- | The Intent that matched the query. Some, not all fields are filled in
-- this message, including but not limited to: \`name\` and
-- \`display_name\`. Only filled for \`INTENT\` match type.
gcdcvmIntent :: Lens' GoogleCloudDialogflowCxV3beta1Match (Maybe GoogleCloudDialogflowCxV3beta1Intent)
gcdcvmIntent
  = lens _gcdcvmIntent (\ s a -> s{_gcdcvmIntent = a})

-- | The collection of parameters extracted from the query. Depending on your
-- protocol or client library language, this is a map, associative array,
-- symbol table, dictionary, or JSON object composed of a collection of
-- (MapKey, MapValue) pairs: - MapKey type: string - MapKey value:
-- parameter name - MapValue type: - If parameter\'s entity type is a
-- composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
gcdcvmParameters :: Lens' GoogleCloudDialogflowCxV3beta1Match (Maybe GoogleCloudDialogflowCxV3beta1MatchParameters)
gcdcvmParameters
  = lens _gcdcvmParameters
      (\ s a -> s{_gcdcvmParameters = a})

instance FromJSON GoogleCloudDialogflowCxV3beta1Match
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Match"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Match' <$>
                   (o .:? "matchType") <*> (o .:? "resolvedInput") <*>
                     (o .:? "confidence")
                     <*> (o .:? "intent")
                     <*> (o .:? "parameters"))

instance ToJSON GoogleCloudDialogflowCxV3beta1Match
         where
        toJSON GoogleCloudDialogflowCxV3beta1Match'{..}
          = object
              (catMaybes
                 [("matchType" .=) <$> _gcdcvmMatchType,
                  ("resolvedInput" .=) <$> _gcdcvmResolvedInput,
                  ("confidence" .=) <$> _gcdcvmConfidence,
                  ("intent" .=) <$> _gcdcvmIntent,
                  ("parameters" .=) <$> _gcdcvmParameters])

-- | Represents an audio message that is composed of both segments
-- synthesized from the Dialogflow agent prompts and ones hosted externally
-- at the specified URIs. The external URIs are specified via play_audio.
-- This message is generated by Dialogflow only and not supposed to be
-- defined by the user.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageMixedAudio' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio =
  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio'
    { _gcdcvrmmaSegments :: Maybe [GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmmaSegments'
googleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
    :: GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
googleCloudDialogflowCxV3beta1ResponseMessageMixedAudio =
  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio'
    {_gcdcvrmmaSegments = Nothing}


-- | Segments this audio response is composed of.
gcdcvrmmaSegments :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio [GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment]
gcdcvrmmaSegments
  = lens _gcdcvrmmaSegments
      (\ s a -> s{_gcdcvrmmaSegments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio'
                   <$> (o .:? "segments" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio'{..}
          = object
              (catMaybes [("segments" .=) <$> _gcdcvrmmaSegments])

-- | Represents an annotated conversation dataset. ConversationDataset can
-- have multiple AnnotatedConversationDataset, each of them represents one
-- result from one annotation task. AnnotatedConversationDataset can only
-- be generated from annotation task, which will be triggered by
-- LabelConversation.
--
-- /See:/ 'googleCloudDialogflowV2beta1AnnotatedConversationDataSet' smart constructor.
data GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet =
  GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet'
    { _gcdvacdsExampleCount          :: !(Maybe (Textual Int64))
    , _gcdvacdsCompletedExampleCount :: !(Maybe (Textual Int64))
    , _gcdvacdsQuestionTypeName      :: !(Maybe Text)
    , _gcdvacdsName                  :: !(Maybe Text)
    , _gcdvacdsDisplayName           :: !(Maybe Text)
    , _gcdvacdsDescription           :: !(Maybe Text)
    , _gcdvacdsCreateTime            :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvacdsExampleCount'
--
-- * 'gcdvacdsCompletedExampleCount'
--
-- * 'gcdvacdsQuestionTypeName'
--
-- * 'gcdvacdsName'
--
-- * 'gcdvacdsDisplayName'
--
-- * 'gcdvacdsDescription'
--
-- * 'gcdvacdsCreateTime'
googleCloudDialogflowV2beta1AnnotatedConversationDataSet
    :: GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet
googleCloudDialogflowV2beta1AnnotatedConversationDataSet =
  GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet'
    { _gcdvacdsExampleCount = Nothing
    , _gcdvacdsCompletedExampleCount = Nothing
    , _gcdvacdsQuestionTypeName = Nothing
    , _gcdvacdsName = Nothing
    , _gcdvacdsDisplayName = Nothing
    , _gcdvacdsDescription = Nothing
    , _gcdvacdsCreateTime = Nothing
    }


-- | Output only. Number of examples in the annotated conversation dataset.
gcdvacdsExampleCount :: Lens' GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet (Maybe Int64)
gcdvacdsExampleCount
  = lens _gcdvacdsExampleCount
      (\ s a -> s{_gcdvacdsExampleCount = a})
      . mapping _Coerce

-- | Output only. Number of examples that have annotations in the annotated
-- conversation dataset.
gcdvacdsCompletedExampleCount :: Lens' GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet (Maybe Int64)
gcdvacdsCompletedExampleCount
  = lens _gcdvacdsCompletedExampleCount
      (\ s a -> s{_gcdvacdsCompletedExampleCount = a})
      . mapping _Coerce

-- | Output only. Question type name that identifies a labeling task. A
-- question is a single task that a worker answers. A question type is set
-- of related questions. Each question belongs to a particular question
-- type. It can be used in CrowdCompute UI to filter and manage labeling
-- tasks.
gcdvacdsQuestionTypeName :: Lens' GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet (Maybe Text)
gcdvacdsQuestionTypeName
  = lens _gcdvacdsQuestionTypeName
      (\ s a -> s{_gcdvacdsQuestionTypeName = a})

-- | Output only. AnnotatedConversationDataset resource name. Format:
-- \`projects\/\/conversationDatasets\/\/annotatedConversationDatasets\/\`
gcdvacdsName :: Lens' GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet (Maybe Text)
gcdvacdsName
  = lens _gcdvacdsName (\ s a -> s{_gcdvacdsName = a})

-- | Required. The display name of the annotated conversation dataset. It\'s
-- specified when user starts an annotation task. Maximum of 64 bytes.
gcdvacdsDisplayName :: Lens' GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet (Maybe Text)
gcdvacdsDisplayName
  = lens _gcdvacdsDisplayName
      (\ s a -> s{_gcdvacdsDisplayName = a})

-- | Optional. The description of the annotated conversation dataset. Maximum
-- of 10000 bytes.
gcdvacdsDescription :: Lens' GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet (Maybe Text)
gcdvacdsDescription
  = lens _gcdvacdsDescription
      (\ s a -> s{_gcdvacdsDescription = a})

-- | Output only. Creation time of this annotated conversation dataset.
gcdvacdsCreateTime :: Lens' GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet (Maybe UTCTime)
gcdvacdsCreateTime
  = lens _gcdvacdsCreateTime
      (\ s a -> s{_gcdvacdsCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet"
              (\ o ->
                 GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet'
                   <$>
                   (o .:? "exampleCount") <*>
                     (o .:? "completedExampleCount")
                     <*> (o .:? "questionTypeName")
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON
           GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet
         where
        toJSON
          GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet'{..}
          = object
              (catMaybes
                 [("exampleCount" .=) <$> _gcdvacdsExampleCount,
                  ("completedExampleCount" .=) <$>
                    _gcdvacdsCompletedExampleCount,
                  ("questionTypeName" .=) <$>
                    _gcdvacdsQuestionTypeName,
                  ("name" .=) <$> _gcdvacdsName,
                  ("displayName" .=) <$> _gcdvacdsDisplayName,
                  ("description" .=) <$> _gcdvacdsDescription,
                  ("createTime" .=) <$> _gcdvacdsCreateTime])

-- | Entities are extracted from user input and represent parameters that are
-- meaningful to your application. For example, a date range, a proper name
-- such as a geographic location or landmark, and so on. Entities represent
-- actionable data for your application. When you define an entity, you can
-- also include synonyms that all map to that entity. For example, \"soft
-- drink\", \"soda\", \"pop\", and so on. There are three types of
-- entities: * **System** - entities that are defined by the Dialogflow API
-- for common data types such as date, time, currency, and so on. A system
-- entity is represented by the \`EntityType\` type. * **Custom** -
-- entities that are defined by you that represent actionable data that is
-- meaningful to your application. For example, you could define a
-- \`pizza.sauce\` entity for red or white pizza sauce, a \`pizza.cheese\`
-- entity for the different types of cheese on a pizza, a \`pizza.topping\`
-- entity for different toppings, and so on. A custom entity is represented
-- by the \`EntityType\` type. * **User** - entities that are built for an
-- individual user such as favorites, preferences, playlists, and so on. A
-- user entity is represented by the SessionEntityType type. For more
-- information about entity types, see the [Dialogflow
-- documentation](https:\/\/cloud.google.com\/dialogflow\/docs\/entities-overview).
--
-- /See:/ 'googleCloudDialogflowCxV3beta1EntityType' smart constructor.
data GoogleCloudDialogflowCxV3beta1EntityType =
  GoogleCloudDialogflowCxV3beta1EntityType'
    { _gcdcvetExcludedPhrases       :: !(Maybe [GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase])
    , _gcdcvetEntities              :: !(Maybe [GoogleCloudDialogflowCxV3beta1EntityTypeEntity])
    , _gcdcvetKind                  :: !(Maybe GoogleCloudDialogflowCxV3beta1EntityTypeKind)
    , _gcdcvetName                  :: !(Maybe Text)
    , _gcdcvetAutoExpansionMode     :: !(Maybe GoogleCloudDialogflowCxV3beta1EntityTypeAutoExpansionMode)
    , _gcdcvetDisplayName           :: !(Maybe Text)
    , _gcdcvetEnableFuzzyExtraction :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1EntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvetExcludedPhrases'
--
-- * 'gcdcvetEntities'
--
-- * 'gcdcvetKind'
--
-- * 'gcdcvetName'
--
-- * 'gcdcvetAutoExpansionMode'
--
-- * 'gcdcvetDisplayName'
--
-- * 'gcdcvetEnableFuzzyExtraction'
googleCloudDialogflowCxV3beta1EntityType
    :: GoogleCloudDialogflowCxV3beta1EntityType
googleCloudDialogflowCxV3beta1EntityType =
  GoogleCloudDialogflowCxV3beta1EntityType'
    { _gcdcvetExcludedPhrases = Nothing
    , _gcdcvetEntities = Nothing
    , _gcdcvetKind = Nothing
    , _gcdcvetName = Nothing
    , _gcdcvetAutoExpansionMode = Nothing
    , _gcdcvetDisplayName = Nothing
    , _gcdcvetEnableFuzzyExtraction = Nothing
    }


-- | Collection of exceptional words and phrases that shouldn\'t be matched.
-- For example, if you have a size entity type with entry \`giant\`(an
-- adjective), you might consider adding \`giants\`(a noun) as an
-- exclusion. If the kind of entity type is \`KIND_MAP\`, then the phrases
-- specified by entities and excluded phrases should be mutually exclusive.
gcdcvetExcludedPhrases :: Lens' GoogleCloudDialogflowCxV3beta1EntityType [GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase]
gcdcvetExcludedPhrases
  = lens _gcdcvetExcludedPhrases
      (\ s a -> s{_gcdcvetExcludedPhrases = a})
      . _Default
      . _Coerce

-- | The collection of entity entries associated with the entity type.
gcdcvetEntities :: Lens' GoogleCloudDialogflowCxV3beta1EntityType [GoogleCloudDialogflowCxV3beta1EntityTypeEntity]
gcdcvetEntities
  = lens _gcdcvetEntities
      (\ s a -> s{_gcdcvetEntities = a})
      . _Default
      . _Coerce

-- | Required. Indicates the kind of entity type.
gcdcvetKind :: Lens' GoogleCloudDialogflowCxV3beta1EntityType (Maybe GoogleCloudDialogflowCxV3beta1EntityTypeKind)
gcdcvetKind
  = lens _gcdcvetKind (\ s a -> s{_gcdcvetKind = a})

-- | The unique identifier of the entity type. Required for
-- EntityTypes.UpdateEntityType. Format:
-- \`projects\/\/locations\/\/agents\/\/entityTypes\/\`.
gcdcvetName :: Lens' GoogleCloudDialogflowCxV3beta1EntityType (Maybe Text)
gcdcvetName
  = lens _gcdcvetName (\ s a -> s{_gcdcvetName = a})

-- | Indicates whether the entity type can be automatically expanded.
gcdcvetAutoExpansionMode :: Lens' GoogleCloudDialogflowCxV3beta1EntityType (Maybe GoogleCloudDialogflowCxV3beta1EntityTypeAutoExpansionMode)
gcdcvetAutoExpansionMode
  = lens _gcdcvetAutoExpansionMode
      (\ s a -> s{_gcdcvetAutoExpansionMode = a})

-- | Required. The human-readable name of the entity type, unique within the
-- agent.
gcdcvetDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1EntityType (Maybe Text)
gcdcvetDisplayName
  = lens _gcdcvetDisplayName
      (\ s a -> s{_gcdcvetDisplayName = a})

-- | Enables fuzzy entity extraction during classification.
gcdcvetEnableFuzzyExtraction :: Lens' GoogleCloudDialogflowCxV3beta1EntityType (Maybe Bool)
gcdcvetEnableFuzzyExtraction
  = lens _gcdcvetEnableFuzzyExtraction
      (\ s a -> s{_gcdcvetEnableFuzzyExtraction = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1EntityType
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1EntityType"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1EntityType' <$>
                   (o .:? "excludedPhrases" .!= mempty) <*>
                     (o .:? "entities" .!= mempty)
                     <*> (o .:? "kind")
                     <*> (o .:? "name")
                     <*> (o .:? "autoExpansionMode")
                     <*> (o .:? "displayName")
                     <*> (o .:? "enableFuzzyExtraction"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1EntityType
         where
        toJSON GoogleCloudDialogflowCxV3beta1EntityType'{..}
          = object
              (catMaybes
                 [("excludedPhrases" .=) <$> _gcdcvetExcludedPhrases,
                  ("entities" .=) <$> _gcdcvetEntities,
                  ("kind" .=) <$> _gcdcvetKind,
                  ("name" .=) <$> _gcdcvetName,
                  ("autoExpansionMode" .=) <$>
                    _gcdcvetAutoExpansionMode,
                  ("displayName" .=) <$> _gcdcvetDisplayName,
                  ("enableFuzzyExtraction" .=) <$>
                    _gcdcvetEnableFuzzyExtraction])

-- | An answer from Knowledge Connector.
--
-- /See:/ 'googleCloudDialogflowV2beta1KnowledgeAnswersAnswer' smart constructor.
data GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer =
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'
    { _gcdvkaaMatchConfidence      :: !(Maybe (Textual Double))
    , _gcdvkaaAnswer               :: !(Maybe Text)
    , _gcdvkaaSource               :: !(Maybe Text)
    , _gcdvkaaFaqQuestion          :: !(Maybe Text)
    , _gcdvkaaMatchConfidenceLevel :: !(Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvkaaMatchConfidence'
--
-- * 'gcdvkaaAnswer'
--
-- * 'gcdvkaaSource'
--
-- * 'gcdvkaaFaqQuestion'
--
-- * 'gcdvkaaMatchConfidenceLevel'
googleCloudDialogflowV2beta1KnowledgeAnswersAnswer
    :: GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
googleCloudDialogflowV2beta1KnowledgeAnswersAnswer =
  GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'
    { _gcdvkaaMatchConfidence = Nothing
    , _gcdvkaaAnswer = Nothing
    , _gcdvkaaSource = Nothing
    , _gcdvkaaFaqQuestion = Nothing
    , _gcdvkaaMatchConfidenceLevel = Nothing
    }


-- | The system\'s confidence score that this Knowledge answer is a good
-- match for this conversational query. The range is from 0.0 (completely
-- uncertain) to 1.0 (completely certain). Note: The confidence score is
-- likely to vary somewhat (possibly even for identical requests), as the
-- underlying model is under constant improvement. It may be deprecated in
-- the future. We recommend using \`match_confidence_level\` which should
-- be generally more stable.
gcdvkaaMatchConfidence :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Double)
gcdvkaaMatchConfidence
  = lens _gcdvkaaMatchConfidence
      (\ s a -> s{_gcdvkaaMatchConfidence = a})
      . mapping _Coerce

-- | The piece of text from the \`source\` knowledge base document that
-- answers this conversational query.
gcdvkaaAnswer :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Text)
gcdvkaaAnswer
  = lens _gcdvkaaAnswer
      (\ s a -> s{_gcdvkaaAnswer = a})

-- | Indicates which Knowledge Document this answer was extracted from.
-- Format: \`projects\/\/knowledgeBases\/\/documents\/\`.
gcdvkaaSource :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Text)
gcdvkaaSource
  = lens _gcdvkaaSource
      (\ s a -> s{_gcdvkaaSource = a})

-- | The corresponding FAQ question if the answer was extracted from a FAQ
-- Document, empty otherwise.
gcdvkaaFaqQuestion :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe Text)
gcdvkaaFaqQuestion
  = lens _gcdvkaaFaqQuestion
      (\ s a -> s{_gcdvkaaFaqQuestion = a})

-- | The system\'s confidence level that this knowledge answer is a good
-- match for this conversational query. NOTE: The confidence level for a
-- given \`\` pair may change without notice, as it depends on models that
-- are constantly being improved. However, it will change less frequently
-- than the confidence score below, and should be preferred for referencing
-- the quality of an answer.
gcdvkaaMatchConfidenceLevel :: Lens' GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer (Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswerMatchConfidenceLevel)
gcdvkaaMatchConfidenceLevel
  = lens _gcdvkaaMatchConfidenceLevel
      (\ s a -> s{_gcdvkaaMatchConfidenceLevel = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer"
              (\ o ->
                 GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'
                   <$>
                   (o .:? "matchConfidence") <*> (o .:? "answer") <*>
                     (o .:? "source")
                     <*> (o .:? "faqQuestion")
                     <*> (o .:? "matchConfidenceLevel"))

instance ToJSON
           GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
         where
        toJSON
          GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer'{..}
          = object
              (catMaybes
                 [("matchConfidence" .=) <$> _gcdvkaaMatchConfidence,
                  ("answer" .=) <$> _gcdvkaaAnswer,
                  ("source" .=) <$> _gcdvkaaSource,
                  ("faqQuestion" .=) <$> _gcdvkaaFaqQuestion,
                  ("matchConfidenceLevel" .=) <$>
                    _gcdvkaaMatchConfidenceLevel])

-- | Events allow for matching intents by event name instead of the natural
-- language input. For instance, input \`\` can trigger a personalized
-- welcome response. The parameter \`name\` may be used by the agent in the
-- response: \`\"Hello #welcome_event.name! What can I do for you
-- today?\"\`.
--
-- /See:/ 'googleCloudDialogflowV2beta1EventInput' smart constructor.
data GoogleCloudDialogflowV2beta1EventInput =
  GoogleCloudDialogflowV2beta1EventInput'
    { _gooLanguageCode :: !(Maybe Text)
    , _gooName         :: !(Maybe Text)
    , _gooParameters   :: !(Maybe GoogleCloudDialogflowV2beta1EventInputParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1EventInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooLanguageCode'
--
-- * 'gooName'
--
-- * 'gooParameters'
googleCloudDialogflowV2beta1EventInput
    :: GoogleCloudDialogflowV2beta1EventInput
googleCloudDialogflowV2beta1EventInput =
  GoogleCloudDialogflowV2beta1EventInput'
    {_gooLanguageCode = Nothing, _gooName = Nothing, _gooParameters = Nothing}


-- | Required. The language of this query. See [Language
-- Support](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/language)
-- for a list of the currently supported language codes. Note that queries
-- in the same session do not necessarily need to specify the same
-- language.
gooLanguageCode :: Lens' GoogleCloudDialogflowV2beta1EventInput (Maybe Text)
gooLanguageCode
  = lens _gooLanguageCode
      (\ s a -> s{_gooLanguageCode = a})

-- | Required. The unique identifier of the event.
gooName :: Lens' GoogleCloudDialogflowV2beta1EventInput (Maybe Text)
gooName = lens _gooName (\ s a -> s{_gooName = a})

-- | The collection of parameters associated with the event. Depending on
-- your protocol or client library language, this is a map, associative
-- array, symbol table, dictionary, or JSON object composed of a collection
-- of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value:
-- parameter name - MapValue type: - If parameter\'s entity type is a
-- composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
gooParameters :: Lens' GoogleCloudDialogflowV2beta1EventInput (Maybe GoogleCloudDialogflowV2beta1EventInputParameters)
gooParameters
  = lens _gooParameters
      (\ s a -> s{_gooParameters = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1EventInput
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1EventInput"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EventInput' <$>
                   (o .:? "languageCode") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON
           GoogleCloudDialogflowV2beta1EventInput
         where
        toJSON GoogleCloudDialogflowV2beta1EventInput'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gooLanguageCode,
                  ("name" .=) <$> _gooName,
                  ("parameters" .=) <$> _gooParameters])

-- | The message returned from the DetectIntent method.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1DetectIntentResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1DetectIntentResponse =
  GoogleCloudDialogflowCxV3beta1DetectIntentResponse'
    { _gooOutputAudioConfig :: !(Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
    , _gooResponseId        :: !(Maybe Text)
    , _gooOutputAudio       :: !(Maybe Bytes)
    , _gooQueryResult       :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1DetectIntentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooOutputAudioConfig'
--
-- * 'gooResponseId'
--
-- * 'gooOutputAudio'
--
-- * 'gooQueryResult'
googleCloudDialogflowCxV3beta1DetectIntentResponse
    :: GoogleCloudDialogflowCxV3beta1DetectIntentResponse
googleCloudDialogflowCxV3beta1DetectIntentResponse =
  GoogleCloudDialogflowCxV3beta1DetectIntentResponse'
    { _gooOutputAudioConfig = Nothing
    , _gooResponseId = Nothing
    , _gooOutputAudio = Nothing
    , _gooQueryResult = Nothing
    }


-- | The config used by the speech synthesizer to generate the output audio.
gooOutputAudioConfig :: Lens' GoogleCloudDialogflowCxV3beta1DetectIntentResponse (Maybe GoogleCloudDialogflowCxV3beta1OutputAudioConfig)
gooOutputAudioConfig
  = lens _gooOutputAudioConfig
      (\ s a -> s{_gooOutputAudioConfig = a})

-- | Output only. The unique identifier of the response. It can be used to
-- locate a response in the training example set or for reporting issues.
gooResponseId :: Lens' GoogleCloudDialogflowCxV3beta1DetectIntentResponse (Maybe Text)
gooResponseId
  = lens _gooResponseId
      (\ s a -> s{_gooResponseId = a})

-- | The audio data bytes encoded as specified in the request. Note: The
-- output audio is generated based on the values of default platform text
-- responses found in the \`query_result.response_messages\` field. If
-- multiple default text responses exist, they will be concatenated when
-- generating audio. If no default platform text responses exist, the
-- generated audio content will be empty. In some scenarios, multiple
-- output audio fields may be present in the response structure. In these
-- cases, only the top-most-level audio output has content.
gooOutputAudio :: Lens' GoogleCloudDialogflowCxV3beta1DetectIntentResponse (Maybe ByteString)
gooOutputAudio
  = lens _gooOutputAudio
      (\ s a -> s{_gooOutputAudio = a})
      . mapping _Bytes

-- | The result of the conversational query.
gooQueryResult :: Lens' GoogleCloudDialogflowCxV3beta1DetectIntentResponse (Maybe GoogleCloudDialogflowCxV3beta1QueryResult)
gooQueryResult
  = lens _gooQueryResult
      (\ s a -> s{_gooQueryResult = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1DetectIntentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1DetectIntentResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1DetectIntentResponse'
                   <$>
                   (o .:? "outputAudioConfig") <*> (o .:? "responseId")
                     <*> (o .:? "outputAudio")
                     <*> (o .:? "queryResult"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1DetectIntentResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1DetectIntentResponse'{..}
          = object
              (catMaybes
                 [("outputAudioConfig" .=) <$> _gooOutputAudioConfig,
                  ("responseId" .=) <$> _gooResponseId,
                  ("outputAudio" .=) <$> _gooOutputAudio,
                  ("queryResult" .=) <$> _gooQueryResult])

-- | A custom platform-specific response.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessagePayload' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessagePayload =
  GoogleCloudDialogflowV2IntentMessagePayload'
    { _gooAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessagePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAddtional'
googleCloudDialogflowV2IntentMessagePayload
    :: HashMap Text JSONValue -- ^ 'gooAddtional'
    -> GoogleCloudDialogflowV2IntentMessagePayload
googleCloudDialogflowV2IntentMessagePayload pGooAddtional_ =
  GoogleCloudDialogflowV2IntentMessagePayload'
    {_gooAddtional = _Coerce # pGooAddtional_}


-- | Properties of the object.
gooAddtional :: Lens' GoogleCloudDialogflowV2IntentMessagePayload (HashMap Text JSONValue)
gooAddtional
  = lens _gooAddtional (\ s a -> s{_gooAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessagePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessagePayload"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessagePayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessagePayload
         where
        toJSON = toJSON . _gooAddtional

-- | Metadata in google::longrunning::Operation for Knowledge operations.
--
-- /See:/ 'googleCloudDialogflowV2beta1KnowledgeOperationMetadata' smart constructor.
newtype GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata =
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'
    { _gcdvkomState :: Maybe GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvkomState'
googleCloudDialogflowV2beta1KnowledgeOperationMetadata
    :: GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
googleCloudDialogflowV2beta1KnowledgeOperationMetadata =
  GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'
    {_gcdvkomState = Nothing}


-- | Required. Output only. The current state of this operation.
gcdvkomState :: Lens' GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata (Maybe GoogleCloudDialogflowV2beta1KnowledgeOperationMetadataState)
gcdvkomState
  = lens _gcdvkomState (\ s a -> s{_gcdvkomState = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata"
              (\ o ->
                 GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'
                   <$> (o .:? "state"))

instance ToJSON
           GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
         where
        toJSON
          GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata'{..}
          = object (catMaybes [("state" .=) <$> _gcdvkomState])

-- | The request message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowV2beta1WebhookRequest' smart constructor.
data GoogleCloudDialogflowV2beta1WebhookRequest =
  GoogleCloudDialogflowV2beta1WebhookRequest'
    { _gcdvwrcOriginalDetectIntentRequest :: !(Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest)
    , _gcdvwrcResponseId                  :: !(Maybe Text)
    , _gcdvwrcAlternativeQueryResults     :: !(Maybe [GoogleCloudDialogflowV2beta1QueryResult])
    , _gcdvwrcQueryResult                 :: !(Maybe GoogleCloudDialogflowV2beta1QueryResult)
    , _gcdvwrcSession                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1WebhookRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrcOriginalDetectIntentRequest'
--
-- * 'gcdvwrcResponseId'
--
-- * 'gcdvwrcAlternativeQueryResults'
--
-- * 'gcdvwrcQueryResult'
--
-- * 'gcdvwrcSession'
googleCloudDialogflowV2beta1WebhookRequest
    :: GoogleCloudDialogflowV2beta1WebhookRequest
googleCloudDialogflowV2beta1WebhookRequest =
  GoogleCloudDialogflowV2beta1WebhookRequest'
    { _gcdvwrcOriginalDetectIntentRequest = Nothing
    , _gcdvwrcResponseId = Nothing
    , _gcdvwrcAlternativeQueryResults = Nothing
    , _gcdvwrcQueryResult = Nothing
    , _gcdvwrcSession = Nothing
    }


-- | Optional. The contents of the original request that was passed to
-- \`[Streaming]DetectIntent\` call.
gcdvwrcOriginalDetectIntentRequest :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest)
gcdvwrcOriginalDetectIntentRequest
  = lens _gcdvwrcOriginalDetectIntentRequest
      (\ s a -> s{_gcdvwrcOriginalDetectIntentRequest = a})

-- | The unique identifier of the response. Contains the same value as
-- \`[Streaming]DetectIntentResponse.response_id\`.
gcdvwrcResponseId :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe Text)
gcdvwrcResponseId
  = lens _gcdvwrcResponseId
      (\ s a -> s{_gcdvwrcResponseId = a})

-- | Alternative query results from KnowledgeService.
gcdvwrcAlternativeQueryResults :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest [GoogleCloudDialogflowV2beta1QueryResult]
gcdvwrcAlternativeQueryResults
  = lens _gcdvwrcAlternativeQueryResults
      (\ s a -> s{_gcdvwrcAlternativeQueryResults = a})
      . _Default
      . _Coerce

-- | The result of the conversational query or event processing. Contains the
-- same value as \`[Streaming]DetectIntentResponse.query_result\`.
gcdvwrcQueryResult :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe GoogleCloudDialogflowV2beta1QueryResult)
gcdvwrcQueryResult
  = lens _gcdvwrcQueryResult
      (\ s a -> s{_gcdvwrcQueryResult = a})

-- | The unique identifier of detectIntent request session. Can be used to
-- identify end-user inside webhook implementation. Supported formats: -
-- \`projects\/\/agent\/sessions\/, -
-- \`projects\/\/locations\/\/agent\/sessions\/\`, -
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\`, -
-- \`projects\/\/locations\/\/agent\/environments\/\/users\/\/sessions\/\`,
gcdvwrcSession :: Lens' GoogleCloudDialogflowV2beta1WebhookRequest (Maybe Text)
gcdvwrcSession
  = lens _gcdvwrcSession
      (\ s a -> s{_gcdvwrcSession = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1WebhookRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1WebhookRequest"
              (\ o ->
                 GoogleCloudDialogflowV2beta1WebhookRequest' <$>
                   (o .:? "originalDetectIntentRequest") <*>
                     (o .:? "responseId")
                     <*> (o .:? "alternativeQueryResults" .!= mempty)
                     <*> (o .:? "queryResult")
                     <*> (o .:? "session"))

instance ToJSON
           GoogleCloudDialogflowV2beta1WebhookRequest
         where
        toJSON
          GoogleCloudDialogflowV2beta1WebhookRequest'{..}
          = object
              (catMaybes
                 [("originalDetectIntentRequest" .=) <$>
                    _gcdvwrcOriginalDetectIntentRequest,
                  ("responseId" .=) <$> _gcdvwrcResponseId,
                  ("alternativeQueryResults" .=) <$>
                    _gcdvwrcAlternativeQueryResults,
                  ("queryResult" .=) <$> _gcdvwrcQueryResult,
                  ("session" .=) <$> _gcdvwrcSession])

-- | Represents intent information communicated to the webhook.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookRequestIntentInfo' smart constructor.
data GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo =
  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo'
    { _gcdcvwriiLastMatchedIntent :: !(Maybe Text)
    , _gcdcvwriiParameters        :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwriiLastMatchedIntent'
--
-- * 'gcdcvwriiParameters'
googleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
    :: GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
googleCloudDialogflowCxV3beta1WebhookRequestIntentInfo =
  GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo'
    {_gcdcvwriiLastMatchedIntent = Nothing, _gcdcvwriiParameters = Nothing}


-- | Always present. The unique identifier of the last matched intent.
-- Format: \`projects\/\/locations\/\/agents\/\/intents\/\`.
gcdcvwriiLastMatchedIntent :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo (Maybe Text)
gcdcvwriiLastMatchedIntent
  = lens _gcdcvwriiLastMatchedIntent
      (\ s a -> s{_gcdcvwriiLastMatchedIntent = a})

-- | Parameters identified as a result of intent matching. This is a map of
-- the name of the identified parameter to the value of the parameter
-- identified from the user\'s utterance. All parameters defined in the
-- matched intent that are identified will be surfaced here.
gcdcvwriiParameters :: Lens' GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo (Maybe GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoParameters)
gcdcvwriiParameters
  = lens _gcdcvwriiParameters
      (\ s a -> s{_gcdcvwriiParameters = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo'
                   <$>
                   (o .:? "lastMatchedIntent") <*> (o .:? "parameters"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo'{..}
          = object
              (catMaybes
                 [("lastMatchedIntent" .=) <$>
                    _gcdcvwriiLastMatchedIntent,
                  ("parameters" .=) <$> _gcdcvwriiParameters])

-- | The text response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageText' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageText =
  GoogleCloudDialogflowV2beta1IntentMessageText'
    { _gooText :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooText'
googleCloudDialogflowV2beta1IntentMessageText
    :: GoogleCloudDialogflowV2beta1IntentMessageText
googleCloudDialogflowV2beta1IntentMessageText =
  GoogleCloudDialogflowV2beta1IntentMessageText' {_gooText = Nothing}


-- | Optional. The collection of the agent\'s responses.
gooText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageText [Text]
gooText
  = lens _gooText (\ s a -> s{_gooText = a}) . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageText
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageText"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageText' <$>
                   (o .:? "text" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageText
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageText'{..}
          = object (catMaybes [("text" .=) <$> _gooText])

-- | The collection of simple response candidates. This message in
-- \`QueryResult.fulfillment_messages\` and
-- \`WebhookResponse.fulfillment_messages\` should contain only one
-- \`SimpleResponse\`.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSimpleResponses' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2IntentMessageSimpleResponses'
    { _gSimpleResponses :: Maybe [GoogleCloudDialogflowV2IntentMessageSimpleResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSimpleResponses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gSimpleResponses'
googleCloudDialogflowV2IntentMessageSimpleResponses
    :: GoogleCloudDialogflowV2IntentMessageSimpleResponses
googleCloudDialogflowV2IntentMessageSimpleResponses =
  GoogleCloudDialogflowV2IntentMessageSimpleResponses'
    {_gSimpleResponses = Nothing}


-- | Required. The list of simple responses.
gSimpleResponses :: Lens' GoogleCloudDialogflowV2IntentMessageSimpleResponses [GoogleCloudDialogflowV2IntentMessageSimpleResponse]
gSimpleResponses
  = lens _gSimpleResponses
      (\ s a -> s{_gSimpleResponses = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponses
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSimpleResponses"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSimpleResponses'
                   <$> (o .:? "simpleResponses" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSimpleResponses
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSimpleResponses'{..}
          = object
              (catMaybes
                 [("simpleResponses" .=) <$> _gSimpleResponses])

-- | Represents a single followup intent in the chain.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentFollowupIntentInfo' smart constructor.
data GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'
    { _gFollowupIntentName       :: !(Maybe Text)
    , _gParentFollowupIntentName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gFollowupIntentName'
--
-- * 'gParentFollowupIntentName'
googleCloudDialogflowV2beta1IntentFollowupIntentInfo
    :: GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
googleCloudDialogflowV2beta1IntentFollowupIntentInfo =
  GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'
    {_gFollowupIntentName = Nothing, _gParentFollowupIntentName = Nothing}


-- | The unique identifier of the followup intent. Format:
-- \`projects\/\/agent\/intents\/\`.
gFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo (Maybe Text)
gFollowupIntentName
  = lens _gFollowupIntentName
      (\ s a -> s{_gFollowupIntentName = a})

-- | The unique identifier of the followup intent\'s parent. Format:
-- \`projects\/\/agent\/intents\/\`.
gParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo (Maybe Text)
gParentFollowupIntentName
  = lens _gParentFollowupIntentName
      (\ s a -> s{_gParentFollowupIntentName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'
                   <$>
                   (o .:? "followupIntentName") <*>
                     (o .:? "parentFollowupIntentName"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo'{..}
          = object
              (catMaybes
                 [("followupIntentName" .=) <$> _gFollowupIntentName,
                  ("parentFollowupIntentName" .=) <$>
                    _gParentFollowupIntentName])

-- | The collection of extracted parameters. Depending on your protocol or
-- client library language, this is a map, associative array, symbol table,
-- dictionary, or JSON object composed of a collection of (MapKey,
-- MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
-- MapValue type: - If parameter\'s entity type is a composite entity: map
-- - Else: string or number, depending on parameter value type - MapValue
-- value: - If parameter\'s entity type is a composite entity: map from
-- composite entity property names to property values - Else: parameter
-- value
--
-- /See:/ 'googleCloudDialogflowV2QueryResultParameters' smart constructor.
newtype GoogleCloudDialogflowV2QueryResultParameters =
  GoogleCloudDialogflowV2QueryResultParameters'
    { _gcdvqrpsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2QueryResultParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrpsAddtional'
googleCloudDialogflowV2QueryResultParameters
    :: HashMap Text JSONValue -- ^ 'gcdvqrpsAddtional'
    -> GoogleCloudDialogflowV2QueryResultParameters
googleCloudDialogflowV2QueryResultParameters pGcdvqrpsAddtional_ =
  GoogleCloudDialogflowV2QueryResultParameters'
    {_gcdvqrpsAddtional = _Coerce # pGcdvqrpsAddtional_}


-- | Properties of the object.
gcdvqrpsAddtional :: Lens' GoogleCloudDialogflowV2QueryResultParameters (HashMap Text JSONValue)
gcdvqrpsAddtional
  = lens _gcdvqrpsAddtional
      (\ s a -> s{_gcdvqrpsAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2QueryResultParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2QueryResultParameters"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResultParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2QueryResultParameters
         where
        toJSON = toJSON . _gcdvqrpsAddtional

--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem =
  GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem'
    { _gcdcvqrwpiAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqrwpiAddtional'
googleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem
    :: HashMap Text JSONValue -- ^ 'gcdcvqrwpiAddtional'
    -> GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem
googleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem pGcdcvqrwpiAddtional_ =
  GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem'
    {_gcdcvqrwpiAddtional = _Coerce # pGcdcvqrwpiAddtional_}


-- | Properties of the object.
gcdcvqrwpiAddtional :: Lens' GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem (HashMap Text JSONValue)
gcdcvqrwpiAddtional
  = lens _gcdcvqrwpiAddtional
      (\ s a -> s{_gcdcvqrwpiAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryResultWebhookPayloadsItem
         where
        toJSON = toJSON . _gcdcvqrwpiAddtional

-- | Free-form diagnostic information for the associated detect intent
-- request. The fields of this data can change without notice, so you
-- should not write code that depends on its structure. The data may
-- contain: - webhook call latency - webhook errors
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResultDiagnosticInfo' smart constructor.
newtype GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo =
  GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo'
    { _gcdvqrdicAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrdicAddtional'
googleCloudDialogflowV2beta1QueryResultDiagnosticInfo
    :: HashMap Text JSONValue -- ^ 'gcdvqrdicAddtional'
    -> GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
googleCloudDialogflowV2beta1QueryResultDiagnosticInfo pGcdvqrdicAddtional_ =
  GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo'
    {_gcdvqrdicAddtional = _Coerce # pGcdvqrdicAddtional_}


-- | Properties of the object.
gcdvqrdicAddtional :: Lens' GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo (HashMap Text JSONValue)
gcdvqrdicAddtional
  = lens _gcdvqrdicAddtional
      (\ s a -> s{_gcdvqrdicAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo
         where
        toJSON = toJSON . _gcdvqrdicAddtional

-- | The response message for Versions.ListVersions.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListVersionsResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListVersionsResponse =
  GoogleCloudDialogflowCxV3beta1ListVersionsResponse'
    { _gcdcvlvrNextPageToken :: !(Maybe Text)
    , _gcdcvlvrVersions      :: !(Maybe [GoogleCloudDialogflowCxV3beta1Version])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlvrNextPageToken'
--
-- * 'gcdcvlvrVersions'
googleCloudDialogflowCxV3beta1ListVersionsResponse
    :: GoogleCloudDialogflowCxV3beta1ListVersionsResponse
googleCloudDialogflowCxV3beta1ListVersionsResponse =
  GoogleCloudDialogflowCxV3beta1ListVersionsResponse'
    {_gcdcvlvrNextPageToken = Nothing, _gcdcvlvrVersions = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlvrNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListVersionsResponse (Maybe Text)
gcdcvlvrNextPageToken
  = lens _gcdcvlvrNextPageToken
      (\ s a -> s{_gcdcvlvrNextPageToken = a})

-- | A list of versions. There will be a maximum number of items returned
-- based on the page_size field in the request. The list may in some cases
-- be empty or contain fewer entries than page_size even if this isn\'t the
-- last page.
gcdcvlvrVersions :: Lens' GoogleCloudDialogflowCxV3beta1ListVersionsResponse [GoogleCloudDialogflowCxV3beta1Version]
gcdcvlvrVersions
  = lens _gcdcvlvrVersions
      (\ s a -> s{_gcdcvlvrVersions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListVersionsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListVersionsResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListVersionsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "versions" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListVersionsResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListVersionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlvrNextPageToken,
                  ("versions" .=) <$> _gcdcvlvrVersions])

-- | The response message for Intents.BatchUpdateIntents.
--
-- /See:/ 'googleCloudDialogflowV2BatchUpdateIntentsResponse' smart constructor.
newtype GoogleCloudDialogflowV2BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2BatchUpdateIntentsResponse'
    { _gIntents :: Maybe [GoogleCloudDialogflowV2Intent]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2BatchUpdateIntentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gIntents'
googleCloudDialogflowV2BatchUpdateIntentsResponse
    :: GoogleCloudDialogflowV2BatchUpdateIntentsResponse
googleCloudDialogflowV2BatchUpdateIntentsResponse =
  GoogleCloudDialogflowV2BatchUpdateIntentsResponse' {_gIntents = Nothing}


-- | The collection of updated or created intents.
gIntents :: Lens' GoogleCloudDialogflowV2BatchUpdateIntentsResponse [GoogleCloudDialogflowV2Intent]
gIntents
  = lens _gIntents (\ s a -> s{_gIntents = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchUpdateIntentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchUpdateIntentsResponse"
              (\ o ->
                 GoogleCloudDialogflowV2BatchUpdateIntentsResponse'
                   <$> (o .:? "intents" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchUpdateIntentsResponse
         where
        toJSON
          GoogleCloudDialogflowV2BatchUpdateIntentsResponse'{..}
          = object (catMaybes [("intents" .=) <$> _gIntents])

-- | The response message for Flows.ListFlows.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListFlowsResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListFlowsResponse =
  GoogleCloudDialogflowCxV3beta1ListFlowsResponse'
    { _gcdcvlfrNextPageToken :: !(Maybe Text)
    , _gcdcvlfrFlows         :: !(Maybe [GoogleCloudDialogflowCxV3beta1Flow])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListFlowsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlfrNextPageToken'
--
-- * 'gcdcvlfrFlows'
googleCloudDialogflowCxV3beta1ListFlowsResponse
    :: GoogleCloudDialogflowCxV3beta1ListFlowsResponse
googleCloudDialogflowCxV3beta1ListFlowsResponse =
  GoogleCloudDialogflowCxV3beta1ListFlowsResponse'
    {_gcdcvlfrNextPageToken = Nothing, _gcdcvlfrFlows = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlfrNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListFlowsResponse (Maybe Text)
gcdcvlfrNextPageToken
  = lens _gcdcvlfrNextPageToken
      (\ s a -> s{_gcdcvlfrNextPageToken = a})

-- | The list of flows. There will be a maximum number of items returned
-- based on the page_size field in the request.
gcdcvlfrFlows :: Lens' GoogleCloudDialogflowCxV3beta1ListFlowsResponse [GoogleCloudDialogflowCxV3beta1Flow]
gcdcvlfrFlows
  = lens _gcdcvlfrFlows
      (\ s a -> s{_gcdcvlfrFlows = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListFlowsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListFlowsResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListFlowsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "flows" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListFlowsResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListFlowsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlfrNextPageToken,
                  ("flows" .=) <$> _gcdcvlfrFlows])

-- | The response message for a webhook call.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1WebhookResponse =
  GoogleCloudDialogflowCxV3beta1WebhookResponse'
    { _gPageInfo            :: !(Maybe GoogleCloudDialogflowCxV3beta1PageInfo)
    , _gSessionInfo         :: !(Maybe GoogleCloudDialogflowCxV3beta1SessionInfo)
    , _gPayload             :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookResponsePayload)
    , _gTargetPage          :: !(Maybe Text)
    , _gTargetFlow          :: !(Maybe Text)
    , _gFulfillmentResponse :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gPageInfo'
--
-- * 'gSessionInfo'
--
-- * 'gPayload'
--
-- * 'gTargetPage'
--
-- * 'gTargetFlow'
--
-- * 'gFulfillmentResponse'
googleCloudDialogflowCxV3beta1WebhookResponse
    :: GoogleCloudDialogflowCxV3beta1WebhookResponse
googleCloudDialogflowCxV3beta1WebhookResponse =
  GoogleCloudDialogflowCxV3beta1WebhookResponse'
    { _gPageInfo = Nothing
    , _gSessionInfo = Nothing
    , _gPayload = Nothing
    , _gTargetPage = Nothing
    , _gTargetFlow = Nothing
    , _gFulfillmentResponse = Nothing
    }


-- | Information about page status. This field can be omitted by the webhook
-- if it does not intend to modify page status.
gPageInfo :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponse (Maybe GoogleCloudDialogflowCxV3beta1PageInfo)
gPageInfo
  = lens _gPageInfo (\ s a -> s{_gPageInfo = a})

-- | Information about session status. This field can be omitted by the
-- webhook if it does not intend to modify session status.
gSessionInfo :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponse (Maybe GoogleCloudDialogflowCxV3beta1SessionInfo)
gSessionInfo
  = lens _gSessionInfo (\ s a -> s{_gSessionInfo = a})

-- | Value to append directly to QueryResult.webhook_payloads.
gPayload :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponse (Maybe GoogleCloudDialogflowCxV3beta1WebhookResponsePayload)
gPayload = lens _gPayload (\ s a -> s{_gPayload = a})

-- | The target page to transition to. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/pages\/\`.
gTargetPage :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponse (Maybe Text)
gTargetPage
  = lens _gTargetPage (\ s a -> s{_gTargetPage = a})

-- | The target flow to transition to. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
gTargetFlow :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponse (Maybe Text)
gTargetFlow
  = lens _gTargetFlow (\ s a -> s{_gTargetFlow = a})

-- | The fulfillment response to send to the user. This field can be omitted
-- by the webhook if it does not intend to send any response to the user.
gFulfillmentResponse :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponse (Maybe GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse)
gFulfillmentResponse
  = lens _gFulfillmentResponse
      (\ s a -> s{_gFulfillmentResponse = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookResponse' <$>
                   (o .:? "pageInfo") <*> (o .:? "sessionInfo") <*>
                     (o .:? "payload")
                     <*> (o .:? "targetPage")
                     <*> (o .:? "targetFlow")
                     <*> (o .:? "fulfillmentResponse"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1WebhookResponse'{..}
          = object
              (catMaybes
                 [("pageInfo" .=) <$> _gPageInfo,
                  ("sessionInfo" .=) <$> _gSessionInfo,
                  ("payload" .=) <$> _gPayload,
                  ("targetPage" .=) <$> _gTargetPage,
                  ("targetFlow" .=) <$> _gTargetFlow,
                  ("fulfillmentResponse" .=) <$>
                    _gFulfillmentResponse])

-- | Corresponds to the \`Response\` field in the Dialogflow console.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessage' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessage =
  GoogleCloudDialogflowV2beta1IntentMessage'
    { _gcdvimRbmStandaloneRichCard     :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard)
    , _gcdvimCard                      :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageCard)
    , _gcdvimImage                     :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimPlatform                  :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessagePlatform)
    , _gcdvimBrowseCarouselCard        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard)
    , _gcdvimTableCard                 :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageTableCard)
    , _gcdvimLinkOutSuggestion         :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion)
    , _gcdvimText                      :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageText)
    , _gcdvimCarouselSelect            :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect)
    , _gcdvimRbmText                   :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmText)
    , _gcdvimTelephonySynthesizeSpeech :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech)
    , _gcdvimSimpleResponses           :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses)
    , _gcdvimPayload                   :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessagePayload)
    , _gcdvimTelephonyTransferCall     :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall)
    , _gcdvimRbmCarouselRichCard       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard)
    , _gcdvimSuggestions               :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSuggestions)
    , _gcdvimListSelect                :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageListSelect)
    , _gcdvimTelephonyPlayAudio        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio)
    , _gcdvimMediaContent              :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageMediaContent)
    , _gcdvimBasicCard                 :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCard)
    , _gcdvimQuickReplies              :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageQuickReplies)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimRbmStandaloneRichCard'
--
-- * 'gcdvimCard'
--
-- * 'gcdvimImage'
--
-- * 'gcdvimPlatform'
--
-- * 'gcdvimBrowseCarouselCard'
--
-- * 'gcdvimTableCard'
--
-- * 'gcdvimLinkOutSuggestion'
--
-- * 'gcdvimText'
--
-- * 'gcdvimCarouselSelect'
--
-- * 'gcdvimRbmText'
--
-- * 'gcdvimTelephonySynthesizeSpeech'
--
-- * 'gcdvimSimpleResponses'
--
-- * 'gcdvimPayload'
--
-- * 'gcdvimTelephonyTransferCall'
--
-- * 'gcdvimRbmCarouselRichCard'
--
-- * 'gcdvimSuggestions'
--
-- * 'gcdvimListSelect'
--
-- * 'gcdvimTelephonyPlayAudio'
--
-- * 'gcdvimMediaContent'
--
-- * 'gcdvimBasicCard'
--
-- * 'gcdvimQuickReplies'
googleCloudDialogflowV2beta1IntentMessage
    :: GoogleCloudDialogflowV2beta1IntentMessage
googleCloudDialogflowV2beta1IntentMessage =
  GoogleCloudDialogflowV2beta1IntentMessage'
    { _gcdvimRbmStandaloneRichCard = Nothing
    , _gcdvimCard = Nothing
    , _gcdvimImage = Nothing
    , _gcdvimPlatform = Nothing
    , _gcdvimBrowseCarouselCard = Nothing
    , _gcdvimTableCard = Nothing
    , _gcdvimLinkOutSuggestion = Nothing
    , _gcdvimText = Nothing
    , _gcdvimCarouselSelect = Nothing
    , _gcdvimRbmText = Nothing
    , _gcdvimTelephonySynthesizeSpeech = Nothing
    , _gcdvimSimpleResponses = Nothing
    , _gcdvimPayload = Nothing
    , _gcdvimTelephonyTransferCall = Nothing
    , _gcdvimRbmCarouselRichCard = Nothing
    , _gcdvimSuggestions = Nothing
    , _gcdvimListSelect = Nothing
    , _gcdvimTelephonyPlayAudio = Nothing
    , _gcdvimMediaContent = Nothing
    , _gcdvimBasicCard = Nothing
    , _gcdvimQuickReplies = Nothing
    }


-- | Standalone Rich Business Messaging (RBM) rich card response.
gcdvimRbmStandaloneRichCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard)
gcdvimRbmStandaloneRichCard
  = lens _gcdvimRbmStandaloneRichCard
      (\ s a -> s{_gcdvimRbmStandaloneRichCard = a})

-- | Displays a card.
gcdvimCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageCard)
gcdvimCard
  = lens _gcdvimCard (\ s a -> s{_gcdvimCard = a})

-- | Displays an image.
gcdvimImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimImage
  = lens _gcdvimImage (\ s a -> s{_gcdvimImage = a})

-- | Optional. The platform that this message is intended for.
gcdvimPlatform :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessagePlatform)
gcdvimPlatform
  = lens _gcdvimPlatform
      (\ s a -> s{_gcdvimPlatform = a})

-- | Browse carousel card for Actions on Google.
gcdvimBrowseCarouselCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard)
gcdvimBrowseCarouselCard
  = lens _gcdvimBrowseCarouselCard
      (\ s a -> s{_gcdvimBrowseCarouselCard = a})

-- | Table card for Actions on Google.
gcdvimTableCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageTableCard)
gcdvimTableCard
  = lens _gcdvimTableCard
      (\ s a -> s{_gcdvimTableCard = a})

-- | Displays a link out suggestion chip for Actions on Google.
gcdvimLinkOutSuggestion :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion)
gcdvimLinkOutSuggestion
  = lens _gcdvimLinkOutSuggestion
      (\ s a -> s{_gcdvimLinkOutSuggestion = a})

-- | Returns a text response.
gcdvimText :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageText)
gcdvimText
  = lens _gcdvimText (\ s a -> s{_gcdvimText = a})

-- | Displays a carousel card for Actions on Google.
gcdvimCarouselSelect :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect)
gcdvimCarouselSelect
  = lens _gcdvimCarouselSelect
      (\ s a -> s{_gcdvimCarouselSelect = a})

-- | Rich Business Messaging (RBM) text response. RBM allows businesses to
-- send enriched and branded versions of SMS. See
-- https:\/\/jibe.google.com\/business-messaging.
gcdvimRbmText :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmText)
gcdvimRbmText
  = lens _gcdvimRbmText
      (\ s a -> s{_gcdvimRbmText = a})

-- | Synthesizes speech in Telephony Gateway.
gcdvimTelephonySynthesizeSpeech :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech)
gcdvimTelephonySynthesizeSpeech
  = lens _gcdvimTelephonySynthesizeSpeech
      (\ s a -> s{_gcdvimTelephonySynthesizeSpeech = a})

-- | Returns a voice or text-only response for Actions on Google.
gcdvimSimpleResponses :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses)
gcdvimSimpleResponses
  = lens _gcdvimSimpleResponses
      (\ s a -> s{_gcdvimSimpleResponses = a})

-- | A custom platform-specific response.
gcdvimPayload :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessagePayload)
gcdvimPayload
  = lens _gcdvimPayload
      (\ s a -> s{_gcdvimPayload = a})

-- | Transfers the call in Telephony Gateway.
gcdvimTelephonyTransferCall :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall)
gcdvimTelephonyTransferCall
  = lens _gcdvimTelephonyTransferCall
      (\ s a -> s{_gcdvimTelephonyTransferCall = a})

-- | Rich Business Messaging (RBM) carousel rich card response.
gcdvimRbmCarouselRichCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard)
gcdvimRbmCarouselRichCard
  = lens _gcdvimRbmCarouselRichCard
      (\ s a -> s{_gcdvimRbmCarouselRichCard = a})

-- | Displays suggestion chips for Actions on Google.
gcdvimSuggestions :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageSuggestions)
gcdvimSuggestions
  = lens _gcdvimSuggestions
      (\ s a -> s{_gcdvimSuggestions = a})

-- | Displays a list card for Actions on Google.
gcdvimListSelect :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageListSelect)
gcdvimListSelect
  = lens _gcdvimListSelect
      (\ s a -> s{_gcdvimListSelect = a})

-- | Plays audio from a file in Telephony Gateway.
gcdvimTelephonyPlayAudio :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio)
gcdvimTelephonyPlayAudio
  = lens _gcdvimTelephonyPlayAudio
      (\ s a -> s{_gcdvimTelephonyPlayAudio = a})

-- | The media content card for Actions on Google.
gcdvimMediaContent :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageMediaContent)
gcdvimMediaContent
  = lens _gcdvimMediaContent
      (\ s a -> s{_gcdvimMediaContent = a})

-- | Displays a basic card for Actions on Google.
gcdvimBasicCard :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageBasicCard)
gcdvimBasicCard
  = lens _gcdvimBasicCard
      (\ s a -> s{_gcdvimBasicCard = a})

-- | Displays quick replies.
gcdvimQuickReplies :: Lens' GoogleCloudDialogflowV2beta1IntentMessage (Maybe GoogleCloudDialogflowV2beta1IntentMessageQuickReplies)
gcdvimQuickReplies
  = lens _gcdvimQuickReplies
      (\ s a -> s{_gcdvimQuickReplies = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessage
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessage"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessage' <$>
                   (o .:? "rbmStandaloneRichCard") <*> (o .:? "card")
                     <*> (o .:? "image")
                     <*> (o .:? "platform")
                     <*> (o .:? "browseCarouselCard")
                     <*> (o .:? "tableCard")
                     <*> (o .:? "linkOutSuggestion")
                     <*> (o .:? "text")
                     <*> (o .:? "carouselSelect")
                     <*> (o .:? "rbmText")
                     <*> (o .:? "telephonySynthesizeSpeech")
                     <*> (o .:? "simpleResponses")
                     <*> (o .:? "payload")
                     <*> (o .:? "telephonyTransferCall")
                     <*> (o .:? "rbmCarouselRichCard")
                     <*> (o .:? "suggestions")
                     <*> (o .:? "listSelect")
                     <*> (o .:? "telephonyPlayAudio")
                     <*> (o .:? "mediaContent")
                     <*> (o .:? "basicCard")
                     <*> (o .:? "quickReplies"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessage
         where
        toJSON GoogleCloudDialogflowV2beta1IntentMessage'{..}
          = object
              (catMaybes
                 [("rbmStandaloneRichCard" .=) <$>
                    _gcdvimRbmStandaloneRichCard,
                  ("card" .=) <$> _gcdvimCard,
                  ("image" .=) <$> _gcdvimImage,
                  ("platform" .=) <$> _gcdvimPlatform,
                  ("browseCarouselCard" .=) <$>
                    _gcdvimBrowseCarouselCard,
                  ("tableCard" .=) <$> _gcdvimTableCard,
                  ("linkOutSuggestion" .=) <$>
                    _gcdvimLinkOutSuggestion,
                  ("text" .=) <$> _gcdvimText,
                  ("carouselSelect" .=) <$> _gcdvimCarouselSelect,
                  ("rbmText" .=) <$> _gcdvimRbmText,
                  ("telephonySynthesizeSpeech" .=) <$>
                    _gcdvimTelephonySynthesizeSpeech,
                  ("simpleResponses" .=) <$> _gcdvimSimpleResponses,
                  ("payload" .=) <$> _gcdvimPayload,
                  ("telephonyTransferCall" .=) <$>
                    _gcdvimTelephonyTransferCall,
                  ("rbmCarouselRichCard" .=) <$>
                    _gcdvimRbmCarouselRichCard,
                  ("suggestions" .=) <$> _gcdvimSuggestions,
                  ("listSelect" .=) <$> _gcdvimListSelect,
                  ("telephonyPlayAudio" .=) <$>
                    _gcdvimTelephonyPlayAudio,
                  ("mediaContent" .=) <$> _gcdvimMediaContent,
                  ("basicCard" .=) <$> _gcdvimBasicCard,
                  ("quickReplies" .=) <$> _gcdvimQuickReplies])

-- | Opens the device\'s location chooser so the user can pick a location to
-- send back to the agent.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation' with the minimum fields required to make a request.
--
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation'


instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation"
              (\ o ->
                 pure
                   GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation')

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
         where
        toJSON = const emptyObject

-- | Configuration for the version.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1EnvironmentVersionConfig' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig =
  GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig'
    { _gcdcvevcVersion :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvevcVersion'
googleCloudDialogflowCxV3beta1EnvironmentVersionConfig
    :: GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
googleCloudDialogflowCxV3beta1EnvironmentVersionConfig =
  GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig'
    {_gcdcvevcVersion = Nothing}


-- | Required. Format:
-- projects\/\/locations\/\/agents\/\/flows\/\/versions\/.
gcdcvevcVersion :: Lens' GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig (Maybe Text)
gcdcvevcVersion
  = lens _gcdcvevcVersion
      (\ s a -> s{_gcdcvevcVersion = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig'
                   <$> (o .:? "version"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig'{..}
          = object
              (catMaybes [("version" .=) <$> _gcdcvevcVersion])

-- | Additional info about the select item for when it is triggered in a
-- dialog.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSelectItemInfo' smart constructor.
data GoogleCloudDialogflowV2IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo'
    { _gcdvimsiiKey      :: !(Maybe Text)
    , _gcdvimsiiSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSelectItemInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimsiiKey'
--
-- * 'gcdvimsiiSynonyms'
googleCloudDialogflowV2IntentMessageSelectItemInfo
    :: GoogleCloudDialogflowV2IntentMessageSelectItemInfo
googleCloudDialogflowV2IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2IntentMessageSelectItemInfo'
    {_gcdvimsiiKey = Nothing, _gcdvimsiiSynonyms = Nothing}


-- | Required. A unique key that will be sent back to the agent if this
-- response is given.
gcdvimsiiKey :: Lens' GoogleCloudDialogflowV2IntentMessageSelectItemInfo (Maybe Text)
gcdvimsiiKey
  = lens _gcdvimsiiKey (\ s a -> s{_gcdvimsiiKey = a})

-- | Optional. A list of synonyms that can also be used to trigger this item
-- in dialog.
gcdvimsiiSynonyms :: Lens' GoogleCloudDialogflowV2IntentMessageSelectItemInfo [Text]
gcdvimsiiSynonyms
  = lens _gcdvimsiiSynonyms
      (\ s a -> s{_gcdvimsiiSynonyms = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSelectItemInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSelectItemInfo"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSelectItemInfo'
                   <$> (o .:? "key") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSelectItemInfo
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSelectItemInfo'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _gcdvimsiiKey,
                  ("synonyms" .=) <$> _gcdvimsiiSynonyms])

-- | The sentiment, such as positive\/negative feeling or association, for a
-- unit of analysis, such as the query text.
--
-- /See:/ 'googleCloudDialogflowV2beta1Sentiment' smart constructor.
data GoogleCloudDialogflowV2beta1Sentiment =
  GoogleCloudDialogflowV2beta1Sentiment'
    { _gcdvsScore     :: !(Maybe (Textual Double))
    , _gcdvsMagnitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1Sentiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvsScore'
--
-- * 'gcdvsMagnitude'
googleCloudDialogflowV2beta1Sentiment
    :: GoogleCloudDialogflowV2beta1Sentiment
googleCloudDialogflowV2beta1Sentiment =
  GoogleCloudDialogflowV2beta1Sentiment'
    {_gcdvsScore = Nothing, _gcdvsMagnitude = Nothing}


-- | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
-- sentiment).
gcdvsScore :: Lens' GoogleCloudDialogflowV2beta1Sentiment (Maybe Double)
gcdvsScore
  = lens _gcdvsScore (\ s a -> s{_gcdvsScore = a}) .
      mapping _Coerce

-- | A non-negative number in the [0, +inf) range, which represents the
-- absolute magnitude of sentiment, regardless of score (positive or
-- negative).
gcdvsMagnitude :: Lens' GoogleCloudDialogflowV2beta1Sentiment (Maybe Double)
gcdvsMagnitude
  = lens _gcdvsMagnitude
      (\ s a -> s{_gcdvsMagnitude = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1Sentiment
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1Sentiment"
              (\ o ->
                 GoogleCloudDialogflowV2beta1Sentiment' <$>
                   (o .:? "score") <*> (o .:? "magnitude"))

instance ToJSON GoogleCloudDialogflowV2beta1Sentiment
         where
        toJSON GoogleCloudDialogflowV2beta1Sentiment'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcdvsScore,
                  ("magnitude" .=) <$> _gcdvsMagnitude])

-- | Represents page information communicated to and from the webhook.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1PageInfo' smart constructor.
data GoogleCloudDialogflowCxV3beta1PageInfo =
  GoogleCloudDialogflowCxV3beta1PageInfo'
    { _gcdcvpiCurrentPage :: !(Maybe Text)
    , _gcdcvpiFormInfo    :: !(Maybe GoogleCloudDialogflowCxV3beta1PageInfoFormInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1PageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvpiCurrentPage'
--
-- * 'gcdcvpiFormInfo'
googleCloudDialogflowCxV3beta1PageInfo
    :: GoogleCloudDialogflowCxV3beta1PageInfo
googleCloudDialogflowCxV3beta1PageInfo =
  GoogleCloudDialogflowCxV3beta1PageInfo'
    {_gcdcvpiCurrentPage = Nothing, _gcdcvpiFormInfo = Nothing}


-- | Always present for WebhookRequest. Ignored for WebhookResponse. The
-- unique identifier of the current page. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/pages\/\`.
gcdcvpiCurrentPage :: Lens' GoogleCloudDialogflowCxV3beta1PageInfo (Maybe Text)
gcdcvpiCurrentPage
  = lens _gcdcvpiCurrentPage
      (\ s a -> s{_gcdcvpiCurrentPage = a})

-- | Optional for both WebhookRequest and WebhookResponse. Information about
-- the form.
gcdcvpiFormInfo :: Lens' GoogleCloudDialogflowCxV3beta1PageInfo (Maybe GoogleCloudDialogflowCxV3beta1PageInfoFormInfo)
gcdcvpiFormInfo
  = lens _gcdcvpiFormInfo
      (\ s a -> s{_gcdcvpiFormInfo = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1PageInfo
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1PageInfo"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1PageInfo' <$>
                   (o .:? "currentPage") <*> (o .:? "formInfo"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1PageInfo
         where
        toJSON GoogleCloudDialogflowCxV3beta1PageInfo'{..}
          = object
              (catMaybes
                 [("currentPage" .=) <$> _gcdcvpiCurrentPage,
                  ("formInfo" .=) <$> _gcdcvpiFormInfo])

-- | The card for presenting a carousel of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageCarouselSelect' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'
    { _gcdvimcsItems :: Maybe [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcsItems'
googleCloudDialogflowV2beta1IntentMessageCarouselSelect
    :: GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
googleCloudDialogflowV2beta1IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'
    {_gcdvimcsItems = Nothing}


-- | Required. Carousel items.
gcdvimcsItems :: Lens' GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem]
gcdvimcsItems
  = lens _gcdvimcsItems
      (\ s a -> s{_gcdvimcsItems = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'
                   <$> (o .:? "items" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect'{..}
          = object
              (catMaybes [("items" .=) <$> _gcdvimcsItems])

-- | Dialogflow contexts are similar to natural language context. If a person
-- says to you \"they are orange\", you need context in order to understand
-- what \"they\" is referring to. Similarly, for Dialogflow to handle an
-- end-user expression like that, it needs to be provided with context in
-- order to correctly match an intent. Using contexts, you can control the
-- flow of a conversation. You can configure contexts for an intent by
-- setting input and output contexts, which are identified by string names.
-- When an intent is matched, any configured output contexts for that
-- intent become active. While any contexts are active, Dialogflow is more
-- likely to match intents that are configured with input contexts that
-- correspond to the currently active contexts. For more information about
-- context, see the [Contexts
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/contexts-overview).
--
-- /See:/ 'googleCloudDialogflowV2beta1Context' smart constructor.
data GoogleCloudDialogflowV2beta1Context =
  GoogleCloudDialogflowV2beta1Context'
    { _gcdvcLifespanCount :: !(Maybe (Textual Int32))
    , _gcdvcName          :: !(Maybe Text)
    , _gcdvcParameters    :: !(Maybe GoogleCloudDialogflowV2beta1ContextParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvcLifespanCount'
--
-- * 'gcdvcName'
--
-- * 'gcdvcParameters'
googleCloudDialogflowV2beta1Context
    :: GoogleCloudDialogflowV2beta1Context
googleCloudDialogflowV2beta1Context =
  GoogleCloudDialogflowV2beta1Context'
    { _gcdvcLifespanCount = Nothing
    , _gcdvcName = Nothing
    , _gcdvcParameters = Nothing
    }


-- | Optional. The number of conversational query requests after which the
-- context expires. The default is \`0\`. If set to \`0\`, the context
-- expires immediately. Contexts expire automatically after 20 minutes if
-- there are no matching queries.
gcdvcLifespanCount :: Lens' GoogleCloudDialogflowV2beta1Context (Maybe Int32)
gcdvcLifespanCount
  = lens _gcdvcLifespanCount
      (\ s a -> s{_gcdvcLifespanCount = a})
      . mapping _Coerce

-- | Required. The unique identifier of the context. Supported formats: -
-- \`projects\/\/agent\/sessions\/\/contexts\/\`, -
-- \`projects\/\/locations\/\/agent\/sessions\/\/contexts\/\`, -
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\/contexts\/\`,
-- -
-- \`projects\/\/locations\/\/agent\/environments\/\/users\/\/sessions\/\/contexts\/\`,
-- The \`Context ID\` is always converted to lowercase, may only contain
-- characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. If \`User ID\` is not specified, we assume default \'-\'
-- user. The following context names are reserved for internal use by
-- Dialogflow. You should not use these contexts or create contexts with
-- these names: * \`__system_counters__\` * \`*_id_dialog_context\` *
-- \`*_dialog_params_size\`
gcdvcName :: Lens' GoogleCloudDialogflowV2beta1Context (Maybe Text)
gcdvcName
  = lens _gcdvcName (\ s a -> s{_gcdvcName = a})

-- | Optional. The collection of parameters associated with this context.
-- Depending on your protocol or client library language, this is a map,
-- associative array, symbol table, dictionary, or JSON object composed of
-- a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
-- value: parameter name - MapValue type: - If parameter\'s entity type is
-- a composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
gcdvcParameters :: Lens' GoogleCloudDialogflowV2beta1Context (Maybe GoogleCloudDialogflowV2beta1ContextParameters)
gcdvcParameters
  = lens _gcdvcParameters
      (\ s a -> s{_gcdvcParameters = a})

instance FromJSON GoogleCloudDialogflowV2beta1Context
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1Context"
              (\ o ->
                 GoogleCloudDialogflowV2beta1Context' <$>
                   (o .:? "lifespanCount") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON GoogleCloudDialogflowV2beta1Context
         where
        toJSON GoogleCloudDialogflowV2beta1Context'{..}
          = object
              (catMaybes
                 [("lifespanCount" .=) <$> _gcdvcLifespanCount,
                  ("name" .=) <$> _gcdvcName,
                  ("parameters" .=) <$> _gcdvcParameters])

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
--
-- /See:/ 'googleLongrunningOperationResponse' smart constructor.
newtype GoogleLongrunningOperationResponse =
  GoogleLongrunningOperationResponse'
    { _glorAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glorAddtional'
googleLongrunningOperationResponse
    :: HashMap Text JSONValue -- ^ 'glorAddtional'
    -> GoogleLongrunningOperationResponse
googleLongrunningOperationResponse pGlorAddtional_ =
  GoogleLongrunningOperationResponse'
    {_glorAddtional = _Coerce # pGlorAddtional_}


-- | Properties of the object. Contains field \'type with type URL.
glorAddtional :: Lens' GoogleLongrunningOperationResponse (HashMap Text JSONValue)
glorAddtional
  = lens _glorAddtional
      (\ s a -> s{_glorAddtional = a})
      . _Coerce

instance FromJSON GoogleLongrunningOperationResponse
         where
        parseJSON
          = withObject "GoogleLongrunningOperationResponse"
              (\ o ->
                 GoogleLongrunningOperationResponse' <$>
                   (parseJSONObject o))

instance ToJSON GoogleLongrunningOperationResponse
         where
        toJSON = toJSON . _glorAddtional

-- | Indicates that interaction with the Dialogflow agent has ended. This
-- message is generated by Dialogflow only and not supposed to be defined
-- by the user.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageEndInteraction' smart constructor.
data GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction =
  GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction' with the minimum fields required to make a request.
--
googleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
    :: GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
googleCloudDialogflowCxV3beta1ResponseMessageEndInteraction =
  GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction'


instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction"
              (\ o ->
                 pure
                   GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction')

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
         where
        toJSON = const emptyObject

-- | Represents form information.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1PageInfoFormInfo' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1PageInfoFormInfo =
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfo'
    { _gcdcvpifiParameterInfo :: Maybe [GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1PageInfoFormInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvpifiParameterInfo'
googleCloudDialogflowCxV3beta1PageInfoFormInfo
    :: GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
googleCloudDialogflowCxV3beta1PageInfoFormInfo =
  GoogleCloudDialogflowCxV3beta1PageInfoFormInfo'
    {_gcdcvpifiParameterInfo = Nothing}


-- | Optional for both WebhookRequest and WebhookResponse. The parameters
-- contained in the form. Note that the webhook cannot add or remove any
-- form parameter.
gcdcvpifiParameterInfo :: Lens' GoogleCloudDialogflowCxV3beta1PageInfoFormInfo [GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo]
gcdcvpifiParameterInfo
  = lens _gcdcvpifiParameterInfo
      (\ s a -> s{_gcdcvpifiParameterInfo = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1PageInfoFormInfo"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1PageInfoFormInfo' <$>
                   (o .:? "parameterInfo" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1PageInfoFormInfo'{..}
          = object
              (catMaybes
                 [("parameterInfo" .=) <$> _gcdcvpifiParameterInfo])

-- | Rich Business Messaging (RBM) text response with suggestions.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmText' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmText =
  GoogleCloudDialogflowV2beta1IntentMessageRbmText'
    { _gcdvimrtText          :: !(Maybe Text)
    , _gcdvimrtRbmSuggestion :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrtText'
--
-- * 'gcdvimrtRbmSuggestion'
googleCloudDialogflowV2beta1IntentMessageRbmText
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmText
googleCloudDialogflowV2beta1IntentMessageRbmText =
  GoogleCloudDialogflowV2beta1IntentMessageRbmText'
    {_gcdvimrtText = Nothing, _gcdvimrtRbmSuggestion = Nothing}


-- | Required. Text sent and displayed to the user.
gcdvimrtText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmText (Maybe Text)
gcdvimrtText
  = lens _gcdvimrtText (\ s a -> s{_gcdvimrtText = a})

-- | Optional. One or more suggestions to show to the user.
gcdvimrtRbmSuggestion :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmText [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion]
gcdvimrtRbmSuggestion
  = lens _gcdvimrtRbmSuggestion
      (\ s a -> s{_gcdvimrtRbmSuggestion = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmText
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmText"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmText' <$>
                   (o .:? "text") <*>
                     (o .:? "rbmSuggestion" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmText
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmText'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvimrtText,
                  ("rbmSuggestion" .=) <$> _gcdvimrtRbmSuggestion])

-- | Synthesizes speech and plays back the synthesized audio to the caller in
-- Telephony Gateway. Telephony Gateway takes the synthesizer settings from
-- \`DetectIntentResponse.output_audio_config\` which can either be set at
-- request-level or can come from the agent-level synthesizer config.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'
    { _gcdvimtssText :: !(Maybe Text)
    , _gcdvimtssSsml :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtssText'
--
-- * 'gcdvimtssSsml'
googleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
    :: GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
googleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'
    {_gcdvimtssText = Nothing, _gcdvimtssSsml = Nothing}


-- | The raw text to be synthesized.
gcdvimtssText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech (Maybe Text)
gcdvimtssText
  = lens _gcdvimtssText
      (\ s a -> s{_gcdvimtssText = a})

-- | The SSML to be synthesized. For more information, see
-- [SSML](https:\/\/developers.google.com\/actions\/reference\/ssml).
gcdvimtssSsml :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech (Maybe Text)
gcdvimtssSsml
  = lens _gcdvimtssSsml
      (\ s a -> s{_gcdvimtssSsml = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'
                   <$> (o .:? "text") <*> (o .:? "ssml"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvimtssText,
                  ("ssml" .=) <$> _gcdvimtssSsml])

-- | A fulfillment can do one or more of the following actions at the same
-- time: * Generate rich message responses. * Set parameter values. * Call
-- the webhook. Fulfillments can be called at various stages in the Page or
-- Form lifecycle. For example, when a DetectIntentRequest drives a session
-- to enter a new page, the page\'s entry fulfillment can add a static
-- response to the QueryResult in the returning DetectIntentResponse, call
-- the webhook (for example, to load user data from a database), or both.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Fulfillment' smart constructor.
data GoogleCloudDialogflowCxV3beta1Fulfillment =
  GoogleCloudDialogflowCxV3beta1Fulfillment'
    { _gcdcvfTag                 :: !(Maybe Text)
    , _gcdcvfConditionalCases    :: !(Maybe [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases])
    , _gcdcvfMessages            :: !(Maybe [GoogleCloudDialogflowCxV3beta1ResponseMessage])
    , _gcdcvfWebhook             :: !(Maybe Text)
    , _gcdcvfSetParameterActions :: !(Maybe [GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Fulfillment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfTag'
--
-- * 'gcdcvfConditionalCases'
--
-- * 'gcdcvfMessages'
--
-- * 'gcdcvfWebhook'
--
-- * 'gcdcvfSetParameterActions'
googleCloudDialogflowCxV3beta1Fulfillment
    :: GoogleCloudDialogflowCxV3beta1Fulfillment
googleCloudDialogflowCxV3beta1Fulfillment =
  GoogleCloudDialogflowCxV3beta1Fulfillment'
    { _gcdcvfTag = Nothing
    , _gcdcvfConditionalCases = Nothing
    , _gcdcvfMessages = Nothing
    , _gcdcvfWebhook = Nothing
    , _gcdcvfSetParameterActions = Nothing
    }


-- | The tag used by the webhook to identify which fulfillment is being
-- called. This field is required if \`webhook\` is specified.
gcdcvfTag :: Lens' GoogleCloudDialogflowCxV3beta1Fulfillment (Maybe Text)
gcdcvfTag
  = lens _gcdcvfTag (\ s a -> s{_gcdcvfTag = a})

-- | Conditional cases for this fulfillment.
gcdcvfConditionalCases :: Lens' GoogleCloudDialogflowCxV3beta1Fulfillment [GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases]
gcdcvfConditionalCases
  = lens _gcdcvfConditionalCases
      (\ s a -> s{_gcdcvfConditionalCases = a})
      . _Default
      . _Coerce

-- | The list of rich message responses to present to the user.
gcdcvfMessages :: Lens' GoogleCloudDialogflowCxV3beta1Fulfillment [GoogleCloudDialogflowCxV3beta1ResponseMessage]
gcdcvfMessages
  = lens _gcdcvfMessages
      (\ s a -> s{_gcdcvfMessages = a})
      . _Default
      . _Coerce

-- | The webhook to call. Format:
-- \`projects\/\/locations\/\/agents\/\/webhooks\/\`.
gcdcvfWebhook :: Lens' GoogleCloudDialogflowCxV3beta1Fulfillment (Maybe Text)
gcdcvfWebhook
  = lens _gcdcvfWebhook
      (\ s a -> s{_gcdcvfWebhook = a})

-- | Set parameter values before executing the webhook.
gcdcvfSetParameterActions :: Lens' GoogleCloudDialogflowCxV3beta1Fulfillment [GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction]
gcdcvfSetParameterActions
  = lens _gcdcvfSetParameterActions
      (\ s a -> s{_gcdcvfSetParameterActions = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1Fulfillment
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1Fulfillment"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Fulfillment' <$>
                   (o .:? "tag") <*>
                     (o .:? "conditionalCases" .!= mempty)
                     <*> (o .:? "messages" .!= mempty)
                     <*> (o .:? "webhook")
                     <*> (o .:? "setParameterActions" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1Fulfillment
         where
        toJSON GoogleCloudDialogflowCxV3beta1Fulfillment'{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _gcdcvfTag,
                  ("conditionalCases" .=) <$> _gcdcvfConditionalCases,
                  ("messages" .=) <$> _gcdcvfMessages,
                  ("webhook" .=) <$> _gcdcvfWebhook,
                  ("setParameterActions" .=) <$>
                    _gcdcvfSetParameterActions])

-- | Represents a version of a flow.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Version' smart constructor.
data GoogleCloudDialogflowCxV3beta1Version =
  GoogleCloudDialogflowCxV3beta1Version'
    { _gcdcvvState       :: !(Maybe GoogleCloudDialogflowCxV3beta1VersionState)
    , _gcdcvvNluSettings :: !(Maybe GoogleCloudDialogflowCxV3beta1NluSettings)
    , _gcdcvvName        :: !(Maybe Text)
    , _gcdcvvDisplayName :: !(Maybe Text)
    , _gcdcvvDescription :: !(Maybe Text)
    , _gcdcvvCreateTime  :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Version' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvvState'
--
-- * 'gcdcvvNluSettings'
--
-- * 'gcdcvvName'
--
-- * 'gcdcvvDisplayName'
--
-- * 'gcdcvvDescription'
--
-- * 'gcdcvvCreateTime'
googleCloudDialogflowCxV3beta1Version
    :: GoogleCloudDialogflowCxV3beta1Version
googleCloudDialogflowCxV3beta1Version =
  GoogleCloudDialogflowCxV3beta1Version'
    { _gcdcvvState = Nothing
    , _gcdcvvNluSettings = Nothing
    , _gcdcvvName = Nothing
    , _gcdcvvDisplayName = Nothing
    , _gcdcvvDescription = Nothing
    , _gcdcvvCreateTime = Nothing
    }


-- | Output only. The state of this version. This field is read-only and
-- cannot be set by create and update methods.
gcdcvvState :: Lens' GoogleCloudDialogflowCxV3beta1Version (Maybe GoogleCloudDialogflowCxV3beta1VersionState)
gcdcvvState
  = lens _gcdcvvState (\ s a -> s{_gcdcvvState = a})

-- | Output only. The NLU settings of the flow at version creation.
gcdcvvNluSettings :: Lens' GoogleCloudDialogflowCxV3beta1Version (Maybe GoogleCloudDialogflowCxV3beta1NluSettings)
gcdcvvNluSettings
  = lens _gcdcvvNluSettings
      (\ s a -> s{_gcdcvvNluSettings = a})

-- | Format: projects\/\/locations\/\/agents\/\/flows\/\/versions\/. Version
-- ID is a self-increasing number generated by Dialogflow upon version
-- creation.
gcdcvvName :: Lens' GoogleCloudDialogflowCxV3beta1Version (Maybe Text)
gcdcvvName
  = lens _gcdcvvName (\ s a -> s{_gcdcvvName = a})

-- | Required. The human-readable name of the version. Limit of 64
-- characters.
gcdcvvDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1Version (Maybe Text)
gcdcvvDisplayName
  = lens _gcdcvvDisplayName
      (\ s a -> s{_gcdcvvDisplayName = a})

-- | The description of the version. The maximum length is 500 characters. If
-- exceeded, the request is rejected.
gcdcvvDescription :: Lens' GoogleCloudDialogflowCxV3beta1Version (Maybe Text)
gcdcvvDescription
  = lens _gcdcvvDescription
      (\ s a -> s{_gcdcvvDescription = a})

-- | Output only. Create time of the version.
gcdcvvCreateTime :: Lens' GoogleCloudDialogflowCxV3beta1Version (Maybe UTCTime)
gcdcvvCreateTime
  = lens _gcdcvvCreateTime
      (\ s a -> s{_gcdcvvCreateTime = a})
      . mapping _DateTime

instance FromJSON
           GoogleCloudDialogflowCxV3beta1Version
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Version"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Version' <$>
                   (o .:? "state") <*> (o .:? "nluSettings") <*>
                     (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description")
                     <*> (o .:? "createTime"))

instance ToJSON GoogleCloudDialogflowCxV3beta1Version
         where
        toJSON GoogleCloudDialogflowCxV3beta1Version'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _gcdcvvState,
                  ("nluSettings" .=) <$> _gcdcvvNluSettings,
                  ("name" .=) <$> _gcdcvvName,
                  ("displayName" .=) <$> _gcdcvvDisplayName,
                  ("description" .=) <$> _gcdcvvDescription,
                  ("createTime" .=) <$> _gcdcvvCreateTime])

-- | The response for ConversationDatasets.LabelConversation.
--
-- /See:/ 'googleCloudDialogflowV2beta1LabelConversationResponse' smart constructor.
newtype GoogleCloudDialogflowV2beta1LabelConversationResponse =
  GoogleCloudDialogflowV2beta1LabelConversationResponse'
    { _gcdvlcrAnnotatedConversationDataSet :: Maybe GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1LabelConversationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvlcrAnnotatedConversationDataSet'
googleCloudDialogflowV2beta1LabelConversationResponse
    :: GoogleCloudDialogflowV2beta1LabelConversationResponse
googleCloudDialogflowV2beta1LabelConversationResponse =
  GoogleCloudDialogflowV2beta1LabelConversationResponse'
    {_gcdvlcrAnnotatedConversationDataSet = Nothing}


-- | New annotated conversation dataset created by the labeling task.
gcdvlcrAnnotatedConversationDataSet :: Lens' GoogleCloudDialogflowV2beta1LabelConversationResponse (Maybe GoogleCloudDialogflowV2beta1AnnotatedConversationDataSet)
gcdvlcrAnnotatedConversationDataSet
  = lens _gcdvlcrAnnotatedConversationDataSet
      (\ s a ->
         s{_gcdvlcrAnnotatedConversationDataSet = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1LabelConversationResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1LabelConversationResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1LabelConversationResponse'
                   <$> (o .:? "annotatedConversationDataset"))

instance ToJSON
           GoogleCloudDialogflowV2beta1LabelConversationResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1LabelConversationResponse'{..}
          = object
              (catMaybes
                 [("annotatedConversationDataset" .=) <$>
                    _gcdvlcrAnnotatedConversationDataSet])

-- | Optional for WebhookRequest. Optional for WebhookResponse. All
-- parameters collected from forms and intents during the session.
-- Parameters can be created, updated, or removed by the webhook. To remove
-- a parameter from the session, the webhook should explicitly set the
-- parameter value to null in WebhookResponse. The map is keyed by
-- parameters\' display names.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1SessionInfoParameters' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1SessionInfoParameters =
  GoogleCloudDialogflowCxV3beta1SessionInfoParameters'
    { _gcdcvsipAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1SessionInfoParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvsipAddtional'
googleCloudDialogflowCxV3beta1SessionInfoParameters
    :: HashMap Text JSONValue -- ^ 'gcdcvsipAddtional'
    -> GoogleCloudDialogflowCxV3beta1SessionInfoParameters
googleCloudDialogflowCxV3beta1SessionInfoParameters pGcdcvsipAddtional_ =
  GoogleCloudDialogflowCxV3beta1SessionInfoParameters'
    {_gcdcvsipAddtional = _Coerce # pGcdcvsipAddtional_}


gcdcvsipAddtional :: Lens' GoogleCloudDialogflowCxV3beta1SessionInfoParameters (HashMap Text JSONValue)
gcdcvsipAddtional
  = lens _gcdcvsipAddtional
      (\ s a -> s{_gcdcvsipAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1SessionInfoParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1SessionInfoParameters"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1SessionInfoParameters'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1SessionInfoParameters
         where
        toJSON = toJSON . _gcdcvsipAddtional

-- | An item in the list.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageListSelectItem' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageListSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'
    { _gcdvimlsicImage       :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimlsicTitle       :: !(Maybe Text)
    , _gcdvimlsicDescription :: !(Maybe Text)
    , _gcdvimlsicInfo        :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageListSelectItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimlsicImage'
--
-- * 'gcdvimlsicTitle'
--
-- * 'gcdvimlsicDescription'
--
-- * 'gcdvimlsicInfo'
googleCloudDialogflowV2beta1IntentMessageListSelectItem
    :: GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
googleCloudDialogflowV2beta1IntentMessageListSelectItem =
  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'
    { _gcdvimlsicImage = Nothing
    , _gcdvimlsicTitle = Nothing
    , _gcdvimlsicDescription = Nothing
    , _gcdvimlsicInfo = Nothing
    }


-- | Optional. The image to display.
gcdvimlsicImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimlsicImage
  = lens _gcdvimlsicImage
      (\ s a -> s{_gcdvimlsicImage = a})

-- | Required. The title of the list item.
gcdvimlsicTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe Text)
gcdvimlsicTitle
  = lens _gcdvimlsicTitle
      (\ s a -> s{_gcdvimlsicTitle = a})

-- | Optional. The main text describing the item.
gcdvimlsicDescription :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe Text)
gcdvimlsicDescription
  = lens _gcdvimlsicDescription
      (\ s a -> s{_gcdvimlsicDescription = a})

-- | Required. Additional information about this option.
gcdvimlsicInfo :: Lens' GoogleCloudDialogflowV2beta1IntentMessageListSelectItem (Maybe GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo)
gcdvimlsicInfo
  = lens _gcdvimlsicInfo
      (\ s a -> s{_gcdvimlsicInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageListSelectItem"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'
                   <$>
                   (o .:? "image") <*> (o .:? "title") <*>
                     (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageListSelectItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimlsicImage,
                  ("title" .=) <$> _gcdvimlsicTitle,
                  ("description" .=) <$> _gcdvimlsicDescription,
                  ("info" .=) <$> _gcdvimlsicInfo])

-- | The suggestion chip message that the user can tap to quickly post a
-- reply to the conversation.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageSuggestion' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageSuggestion =
  GoogleCloudDialogflowV2IntentMessageSuggestion'
    { _gcdvimscTitle :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimscTitle'
googleCloudDialogflowV2IntentMessageSuggestion
    :: GoogleCloudDialogflowV2IntentMessageSuggestion
googleCloudDialogflowV2IntentMessageSuggestion =
  GoogleCloudDialogflowV2IntentMessageSuggestion' {_gcdvimscTitle = Nothing}


-- | Required. The text shown the in the suggestion chip.
gcdvimscTitle :: Lens' GoogleCloudDialogflowV2IntentMessageSuggestion (Maybe Text)
gcdvimscTitle
  = lens _gcdvimscTitle
      (\ s a -> s{_gcdvimscTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageSuggestion' <$>
                   (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageSuggestion'{..}
          = object
              (catMaybes [("title" .=) <$> _gcdvimscTitle])

-- | Cell of TableCardRow.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageTableCardCell' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageTableCardCell =
  GoogleCloudDialogflowV2IntentMessageTableCardCell'
    { _gcdvimtccText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageTableCardCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtccText'
googleCloudDialogflowV2IntentMessageTableCardCell
    :: GoogleCloudDialogflowV2IntentMessageTableCardCell
googleCloudDialogflowV2IntentMessageTableCardCell =
  GoogleCloudDialogflowV2IntentMessageTableCardCell' {_gcdvimtccText = Nothing}


-- | Required. Text in this cell.
gcdvimtccText :: Lens' GoogleCloudDialogflowV2IntentMessageTableCardCell (Maybe Text)
gcdvimtccText
  = lens _gcdvimtccText
      (\ s a -> s{_gcdvimtccText = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageTableCardCell
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageTableCardCell"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageTableCardCell'
                   <$> (o .:? "text"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageTableCardCell
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageTableCardCell'{..}
          = object (catMaybes [("text" .=) <$> _gcdvimtccText])

-- | Specifies an audio clip to be played by the client as part of the
-- response.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessagePlayAudio' smart constructor.
data GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio =
  GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio'
    { _gcdcvrmpaAudioURI                  :: !(Maybe Text)
    , _gcdcvrmpaAllowPlaybackInterruption :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmpaAudioURI'
--
-- * 'gcdcvrmpaAllowPlaybackInterruption'
googleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
    :: GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
googleCloudDialogflowCxV3beta1ResponseMessagePlayAudio =
  GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio'
    { _gcdcvrmpaAudioURI = Nothing
    , _gcdcvrmpaAllowPlaybackInterruption = Nothing
    }


-- | Required. URI of the audio clip. Dialogflow does not impose any
-- validation on this value. It is specific to the client that reads it.
gcdcvrmpaAudioURI :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio (Maybe Text)
gcdcvrmpaAudioURI
  = lens _gcdcvrmpaAudioURI
      (\ s a -> s{_gcdcvrmpaAudioURI = a})

-- | Output only. Whether the playback of this message can be interrupted by
-- the end user\'s speech and the client can then starts the next
-- Dialogflow request.
gcdcvrmpaAllowPlaybackInterruption :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio (Maybe Bool)
gcdcvrmpaAllowPlaybackInterruption
  = lens _gcdcvrmpaAllowPlaybackInterruption
      (\ s a -> s{_gcdcvrmpaAllowPlaybackInterruption = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio'
                   <$>
                   (o .:? "audioUri") <*>
                     (o .:? "allowPlaybackInterruption"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio'{..}
          = object
              (catMaybes
                 [("audioUri" .=) <$> _gcdcvrmpaAudioURI,
                  ("allowPlaybackInterruption" .=) <$>
                    _gcdcvrmpaAllowPlaybackInterruption])

-- | An **entity entry** for an associated entity type.
--
-- /See:/ 'googleCloudDialogflowV2beta1EntityTypeEntity' smart constructor.
data GoogleCloudDialogflowV2beta1EntityTypeEntity =
  GoogleCloudDialogflowV2beta1EntityTypeEntity'
    { _gcdveteValue    :: !(Maybe Text)
    , _gcdveteSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1EntityTypeEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdveteValue'
--
-- * 'gcdveteSynonyms'
googleCloudDialogflowV2beta1EntityTypeEntity
    :: GoogleCloudDialogflowV2beta1EntityTypeEntity
googleCloudDialogflowV2beta1EntityTypeEntity =
  GoogleCloudDialogflowV2beta1EntityTypeEntity'
    {_gcdveteValue = Nothing, _gcdveteSynonyms = Nothing}


-- | Required. The primary value associated with this entity entry. For
-- example, if the entity type is *vegetable*, the value could be
-- *scallions*. For \`KIND_MAP\` entity types: * A reference value to be
-- used in place of synonyms. For \`KIND_LIST\` entity types: * A string
-- that can contain references to other entity types (with or without
-- aliases).
gcdveteValue :: Lens' GoogleCloudDialogflowV2beta1EntityTypeEntity (Maybe Text)
gcdveteValue
  = lens _gcdveteValue (\ s a -> s{_gcdveteValue = a})

-- | Required. A collection of value synonyms. For example, if the entity
-- type is *vegetable*, and \`value\` is *scallions*, a synonym could be
-- *green onions*. For \`KIND_LIST\` entity types: * This collection must
-- contain exactly one synonym equal to \`value\`.
gcdveteSynonyms :: Lens' GoogleCloudDialogflowV2beta1EntityTypeEntity [Text]
gcdveteSynonyms
  = lens _gcdveteSynonyms
      (\ s a -> s{_gcdveteSynonyms = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1EntityTypeEntity
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1EntityTypeEntity"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EntityTypeEntity' <$>
                   (o .:? "value") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1EntityTypeEntity
         where
        toJSON
          GoogleCloudDialogflowV2beta1EntityTypeEntity'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdveteValue,
                  ("synonyms" .=) <$> _gcdveteSynonyms])

-- | Each intent parameter has a type, called the entity type, which dictates
-- exactly how data from an end-user expression is extracted. Dialogflow
-- provides predefined system entities that can match many common types of
-- data. For example, there are system entities for matching dates, times,
-- colors, email addresses, and so on. You can also create your own custom
-- entities for matching custom data. For example, you could define a
-- vegetable entity that can match the types of vegetables available for
-- purchase with a grocery store agent. For more information, see the
-- [Entity
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/entities-overview).
--
-- /See:/ 'googleCloudDialogflowV2EntityType' smart constructor.
data GoogleCloudDialogflowV2EntityType =
  GoogleCloudDialogflowV2EntityType'
    { _gcdvetEntities              :: !(Maybe [GoogleCloudDialogflowV2EntityTypeEntity])
    , _gcdvetKind                  :: !(Maybe GoogleCloudDialogflowV2EntityTypeKind)
    , _gcdvetName                  :: !(Maybe Text)
    , _gcdvetAutoExpansionMode     :: !(Maybe GoogleCloudDialogflowV2EntityTypeAutoExpansionMode)
    , _gcdvetDisplayName           :: !(Maybe Text)
    , _gcdvetEnableFuzzyExtraction :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2EntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvetEntities'
--
-- * 'gcdvetKind'
--
-- * 'gcdvetName'
--
-- * 'gcdvetAutoExpansionMode'
--
-- * 'gcdvetDisplayName'
--
-- * 'gcdvetEnableFuzzyExtraction'
googleCloudDialogflowV2EntityType
    :: GoogleCloudDialogflowV2EntityType
googleCloudDialogflowV2EntityType =
  GoogleCloudDialogflowV2EntityType'
    { _gcdvetEntities = Nothing
    , _gcdvetKind = Nothing
    , _gcdvetName = Nothing
    , _gcdvetAutoExpansionMode = Nothing
    , _gcdvetDisplayName = Nothing
    , _gcdvetEnableFuzzyExtraction = Nothing
    }


-- | Optional. The collection of entity entries associated with the entity
-- type.
gcdvetEntities :: Lens' GoogleCloudDialogflowV2EntityType [GoogleCloudDialogflowV2EntityTypeEntity]
gcdvetEntities
  = lens _gcdvetEntities
      (\ s a -> s{_gcdvetEntities = a})
      . _Default
      . _Coerce

-- | Required. Indicates the kind of entity type.
gcdvetKind :: Lens' GoogleCloudDialogflowV2EntityType (Maybe GoogleCloudDialogflowV2EntityTypeKind)
gcdvetKind
  = lens _gcdvetKind (\ s a -> s{_gcdvetKind = a})

-- | The unique identifier of the entity type. Required for
-- EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
-- methods. Format: \`projects\/\/agent\/entityTypes\/\`.
gcdvetName :: Lens' GoogleCloudDialogflowV2EntityType (Maybe Text)
gcdvetName
  = lens _gcdvetName (\ s a -> s{_gcdvetName = a})

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
gcdvetAutoExpansionMode :: Lens' GoogleCloudDialogflowV2EntityType (Maybe GoogleCloudDialogflowV2EntityTypeAutoExpansionMode)
gcdvetAutoExpansionMode
  = lens _gcdvetAutoExpansionMode
      (\ s a -> s{_gcdvetAutoExpansionMode = a})

-- | Required. The name of the entity type.
gcdvetDisplayName :: Lens' GoogleCloudDialogflowV2EntityType (Maybe Text)
gcdvetDisplayName
  = lens _gcdvetDisplayName
      (\ s a -> s{_gcdvetDisplayName = a})

-- | Optional. Enables fuzzy entity extraction during classification.
gcdvetEnableFuzzyExtraction :: Lens' GoogleCloudDialogflowV2EntityType (Maybe Bool)
gcdvetEnableFuzzyExtraction
  = lens _gcdvetEnableFuzzyExtraction
      (\ s a -> s{_gcdvetEnableFuzzyExtraction = a})

instance FromJSON GoogleCloudDialogflowV2EntityType
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2EntityType"
              (\ o ->
                 GoogleCloudDialogflowV2EntityType' <$>
                   (o .:? "entities" .!= mempty) <*> (o .:? "kind") <*>
                     (o .:? "name")
                     <*> (o .:? "autoExpansionMode")
                     <*> (o .:? "displayName")
                     <*> (o .:? "enableFuzzyExtraction"))

instance ToJSON GoogleCloudDialogflowV2EntityType
         where
        toJSON GoogleCloudDialogflowV2EntityType'{..}
          = object
              (catMaybes
                 [("entities" .=) <$> _gcdvetEntities,
                  ("kind" .=) <$> _gcdvetKind,
                  ("name" .=) <$> _gcdvetName,
                  ("autoExpansionMode" .=) <$>
                    _gcdvetAutoExpansionMode,
                  ("displayName" .=) <$> _gcdvetDisplayName,
                  ("enableFuzzyExtraction" .=) <$>
                    _gcdvetEnableFuzzyExtraction])

-- | Opens the given URI.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'
    { _gcdvimbcbouriaURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbouriaURI'
googleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
    :: GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
googleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction =
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'
    {_gcdvimbcbouriaURI = Nothing}


-- | Required. The HTTP or HTTPS scheme URI.
gcdvimbcbouriaURI :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction (Maybe Text)
gcdvimbcbouriaURI
  = lens _gcdvimbcbouriaURI
      (\ s a -> s{_gcdvimbcbouriaURI = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'
                   <$> (o .:? "uri"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction'{..}
          = object
              (catMaybes [("uri" .=) <$> _gcdvimbcbouriaURI])

-- | Description of which voice to use for speech synthesis.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1VoiceSelectionParams' smart constructor.
data GoogleCloudDialogflowCxV3beta1VoiceSelectionParams =
  GoogleCloudDialogflowCxV3beta1VoiceSelectionParams'
    { _gcdcvvspSsmlGender :: !(Maybe GoogleCloudDialogflowCxV3beta1VoiceSelectionParamsSsmlGender)
    , _gcdcvvspName       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1VoiceSelectionParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvvspSsmlGender'
--
-- * 'gcdcvvspName'
googleCloudDialogflowCxV3beta1VoiceSelectionParams
    :: GoogleCloudDialogflowCxV3beta1VoiceSelectionParams
googleCloudDialogflowCxV3beta1VoiceSelectionParams =
  GoogleCloudDialogflowCxV3beta1VoiceSelectionParams'
    {_gcdcvvspSsmlGender = Nothing, _gcdcvvspName = Nothing}


-- | Optional. The preferred gender of the voice. If not set, the service
-- will choose a voice based on the other parameters such as language_code
-- and name. Note that this is only a preference, not requirement. If a
-- voice of the appropriate gender is not available, the synthesizer should
-- substitute a voice with a different gender rather than failing the
-- request.
gcdcvvspSsmlGender :: Lens' GoogleCloudDialogflowCxV3beta1VoiceSelectionParams (Maybe GoogleCloudDialogflowCxV3beta1VoiceSelectionParamsSsmlGender)
gcdcvvspSsmlGender
  = lens _gcdcvvspSsmlGender
      (\ s a -> s{_gcdcvvspSsmlGender = a})

-- | Optional. The name of the voice. If not set, the service will choose a
-- voice based on the other parameters such as language_code and
-- ssml_gender.
gcdcvvspName :: Lens' GoogleCloudDialogflowCxV3beta1VoiceSelectionParams (Maybe Text)
gcdcvvspName
  = lens _gcdcvvspName (\ s a -> s{_gcdcvvspName = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1VoiceSelectionParams
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1VoiceSelectionParams"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1VoiceSelectionParams'
                   <$> (o .:? "ssmlGender") <*> (o .:? "name"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1VoiceSelectionParams
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1VoiceSelectionParams'{..}
          = object
              (catMaybes
                 [("ssmlGender" .=) <$> _gcdcvvspSsmlGender,
                  ("name" .=) <$> _gcdcvvspName])

-- | Additional parameters to be put into session parameters. To remove a
-- parameter from the session, clients should explicitly set the parameter
-- value to null. Depending on your protocol or client library language,
-- this is a map, associative array, symbol table, dictionary, or JSON
-- object composed of a collection of (MapKey, MapValue) pairs: - MapKey
-- type: string - MapKey value: parameter name - MapValue type: - If
-- parameter\'s entity type is a composite entity: map - Else: string or
-- number, depending on parameter value type - MapValue value: - If
-- parameter\'s entity type is a composite entity: map from composite
-- entity property names to property values - Else: parameter value
--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryParametersParameters' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1QueryParametersParameters =
  GoogleCloudDialogflowCxV3beta1QueryParametersParameters'
    { _gcdcvqppsAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryParametersParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqppsAddtional'
googleCloudDialogflowCxV3beta1QueryParametersParameters
    :: HashMap Text JSONValue -- ^ 'gcdcvqppsAddtional'
    -> GoogleCloudDialogflowCxV3beta1QueryParametersParameters
googleCloudDialogflowCxV3beta1QueryParametersParameters pGcdcvqppsAddtional_ =
  GoogleCloudDialogflowCxV3beta1QueryParametersParameters'
    {_gcdcvqppsAddtional = _Coerce # pGcdcvqppsAddtional_}


-- | Properties of the object.
gcdcvqppsAddtional :: Lens' GoogleCloudDialogflowCxV3beta1QueryParametersParameters (HashMap Text JSONValue)
gcdcvqppsAddtional
  = lens _gcdcvqppsAddtional
      (\ s a -> s{_gcdcvqppsAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryParametersParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryParametersParameters"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryParametersParameters'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryParametersParameters
         where
        toJSON = toJSON . _gcdcvqppsAddtional

-- | The card response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCard' smart constructor.
data GoogleCloudDialogflowV2IntentMessageCard =
  GoogleCloudDialogflowV2IntentMessageCard'
    { _gcdvimccButtons  :: !(Maybe [GoogleCloudDialogflowV2IntentMessageCardButton])
    , _gcdvimccImageURI :: !(Maybe Text)
    , _gcdvimccSubtitle :: !(Maybe Text)
    , _gcdvimccTitle    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimccButtons'
--
-- * 'gcdvimccImageURI'
--
-- * 'gcdvimccSubtitle'
--
-- * 'gcdvimccTitle'
googleCloudDialogflowV2IntentMessageCard
    :: GoogleCloudDialogflowV2IntentMessageCard
googleCloudDialogflowV2IntentMessageCard =
  GoogleCloudDialogflowV2IntentMessageCard'
    { _gcdvimccButtons = Nothing
    , _gcdvimccImageURI = Nothing
    , _gcdvimccSubtitle = Nothing
    , _gcdvimccTitle = Nothing
    }


-- | Optional. The collection of card buttons.
gcdvimccButtons :: Lens' GoogleCloudDialogflowV2IntentMessageCard [GoogleCloudDialogflowV2IntentMessageCardButton]
gcdvimccButtons
  = lens _gcdvimccButtons
      (\ s a -> s{_gcdvimccButtons = a})
      . _Default
      . _Coerce

-- | Optional. The public URI to an image file for the card.
gcdvimccImageURI :: Lens' GoogleCloudDialogflowV2IntentMessageCard (Maybe Text)
gcdvimccImageURI
  = lens _gcdvimccImageURI
      (\ s a -> s{_gcdvimccImageURI = a})

-- | Optional. The subtitle of the card.
gcdvimccSubtitle :: Lens' GoogleCloudDialogflowV2IntentMessageCard (Maybe Text)
gcdvimccSubtitle
  = lens _gcdvimccSubtitle
      (\ s a -> s{_gcdvimccSubtitle = a})

-- | Optional. The title of the card.
gcdvimccTitle :: Lens' GoogleCloudDialogflowV2IntentMessageCard (Maybe Text)
gcdvimccTitle
  = lens _gcdvimccTitle
      (\ s a -> s{_gcdvimccTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCard"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCard' <$>
                   (o .:? "buttons" .!= mempty) <*> (o .:? "imageUri")
                     <*> (o .:? "subtitle")
                     <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCard
         where
        toJSON GoogleCloudDialogflowV2IntentMessageCard'{..}
          = object
              (catMaybes
                 [("buttons" .=) <$> _gcdvimccButtons,
                  ("imageUri" .=) <$> _gcdvimccImageURI,
                  ("subtitle" .=) <$> _gcdvimccSubtitle,
                  ("title" .=) <$> _gcdvimccTitle])

-- | The list of messages or conditional cases to activate for this case.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent' smart constructor.
data GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent =
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent'
    { _gcdcvfcccccAdditionalCases :: !(Maybe GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases)
    , _gcdcvfcccccMessage         :: !(Maybe GoogleCloudDialogflowCxV3beta1ResponseMessage)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfcccccAdditionalCases'
--
-- * 'gcdcvfcccccMessage'
googleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
    :: GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
googleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent =
  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent'
    {_gcdcvfcccccAdditionalCases = Nothing, _gcdcvfcccccMessage = Nothing}


-- | Additional cases to be evaluated.
gcdcvfcccccAdditionalCases :: Lens' GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent (Maybe GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases)
gcdcvfcccccAdditionalCases
  = lens _gcdcvfcccccAdditionalCases
      (\ s a -> s{_gcdcvfcccccAdditionalCases = a})

-- | Returned message.
gcdcvfcccccMessage :: Lens' GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent (Maybe GoogleCloudDialogflowCxV3beta1ResponseMessage)
gcdcvfcccccMessage
  = lens _gcdcvfcccccMessage
      (\ s a -> s{_gcdcvfcccccMessage = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent'
                   <$> (o .:? "additionalCases") <*> (o .:? "message"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent'{..}
          = object
              (catMaybes
                 [("additionalCases" .=) <$>
                    _gcdcvfcccccAdditionalCases,
                  ("message" .=) <$> _gcdcvfcccccMessage])

-- | The response message for TestCases.ImportTestCases.
--
-- /See:/ 'googleCloudDialogflowV3alpha1ImportTestCasesResponse' smart constructor.
newtype GoogleCloudDialogflowV3alpha1ImportTestCasesResponse =
  GoogleCloudDialogflowV3alpha1ImportTestCasesResponse'
    { _gcdvitcrNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV3alpha1ImportTestCasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvitcrNames'
googleCloudDialogflowV3alpha1ImportTestCasesResponse
    :: GoogleCloudDialogflowV3alpha1ImportTestCasesResponse
googleCloudDialogflowV3alpha1ImportTestCasesResponse =
  GoogleCloudDialogflowV3alpha1ImportTestCasesResponse'
    {_gcdvitcrNames = Nothing}


-- | The unique identifiers of the new test cases. Format:
-- \`projects\/\/locations\/\/agents\/\/testCases\/\`.
gcdvitcrNames :: Lens' GoogleCloudDialogflowV3alpha1ImportTestCasesResponse [Text]
gcdvitcrNames
  = lens _gcdvitcrNames
      (\ s a -> s{_gcdvitcrNames = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV3alpha1ImportTestCasesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV3alpha1ImportTestCasesResponse"
              (\ o ->
                 GoogleCloudDialogflowV3alpha1ImportTestCasesResponse'
                   <$> (o .:? "names" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV3alpha1ImportTestCasesResponse
         where
        toJSON
          GoogleCloudDialogflowV3alpha1ImportTestCasesResponse'{..}
          = object
              (catMaybes [("names" .=) <$> _gcdvitcrNames])

-- | Represents the contents of the original request that was passed to the
-- \`[Streaming]DetectIntent\` call.
--
-- /See:/ 'googleCloudDialogflowV2OriginalDetectIntentRequest' smart constructor.
data GoogleCloudDialogflowV2OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2OriginalDetectIntentRequest'
    { _gooPayload :: !(Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload)
    , _gooVersion :: !(Maybe Text)
    , _gooSource  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2OriginalDetectIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooPayload'
--
-- * 'gooVersion'
--
-- * 'gooSource'
googleCloudDialogflowV2OriginalDetectIntentRequest
    :: GoogleCloudDialogflowV2OriginalDetectIntentRequest
googleCloudDialogflowV2OriginalDetectIntentRequest =
  GoogleCloudDialogflowV2OriginalDetectIntentRequest'
    {_gooPayload = Nothing, _gooVersion = Nothing, _gooSource = Nothing}


-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular, for the Dialogflow Phone
-- Gateway integration, this field has the form: { \"telephony\": {
-- \"caller_id\": \"+18558363987\" } } Note: The caller ID field
-- (\`caller_id\`) will be redacted for Trial Edition agents and populated
-- with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Essentials Edition
-- agents.
gooPayload :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequest (Maybe GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload)
gooPayload
  = lens _gooPayload (\ s a -> s{_gooPayload = a})

-- | Optional. The version of the protocol used for this request. This field
-- is AoG-specific.
gooVersion :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequest (Maybe Text)
gooVersion
  = lens _gooVersion (\ s a -> s{_gooVersion = a})

-- | The source of this request, e.g., \`google\`, \`facebook\`, \`slack\`.
-- It is set by Dialogflow-owned servers.
gooSource :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequest (Maybe Text)
gooSource
  = lens _gooSource (\ s a -> s{_gooSource = a})

instance FromJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2OriginalDetectIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowV2OriginalDetectIntentRequest'
                   <$>
                   (o .:? "payload") <*> (o .:? "version") <*>
                     (o .:? "source"))

instance ToJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequest
         where
        toJSON
          GoogleCloudDialogflowV2OriginalDetectIntentRequest'{..}
          = object
              (catMaybes
                 [("payload" .=) <$> _gooPayload,
                  ("version" .=) <$> _gooVersion,
                  ("source" .=) <$> _gooSource])

-- | The image response message.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageImage' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageImage =
  GoogleCloudDialogflowV2beta1IntentMessageImage'
    { _gcdvimiAccessibilityText :: !(Maybe Text)
    , _gcdvimiImageURI          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimiAccessibilityText'
--
-- * 'gcdvimiImageURI'
googleCloudDialogflowV2beta1IntentMessageImage
    :: GoogleCloudDialogflowV2beta1IntentMessageImage
googleCloudDialogflowV2beta1IntentMessageImage =
  GoogleCloudDialogflowV2beta1IntentMessageImage'
    {_gcdvimiAccessibilityText = Nothing, _gcdvimiImageURI = Nothing}


-- | A text description of the image to be used for accessibility, e.g.,
-- screen readers. Required if image_uri is set for CarouselSelect.
gcdvimiAccessibilityText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageImage (Maybe Text)
gcdvimiAccessibilityText
  = lens _gcdvimiAccessibilityText
      (\ s a -> s{_gcdvimiAccessibilityText = a})

-- | Optional. The public URI to an image file.
gcdvimiImageURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageImage (Maybe Text)
gcdvimiImageURI
  = lens _gcdvimiImageURI
      (\ s a -> s{_gcdvimiImageURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageImage
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageImage"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageImage' <$>
                   (o .:? "accessibilityText") <*> (o .:? "imageUri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageImage
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageImage'{..}
          = object
              (catMaybes
                 [("accessibilityText" .=) <$>
                    _gcdvimiAccessibilityText,
                  ("imageUri" .=) <$> _gcdvimiImageURI])

-- | Flows represents the conversation flows when you build your chatbot
-- agent. A flow consists of many pages connected by the transition routes.
-- Conversations always start with the built-in Start Flow (with an all-0
-- ID). Transition routes can direct the conversation session from the
-- current flow (parent flow) to another flow (sub flow). When the sub flow
-- is finished, Dialogflow will bring the session back to the parent flow,
-- where the sub flow is started. Usually, when a transition route is
-- followed by a matched intent, the intent will be \"consumed\". This
-- means the intent won\'t activate more transition routes. However, when
-- the followed transition route moves the conversation session into a
-- different flow, the matched intent can be carried over and to be
-- consumed in the target flow.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Flow' smart constructor.
data GoogleCloudDialogflowCxV3beta1Flow =
  GoogleCloudDialogflowCxV3beta1Flow'
    { _gcdcvfEventHandlers    :: !(Maybe [GoogleCloudDialogflowCxV3beta1EventHandler])
    , _gcdcvfNluSettings      :: !(Maybe GoogleCloudDialogflowCxV3beta1NluSettings)
    , _gcdcvfTransitionRoutes :: !(Maybe [GoogleCloudDialogflowCxV3beta1TransitionRoute])
    , _gcdcvfName             :: !(Maybe Text)
    , _gcdcvfDisplayName      :: !(Maybe Text)
    , _gcdcvfDescription      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Flow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfEventHandlers'
--
-- * 'gcdcvfNluSettings'
--
-- * 'gcdcvfTransitionRoutes'
--
-- * 'gcdcvfName'
--
-- * 'gcdcvfDisplayName'
--
-- * 'gcdcvfDescription'
googleCloudDialogflowCxV3beta1Flow
    :: GoogleCloudDialogflowCxV3beta1Flow
googleCloudDialogflowCxV3beta1Flow =
  GoogleCloudDialogflowCxV3beta1Flow'
    { _gcdcvfEventHandlers = Nothing
    , _gcdcvfNluSettings = Nothing
    , _gcdcvfTransitionRoutes = Nothing
    , _gcdcvfName = Nothing
    , _gcdcvfDisplayName = Nothing
    , _gcdcvfDescription = Nothing
    }


-- | A flow\'s event handlers serve two purposes: * They are responsible for
-- handling events (e.g. no match, webhook errors) in the flow. * They are
-- inherited by every page\'s event handlers, which can be used to handle
-- common events regardless of the current page. Event handlers defined in
-- the page have higher priority than those defined in the flow. Unlike
-- transition_routes, these handlers are evaluated on a first-match basis.
-- The first one that matches the event get executed, with the rest being
-- ignored.
gcdcvfEventHandlers :: Lens' GoogleCloudDialogflowCxV3beta1Flow [GoogleCloudDialogflowCxV3beta1EventHandler]
gcdcvfEventHandlers
  = lens _gcdcvfEventHandlers
      (\ s a -> s{_gcdcvfEventHandlers = a})
      . _Default
      . _Coerce

-- | NLU related settings of the flow.
gcdcvfNluSettings :: Lens' GoogleCloudDialogflowCxV3beta1Flow (Maybe GoogleCloudDialogflowCxV3beta1NluSettings)
gcdcvfNluSettings
  = lens _gcdcvfNluSettings
      (\ s a -> s{_gcdcvfNluSettings = a})

-- | A flow\'s transition routes serve two purposes: * They are responsible
-- for matching the user\'s first utterances in the flow. * They are
-- inherited by every page\'s transition routes and can support use cases
-- such as the user saying \"help\" or \"can I talk to a human?\", which
-- can be handled in a common way regardless of the current page.
-- Transition routes defined in the page have higher priority than those
-- defined in the flow. TransitionRoutes are evalauted in the following
-- order: * TransitionRoutes with intent specified.. * TransitionRoutes
-- with only condition specified. TransitionRoutes with intent specified
-- are inherited by pages in the flow.
gcdcvfTransitionRoutes :: Lens' GoogleCloudDialogflowCxV3beta1Flow [GoogleCloudDialogflowCxV3beta1TransitionRoute]
gcdcvfTransitionRoutes
  = lens _gcdcvfTransitionRoutes
      (\ s a -> s{_gcdcvfTransitionRoutes = a})
      . _Default
      . _Coerce

-- | The unique identifier of the flow. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
gcdcvfName :: Lens' GoogleCloudDialogflowCxV3beta1Flow (Maybe Text)
gcdcvfName
  = lens _gcdcvfName (\ s a -> s{_gcdcvfName = a})

-- | Required. The human-readable name of the flow.
gcdcvfDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1Flow (Maybe Text)
gcdcvfDisplayName
  = lens _gcdcvfDisplayName
      (\ s a -> s{_gcdcvfDisplayName = a})

-- | The description of the flow. The maximum length is 500 characters. If
-- exceeded, the request is rejected.
gcdcvfDescription :: Lens' GoogleCloudDialogflowCxV3beta1Flow (Maybe Text)
gcdcvfDescription
  = lens _gcdcvfDescription
      (\ s a -> s{_gcdcvfDescription = a})

instance FromJSON GoogleCloudDialogflowCxV3beta1Flow
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Flow"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Flow' <$>
                   (o .:? "eventHandlers" .!= mempty) <*>
                     (o .:? "nluSettings")
                     <*> (o .:? "transitionRoutes" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "displayName")
                     <*> (o .:? "description"))

instance ToJSON GoogleCloudDialogflowCxV3beta1Flow
         where
        toJSON GoogleCloudDialogflowCxV3beta1Flow'{..}
          = object
              (catMaybes
                 [("eventHandlers" .=) <$> _gcdcvfEventHandlers,
                  ("nluSettings" .=) <$> _gcdcvfNluSettings,
                  ("transitionRoutes" .=) <$> _gcdcvfTransitionRoutes,
                  ("name" .=) <$> _gcdcvfName,
                  ("displayName" .=) <$> _gcdcvfDisplayName,
                  ("description" .=) <$> _gcdcvfDescription])

-- | A session represents a conversation between a Dialogflow agent and an
-- end-user. You can create special entities, called session entities,
-- during a session. Session entities can extend or replace custom entity
-- types and only exist during the session that they were created for. All
-- session data, including session entities, is stored by Dialogflow for 20
-- minutes. For more information, see the [session entity
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/entities-session).
--
-- /See:/ 'googleCloudDialogflowV2beta1SessionEntityType' smart constructor.
data GoogleCloudDialogflowV2beta1SessionEntityType =
  GoogleCloudDialogflowV2beta1SessionEntityType'
    { _gcdvSetEntityOverrideMode :: !(Maybe GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode)
    , _gcdvSetEntities           :: !(Maybe [GoogleCloudDialogflowV2beta1EntityTypeEntity])
    , _gcdvSetName               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1SessionEntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvSetEntityOverrideMode'
--
-- * 'gcdvSetEntities'
--
-- * 'gcdvSetName'
googleCloudDialogflowV2beta1SessionEntityType
    :: GoogleCloudDialogflowV2beta1SessionEntityType
googleCloudDialogflowV2beta1SessionEntityType =
  GoogleCloudDialogflowV2beta1SessionEntityType'
    { _gcdvSetEntityOverrideMode = Nothing
    , _gcdvSetEntities = Nothing
    , _gcdvSetName = Nothing
    }


-- | Required. Indicates whether the additional data should override or
-- supplement the custom entity type definition.
gcdvSetEntityOverrideMode :: Lens' GoogleCloudDialogflowV2beta1SessionEntityType (Maybe GoogleCloudDialogflowV2beta1SessionEntityTypeEntityOverrideMode)
gcdvSetEntityOverrideMode
  = lens _gcdvSetEntityOverrideMode
      (\ s a -> s{_gcdvSetEntityOverrideMode = a})

-- | Required. The collection of entities associated with this session entity
-- type.
gcdvSetEntities :: Lens' GoogleCloudDialogflowV2beta1SessionEntityType [GoogleCloudDialogflowV2beta1EntityTypeEntity]
gcdvSetEntities
  = lens _gcdvSetEntities
      (\ s a -> s{_gcdvSetEntities = a})
      . _Default
      . _Coerce

-- | Required. The unique identifier of this session entity type. Supported
-- formats: - \`projects\/\/agent\/sessions\/\/entityTypes\/\` -
-- \`projects\/\/locations\/\/agent\/sessions\/\/entityTypes\/\` -
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\/entityTypes\/\`
-- - \`projects\/\/locations\/\/agent\/environments\/
-- \/users\/\/sessions\/\/entityTypes\/\` If \`Location ID\` is not
-- specified we assume default \'us\' location. If \`Environment ID\` is
-- not specified, we assume default \'draft\' environment. If \`User ID\`
-- is not specified, we assume default \'-\' user. \`\` must be the display
-- name of an existing entity type in the same agent that will be
-- overridden or supplemented.
gcdvSetName :: Lens' GoogleCloudDialogflowV2beta1SessionEntityType (Maybe Text)
gcdvSetName
  = lens _gcdvSetName (\ s a -> s{_gcdvSetName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1SessionEntityType
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1SessionEntityType"
              (\ o ->
                 GoogleCloudDialogflowV2beta1SessionEntityType' <$>
                   (o .:? "entityOverrideMode") <*>
                     (o .:? "entities" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON
           GoogleCloudDialogflowV2beta1SessionEntityType
         where
        toJSON
          GoogleCloudDialogflowV2beta1SessionEntityType'{..}
          = object
              (catMaybes
                 [("entityOverrideMode" .=) <$>
                    _gcdvSetEntityOverrideMode,
                  ("entities" .=) <$> _gcdvSetEntities,
                  ("name" .=) <$> _gcdvSetName])

-- | The response message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowV2ExportAgentResponse' smart constructor.
data GoogleCloudDialogflowV2ExportAgentResponse =
  GoogleCloudDialogflowV2ExportAgentResponse'
    { _gAgentURI     :: !(Maybe Text)
    , _gAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2ExportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAgentURI'
--
-- * 'gAgentContent'
googleCloudDialogflowV2ExportAgentResponse
    :: GoogleCloudDialogflowV2ExportAgentResponse
googleCloudDialogflowV2ExportAgentResponse =
  GoogleCloudDialogflowV2ExportAgentResponse'
    {_gAgentURI = Nothing, _gAgentContent = Nothing}


-- | The URI to a file containing the exported agent. This field is populated
-- only if \`agent_uri\` is specified in \`ExportAgentRequest\`.
gAgentURI :: Lens' GoogleCloudDialogflowV2ExportAgentResponse (Maybe Text)
gAgentURI
  = lens _gAgentURI (\ s a -> s{_gAgentURI = a})

-- | Zip compressed raw byte content for agent.
gAgentContent :: Lens' GoogleCloudDialogflowV2ExportAgentResponse (Maybe ByteString)
gAgentContent
  = lens _gAgentContent
      (\ s a -> s{_gAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowV2ExportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2ExportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowV2ExportAgentResponse' <$>
                   (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowV2ExportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowV2ExportAgentResponse'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gAgentURI,
                  ("agentContent" .=) <$> _gAgentContent])

-- | Optional. This field can be used to pass custom data from your webhook
-- to the integration or API caller. Arbitrary JSON objects are supported.
-- When provided, Dialogflow uses this field to populate
-- QueryResult.webhook_payload sent to the integration or API caller. This
-- field is also used by the [Google Assistant
-- integration](https:\/\/cloud.google.com\/dialogflow\/docs\/integrations\/aog)
-- for rich response messages. See the format definition at [Google
-- Assistant Dialogflow webhook
-- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
--
-- /See:/ 'googleCloudDialogflowV2WebhookResponsePayload' smart constructor.
newtype GoogleCloudDialogflowV2WebhookResponsePayload =
  GoogleCloudDialogflowV2WebhookResponsePayload'
    { _gcdvwrpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2WebhookResponsePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrpcAddtional'
googleCloudDialogflowV2WebhookResponsePayload
    :: HashMap Text JSONValue -- ^ 'gcdvwrpcAddtional'
    -> GoogleCloudDialogflowV2WebhookResponsePayload
googleCloudDialogflowV2WebhookResponsePayload pGcdvwrpcAddtional_ =
  GoogleCloudDialogflowV2WebhookResponsePayload'
    {_gcdvwrpcAddtional = _Coerce # pGcdvwrpcAddtional_}


-- | Properties of the object.
gcdvwrpcAddtional :: Lens' GoogleCloudDialogflowV2WebhookResponsePayload (HashMap Text JSONValue)
gcdvwrpcAddtional
  = lens _gcdvwrpcAddtional
      (\ s a -> s{_gcdvwrpcAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2WebhookResponsePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2WebhookResponsePayload"
              (\ o ->
                 GoogleCloudDialogflowV2WebhookResponsePayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2WebhookResponsePayload
         where
        toJSON = toJSON . _gcdvwrpcAddtional

-- | Opens the user\'s default web browser app to the specified uri If the
-- user has an app installed that is registered as the default handler for
-- the URL, then this app will be opened instead, and its icon will be used
-- in the suggested action UI.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI'
    { _gcdvimrsarsaouURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrsarsaouURI'
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI'
    {_gcdvimrsarsaouURI = Nothing}


-- | Required. The uri to open on the user device
gcdvimrsarsaouURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI (Maybe Text)
gcdvimrsarsaouURI
  = lens _gcdvimrsarsaouURI
      (\ s a -> s{_gcdvimrsarsaouURI = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI'
                   <$> (o .:? "uri"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenURI'{..}
          = object
              (catMaybes [("uri" .=) <$> _gcdvimrsarsaouURI])

-- | The suggestion chip message that allows the user to jump out to the app
-- or website associated with this agent.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'
    { _gURI             :: !(Maybe Text)
    , _gDestinationName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gURI'
--
-- * 'gDestinationName'
googleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
    :: GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
googleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'
    {_gURI = Nothing, _gDestinationName = Nothing}


-- | Required. The URI of the app or site to open when the user taps the
-- suggestion chip.
gURI :: Lens' GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion (Maybe Text)
gURI = lens _gURI (\ s a -> s{_gURI = a})

-- | Required. The name of the app or site this chip is linking to.
gDestinationName :: Lens' GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion (Maybe Text)
gDestinationName
  = lens _gDestinationName
      (\ s a -> s{_gDestinationName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'
                   <$> (o .:? "uri") <*> (o .:? "destinationName"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion'{..}
          = object
              (catMaybes
                 [("uri" .=) <$> _gURI,
                  ("destinationName" .=) <$> _gDestinationName])

-- | The response message for EntityTypes.BatchUpdateEntityTypes.
--
-- /See:/ 'googleCloudDialogflowV2BatchUpdateEntityTypesResponse' smart constructor.
newtype GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'
    { _gEntityTypes :: Maybe [GoogleCloudDialogflowV2EntityType]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gEntityTypes'
googleCloudDialogflowV2BatchUpdateEntityTypesResponse
    :: GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
googleCloudDialogflowV2BatchUpdateEntityTypesResponse =
  GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'
    {_gEntityTypes = Nothing}


-- | The collection of updated or created entity types.
gEntityTypes :: Lens' GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse [GoogleCloudDialogflowV2EntityType]
gEntityTypes
  = lens _gEntityTypes (\ s a -> s{_gEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'
                   <$> (o .:? "entityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse'{..}
          = object
              (catMaybes [("entityTypes" .=) <$> _gEntityTypes])

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
--
-- /See:/ 'googleCloudDialogflowV2QueryResultWebhookPayload' smart constructor.
newtype GoogleCloudDialogflowV2QueryResultWebhookPayload =
  GoogleCloudDialogflowV2QueryResultWebhookPayload'
    { _gcdvqrwpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2QueryResultWebhookPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrwpAddtional'
googleCloudDialogflowV2QueryResultWebhookPayload
    :: HashMap Text JSONValue -- ^ 'gcdvqrwpAddtional'
    -> GoogleCloudDialogflowV2QueryResultWebhookPayload
googleCloudDialogflowV2QueryResultWebhookPayload pGcdvqrwpAddtional_ =
  GoogleCloudDialogflowV2QueryResultWebhookPayload'
    {_gcdvqrwpAddtional = _Coerce # pGcdvqrwpAddtional_}


-- | Properties of the object.
gcdvqrwpAddtional :: Lens' GoogleCloudDialogflowV2QueryResultWebhookPayload (HashMap Text JSONValue)
gcdvqrwpAddtional
  = lens _gcdvqrwpAddtional
      (\ s a -> s{_gcdvqrwpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2QueryResultWebhookPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2QueryResultWebhookPayload"
              (\ o ->
                 GoogleCloudDialogflowV2QueryResultWebhookPayload' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2QueryResultWebhookPayload
         where
        toJSON = toJSON . _gcdvqrwpAddtional

-- | Represents configuration for a generic web service.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookGenericWebService' smart constructor.
data GoogleCloudDialogflowCxV3beta1WebhookGenericWebService =
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService'
    { _gcdcvwgwsUsername       :: !(Maybe Text)
    , _gcdcvwgwsURI            :: !(Maybe Text)
    , _gcdcvwgwsPassword       :: !(Maybe Text)
    , _gcdcvwgwsRequestHeaders :: !(Maybe GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookGenericWebService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwgwsUsername'
--
-- * 'gcdcvwgwsURI'
--
-- * 'gcdcvwgwsPassword'
--
-- * 'gcdcvwgwsRequestHeaders'
googleCloudDialogflowCxV3beta1WebhookGenericWebService
    :: GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
googleCloudDialogflowCxV3beta1WebhookGenericWebService =
  GoogleCloudDialogflowCxV3beta1WebhookGenericWebService'
    { _gcdcvwgwsUsername = Nothing
    , _gcdcvwgwsURI = Nothing
    , _gcdcvwgwsPassword = Nothing
    , _gcdcvwgwsRequestHeaders = Nothing
    }


-- | The user name for HTTP Basic authentication.
gcdcvwgwsUsername :: Lens' GoogleCloudDialogflowCxV3beta1WebhookGenericWebService (Maybe Text)
gcdcvwgwsUsername
  = lens _gcdcvwgwsUsername
      (\ s a -> s{_gcdcvwgwsUsername = a})

-- | Required. The webhook URI for receiving POST requests. It must use https
-- protocol.
gcdcvwgwsURI :: Lens' GoogleCloudDialogflowCxV3beta1WebhookGenericWebService (Maybe Text)
gcdcvwgwsURI
  = lens _gcdcvwgwsURI (\ s a -> s{_gcdcvwgwsURI = a})

-- | The password for HTTP Basic authentication.
gcdcvwgwsPassword :: Lens' GoogleCloudDialogflowCxV3beta1WebhookGenericWebService (Maybe Text)
gcdcvwgwsPassword
  = lens _gcdcvwgwsPassword
      (\ s a -> s{_gcdcvwgwsPassword = a})

-- | The HTTP request headers to send together with webhook requests.
gcdcvwgwsRequestHeaders :: Lens' GoogleCloudDialogflowCxV3beta1WebhookGenericWebService (Maybe GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceRequestHeaders)
gcdcvwgwsRequestHeaders
  = lens _gcdcvwgwsRequestHeaders
      (\ s a -> s{_gcdcvwgwsRequestHeaders = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookGenericWebService"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookGenericWebService'
                   <$>
                   (o .:? "username") <*> (o .:? "uri") <*>
                     (o .:? "password")
                     <*> (o .:? "requestHeaders"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1WebhookGenericWebService'{..}
          = object
              (catMaybes
                 [("username" .=) <$> _gcdcvwgwsUsername,
                  ("uri" .=) <$> _gcdcvwgwsURI,
                  ("password" .=) <$> _gcdcvwgwsPassword,
                  ("requestHeaders" .=) <$> _gcdcvwgwsRequestHeaders])

-- | Represents a form parameter.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FormParameter' smart constructor.
data GoogleCloudDialogflowCxV3beta1FormParameter =
  GoogleCloudDialogflowCxV3beta1FormParameter'
    { _gcdcvfpRedact       :: !(Maybe Bool)
    , _gcdcvfpEntityType   :: !(Maybe Text)
    , _gcdcvfpFillBehavior :: !(Maybe GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior)
    , _gcdcvfpRequired     :: !(Maybe Bool)
    , _gcdcvfpDisplayName  :: !(Maybe Text)
    , _gcdcvfpDefaultValue :: !(Maybe JSONValue)
    , _gcdcvfpIsList       :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FormParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfpRedact'
--
-- * 'gcdcvfpEntityType'
--
-- * 'gcdcvfpFillBehavior'
--
-- * 'gcdcvfpRequired'
--
-- * 'gcdcvfpDisplayName'
--
-- * 'gcdcvfpDefaultValue'
--
-- * 'gcdcvfpIsList'
googleCloudDialogflowCxV3beta1FormParameter
    :: GoogleCloudDialogflowCxV3beta1FormParameter
googleCloudDialogflowCxV3beta1FormParameter =
  GoogleCloudDialogflowCxV3beta1FormParameter'
    { _gcdcvfpRedact = Nothing
    , _gcdcvfpEntityType = Nothing
    , _gcdcvfpFillBehavior = Nothing
    , _gcdcvfpRequired = Nothing
    , _gcdcvfpDisplayName = Nothing
    , _gcdcvfpDefaultValue = Nothing
    , _gcdcvfpIsList = Nothing
    }


-- | Indicates whether the parameter content is logged in text and audio. If
-- it is set to true, the parameter content will be replaced to parameter
-- name in both request and response. The default value is false.
gcdcvfpRedact :: Lens' GoogleCloudDialogflowCxV3beta1FormParameter (Maybe Bool)
gcdcvfpRedact
  = lens _gcdcvfpRedact
      (\ s a -> s{_gcdcvfpRedact = a})

-- | Required. The entity type of the parameter. Format:
-- \`projects\/-\/locations\/-\/agents\/-\/entityTypes\/\` for system
-- entity types (for example,
-- \`projects\/-\/locations\/-\/agents\/-\/entityTypes\/sys.date\`), or
-- \`projects\/\/locations\/\/agents\/\/entityTypes\/\` for developer
-- entity types.
gcdcvfpEntityType :: Lens' GoogleCloudDialogflowCxV3beta1FormParameter (Maybe Text)
gcdcvfpEntityType
  = lens _gcdcvfpEntityType
      (\ s a -> s{_gcdcvfpEntityType = a})

-- | Required. Defines fill behavior for the parameter.
gcdcvfpFillBehavior :: Lens' GoogleCloudDialogflowCxV3beta1FormParameter (Maybe GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior)
gcdcvfpFillBehavior
  = lens _gcdcvfpFillBehavior
      (\ s a -> s{_gcdcvfpFillBehavior = a})

-- | Indicates whether the parameter is required. Optional parameters will
-- not trigger prompts; however, they are filled if the user specifies
-- them. Required parameters must be filled before form filling concludes.
gcdcvfpRequired :: Lens' GoogleCloudDialogflowCxV3beta1FormParameter (Maybe Bool)
gcdcvfpRequired
  = lens _gcdcvfpRequired
      (\ s a -> s{_gcdcvfpRequired = a})

-- | Required. The human-readable name of the parameter, unique within the
-- form.
gcdcvfpDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1FormParameter (Maybe Text)
gcdcvfpDisplayName
  = lens _gcdcvfpDisplayName
      (\ s a -> s{_gcdcvfpDisplayName = a})

-- | The default value of an optional parameter. If the parameter is
-- required, the default value will be ignored.
gcdcvfpDefaultValue :: Lens' GoogleCloudDialogflowCxV3beta1FormParameter (Maybe JSONValue)
gcdcvfpDefaultValue
  = lens _gcdcvfpDefaultValue
      (\ s a -> s{_gcdcvfpDefaultValue = a})

-- | Indicates whether the parameter represents a list of values.
gcdcvfpIsList :: Lens' GoogleCloudDialogflowCxV3beta1FormParameter (Maybe Bool)
gcdcvfpIsList
  = lens _gcdcvfpIsList
      (\ s a -> s{_gcdcvfpIsList = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FormParameter
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FormParameter"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FormParameter' <$>
                   (o .:? "redact") <*> (o .:? "entityType") <*>
                     (o .:? "fillBehavior")
                     <*> (o .:? "required")
                     <*> (o .:? "displayName")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "isList"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FormParameter
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FormParameter'{..}
          = object
              (catMaybes
                 [("redact" .=) <$> _gcdcvfpRedact,
                  ("entityType" .=) <$> _gcdcvfpEntityType,
                  ("fillBehavior" .=) <$> _gcdcvfpFillBehavior,
                  ("required" .=) <$> _gcdcvfpRequired,
                  ("displayName" .=) <$> _gcdcvfpDisplayName,
                  ("defaultValue" .=) <$> _gcdcvfpDefaultValue,
                  ("isList" .=) <$> _gcdcvfpIsList])

-- | Represents intent parameters.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentParameter' smart constructor.
data GoogleCloudDialogflowV2beta1IntentParameter =
  GoogleCloudDialogflowV2beta1IntentParameter'
    { _gcdvipValue                 :: !(Maybe Text)
    , _gcdvipName                  :: !(Maybe Text)
    , _gcdvipPrompts               :: !(Maybe [Text])
    , _gcdvipMandatory             :: !(Maybe Bool)
    , _gcdvipDisplayName           :: !(Maybe Text)
    , _gcdvipDefaultValue          :: !(Maybe Text)
    , _gcdvipIsList                :: !(Maybe Bool)
    , _gcdvipEntityTypeDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvipValue'
--
-- * 'gcdvipName'
--
-- * 'gcdvipPrompts'
--
-- * 'gcdvipMandatory'
--
-- * 'gcdvipDisplayName'
--
-- * 'gcdvipDefaultValue'
--
-- * 'gcdvipIsList'
--
-- * 'gcdvipEntityTypeDisplayName'
googleCloudDialogflowV2beta1IntentParameter
    :: GoogleCloudDialogflowV2beta1IntentParameter
googleCloudDialogflowV2beta1IntentParameter =
  GoogleCloudDialogflowV2beta1IntentParameter'
    { _gcdvipValue = Nothing
    , _gcdvipName = Nothing
    , _gcdvipPrompts = Nothing
    , _gcdvipMandatory = Nothing
    , _gcdvipDisplayName = Nothing
    , _gcdvipDefaultValue = Nothing
    , _gcdvipIsList = Nothing
    , _gcdvipEntityTypeDisplayName = Nothing
    }


-- | Optional. The definition of the parameter value. It can be: - a constant
-- string, - a parameter value defined as \`$parameter_name\`, - an
-- original parameter value defined as \`$parameter_name.original\`, - a
-- parameter value from some context defined as
-- \`#context_name.parameter_name\`.
gcdvipValue :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipValue
  = lens _gcdvipValue (\ s a -> s{_gcdvipValue = a})

-- | The unique identifier of this parameter.
gcdvipName :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipName
  = lens _gcdvipName (\ s a -> s{_gcdvipName = a})

-- | Optional. The collection of prompts that the agent can present to the
-- user in order to collect a value for the parameter.
gcdvipPrompts :: Lens' GoogleCloudDialogflowV2beta1IntentParameter [Text]
gcdvipPrompts
  = lens _gcdvipPrompts
      (\ s a -> s{_gcdvipPrompts = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether the parameter is required. That is, whether
-- the intent cannot be completed without collecting the parameter value.
gcdvipMandatory :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Bool)
gcdvipMandatory
  = lens _gcdvipMandatory
      (\ s a -> s{_gcdvipMandatory = a})

-- | Required. The name of the parameter.
gcdvipDisplayName :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipDisplayName
  = lens _gcdvipDisplayName
      (\ s a -> s{_gcdvipDisplayName = a})

-- | Optional. The default value to use when the \`value\` yields an empty
-- result. Default values can be extracted from contexts by using the
-- following syntax: \`#context_name.parameter_name\`.
gcdvipDefaultValue :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipDefaultValue
  = lens _gcdvipDefaultValue
      (\ s a -> s{_gcdvipDefaultValue = a})

-- | Optional. Indicates whether the parameter represents a list of values.
gcdvipIsList :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Bool)
gcdvipIsList
  = lens _gcdvipIsList (\ s a -> s{_gcdvipIsList = a})

-- | Optional. The name of the entity type, prefixed with \`\'\`, that
-- describes values of the parameter. If the parameter is required, this
-- must be provided.
gcdvipEntityTypeDisplayName :: Lens' GoogleCloudDialogflowV2beta1IntentParameter (Maybe Text)
gcdvipEntityTypeDisplayName
  = lens _gcdvipEntityTypeDisplayName
      (\ s a -> s{_gcdvipEntityTypeDisplayName = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentParameter
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentParameter"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentParameter' <$>
                   (o .:? "value") <*> (o .:? "name") <*>
                     (o .:? "prompts" .!= mempty)
                     <*> (o .:? "mandatory")
                     <*> (o .:? "displayName")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "isList")
                     <*> (o .:? "entityTypeDisplayName"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentParameter
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentParameter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdvipValue,
                  ("name" .=) <$> _gcdvipName,
                  ("prompts" .=) <$> _gcdvipPrompts,
                  ("mandatory" .=) <$> _gcdvipMandatory,
                  ("displayName" .=) <$> _gcdvipDisplayName,
                  ("defaultValue" .=) <$> _gcdvipDefaultValue,
                  ("isList" .=) <$> _gcdvipIsList,
                  ("entityTypeDisplayName" .=) <$>
                    _gcdvipEntityTypeDisplayName])

-- | Browse Carousel Card for Actions on Google.
-- https:\/\/developers.google.com\/actions\/assistant\/responses#browsing_carousel
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard =
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard'
    { _gcdvimbccItems               :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem])
    , _gcdvimbccImageDisplayOptions :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbccItems'
--
-- * 'gcdvimbccImageDisplayOptions'
googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
    :: GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
googleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard =
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard'
    {_gcdvimbccItems = Nothing, _gcdvimbccImageDisplayOptions = Nothing}


-- | Required. List of items in the Browse Carousel Card. Minimum of two
-- items, maximum of ten.
gcdvimbccItems :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard [GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem]
gcdvimbccItems
  = lens _gcdvimbccItems
      (\ s a -> s{_gcdvimbccItems = a})
      . _Default
      . _Coerce

-- | Optional. Settings for displaying the image. Applies to every image in
-- items.
gcdvimbccImageDisplayOptions :: Lens' GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions)
gcdvimbccImageDisplayOptions
  = lens _gcdvimbccImageDisplayOptions
      (\ s a -> s{_gcdvimbccImageDisplayOptions = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard'
                   <$>
                   (o .:? "items" .!= mempty) <*>
                     (o .:? "imageDisplayOptions"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _gcdvimbccItems,
                  ("imageDisplayOptions" .=) <$>
                    _gcdvimbccImageDisplayOptions])

-- | Table card for Actions on Google.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTableCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageTableCard =
  GoogleCloudDialogflowV2beta1IntentMessageTableCard'
    { _gcdvimtccImage            :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
    , _gcdvimtccButtons          :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton])
    , _gcdvimtccRows             :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageTableCardRow])
    , _gcdvimtccSubtitle         :: !(Maybe Text)
    , _gcdvimtccColumnProperties :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessageColumnProperties])
    , _gcdvimtccTitle            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTableCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtccImage'
--
-- * 'gcdvimtccButtons'
--
-- * 'gcdvimtccRows'
--
-- * 'gcdvimtccSubtitle'
--
-- * 'gcdvimtccColumnProperties'
--
-- * 'gcdvimtccTitle'
googleCloudDialogflowV2beta1IntentMessageTableCard
    :: GoogleCloudDialogflowV2beta1IntentMessageTableCard
googleCloudDialogflowV2beta1IntentMessageTableCard =
  GoogleCloudDialogflowV2beta1IntentMessageTableCard'
    { _gcdvimtccImage = Nothing
    , _gcdvimtccButtons = Nothing
    , _gcdvimtccRows = Nothing
    , _gcdvimtccSubtitle = Nothing
    , _gcdvimtccColumnProperties = Nothing
    , _gcdvimtccTitle = Nothing
    }


-- | Optional. Image which should be displayed on the card.
gcdvimtccImage :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageImage)
gcdvimtccImage
  = lens _gcdvimtccImage
      (\ s a -> s{_gcdvimtccImage = a})

-- | Optional. List of buttons for the card.
gcdvimtccButtons :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCard [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton]
gcdvimtccButtons
  = lens _gcdvimtccButtons
      (\ s a -> s{_gcdvimtccButtons = a})
      . _Default
      . _Coerce

-- | Optional. Rows in this table of data.
gcdvimtccRows :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCard [GoogleCloudDialogflowV2beta1IntentMessageTableCardRow]
gcdvimtccRows
  = lens _gcdvimtccRows
      (\ s a -> s{_gcdvimtccRows = a})
      . _Default
      . _Coerce

-- | Optional. Subtitle to the title.
gcdvimtccSubtitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCard (Maybe Text)
gcdvimtccSubtitle
  = lens _gcdvimtccSubtitle
      (\ s a -> s{_gcdvimtccSubtitle = a})

-- | Optional. Display properties for the columns in this table.
gcdvimtccColumnProperties :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCard [GoogleCloudDialogflowV2beta1IntentMessageColumnProperties]
gcdvimtccColumnProperties
  = lens _gcdvimtccColumnProperties
      (\ s a -> s{_gcdvimtccColumnProperties = a})
      . _Default
      . _Coerce

-- | Required. Title of the card.
gcdvimtccTitle :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCard (Maybe Text)
gcdvimtccTitle
  = lens _gcdvimtccTitle
      (\ s a -> s{_gcdvimtccTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTableCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTableCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTableCard'
                   <$>
                   (o .:? "image") <*> (o .:? "buttons" .!= mempty) <*>
                     (o .:? "rows" .!= mempty)
                     <*> (o .:? "subtitle")
                     <*> (o .:? "columnProperties" .!= mempty)
                     <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTableCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTableCard'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gcdvimtccImage,
                  ("buttons" .=) <$> _gcdvimtccButtons,
                  ("rows" .=) <$> _gcdvimtccRows,
                  ("subtitle" .=) <$> _gcdvimtccSubtitle,
                  ("columnProperties" .=) <$>
                    _gcdvimtccColumnProperties,
                  ("title" .=) <$> _gcdvimtccTitle])

-- | Setting a parameter value.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FulfillmentSetParameterAction' smart constructor.
data GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction =
  GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction'
    { _gcdcvfspaValue     :: !(Maybe JSONValue)
    , _gcdcvfspaParameter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfspaValue'
--
-- * 'gcdcvfspaParameter'
googleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
    :: GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
googleCloudDialogflowCxV3beta1FulfillmentSetParameterAction =
  GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction'
    {_gcdcvfspaValue = Nothing, _gcdcvfspaParameter = Nothing}


-- | The new value of the parameter. A null value clears the parameter.
gcdcvfspaValue :: Lens' GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction (Maybe JSONValue)
gcdcvfspaValue
  = lens _gcdcvfspaValue
      (\ s a -> s{_gcdcvfspaValue = a})

-- | Display name of the parameter.
gcdcvfspaParameter :: Lens' GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction (Maybe Text)
gcdcvfspaParameter
  = lens _gcdcvfspaParameter
      (\ s a -> s{_gcdcvfspaParameter = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction'
                   <$> (o .:? "value") <*> (o .:? "parameter"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdcvfspaValue,
                  ("parameter" .=) <$> _gcdcvfspaParameter])

-- | The response message for Environments.ListEnvironments.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListEnvironmentsResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse =
  GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse'
    { _gcdcvlerNextPageToken :: !(Maybe Text)
    , _gcdcvlerEnvironments  :: !(Maybe [GoogleCloudDialogflowCxV3beta1Environment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlerNextPageToken'
--
-- * 'gcdcvlerEnvironments'
googleCloudDialogflowCxV3beta1ListEnvironmentsResponse
    :: GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
googleCloudDialogflowCxV3beta1ListEnvironmentsResponse =
  GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse'
    {_gcdcvlerNextPageToken = Nothing, _gcdcvlerEnvironments = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlerNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse (Maybe Text)
gcdcvlerNextPageToken
  = lens _gcdcvlerNextPageToken
      (\ s a -> s{_gcdcvlerNextPageToken = a})

-- | The list of environments. There will be a maximum number of items
-- returned based on the page_size field in the request. The list may in
-- some cases be empty or contain fewer entries than page_size even if this
-- isn\'t the last page.
gcdcvlerEnvironments :: Lens' GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse [GoogleCloudDialogflowCxV3beta1Environment]
gcdcvlerEnvironments
  = lens _gcdcvlerEnvironments
      (\ s a -> s{_gcdcvlerEnvironments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "environments" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlerNextPageToken,
                  ("environments" .=) <$> _gcdcvlerEnvironments])

-- | The response message for SessionEntityTypes.ListSessionEntityTypes.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse =
  GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse'
    { _gcdcvlSetrNextPageToken      :: !(Maybe Text)
    , _gcdcvlSetrSessionEntityTypes :: !(Maybe [GoogleCloudDialogflowCxV3beta1SessionEntityType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlSetrNextPageToken'
--
-- * 'gcdcvlSetrSessionEntityTypes'
googleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
    :: GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
googleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse =
  GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse'
    { _gcdcvlSetrNextPageToken = Nothing
    , _gcdcvlSetrSessionEntityTypes = Nothing
    }


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlSetrNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse (Maybe Text)
gcdcvlSetrNextPageToken
  = lens _gcdcvlSetrNextPageToken
      (\ s a -> s{_gcdcvlSetrNextPageToken = a})

-- | The list of session entity types. There will be a maximum number of
-- items returned based on the page_size field in the request.
gcdcvlSetrSessionEntityTypes :: Lens' GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse [GoogleCloudDialogflowCxV3beta1SessionEntityType]
gcdcvlSetrSessionEntityTypes
  = lens _gcdcvlSetrSessionEntityTypes
      (\ s a -> s{_gcdcvlSetrSessionEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "sessionEntityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlSetrNextPageToken,
                  ("sessionEntityTypes" .=) <$>
                    _gcdcvlSetrSessionEntityTypes])

-- | Rich Business Messaging (RBM) suggested reply that the user can click
-- instead of typing in their own response.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply'
    { _gcdvimrsrText         :: !(Maybe Text)
    , _gcdvimrsrPostbackData :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrsrText'
--
-- * 'gcdvimrsrPostbackData'
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
googleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply'
    {_gcdvimrsrText = Nothing, _gcdvimrsrPostbackData = Nothing}


-- | Suggested reply text.
gcdvimrsrText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply (Maybe Text)
gcdvimrsrText
  = lens _gcdvimrsrText
      (\ s a -> s{_gcdvimrsrText = a})

-- | Opaque payload that the Dialogflow receives in a user event when the
-- user taps the suggested reply. This data will be also forwarded to
-- webhook to allow performing custom business logic.
gcdvimrsrPostbackData :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply (Maybe Text)
gcdvimrsrPostbackData
  = lens _gcdvimrsrPostbackData
      (\ s a -> s{_gcdvimrsrPostbackData = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply'
                   <$> (o .:? "text") <*> (o .:? "postbackData"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvimrsrText,
                  ("postbackData" .=) <$> _gcdvimrsrPostbackData])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'googleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse'
    { _gllorNextPageToken :: !(Maybe Text)
    , _gllorOperations    :: !(Maybe [GoogleLongrunningOperation])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gllorNextPageToken'
--
-- * 'gllorOperations'
googleLongrunningListOperationsResponse
    :: GoogleLongrunningListOperationsResponse
googleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse'
    {_gllorNextPageToken = Nothing, _gllorOperations = Nothing}


-- | The standard List next-page token.
gllorNextPageToken :: Lens' GoogleLongrunningListOperationsResponse (Maybe Text)
gllorNextPageToken
  = lens _gllorNextPageToken
      (\ s a -> s{_gllorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
gllorOperations :: Lens' GoogleLongrunningListOperationsResponse [GoogleLongrunningOperation]
gllorOperations
  = lens _gllorOperations
      (\ s a -> s{_gllorOperations = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleLongrunningListOperationsResponse
         where
        parseJSON
          = withObject
              "GoogleLongrunningListOperationsResponse"
              (\ o ->
                 GoogleLongrunningListOperationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON
           GoogleLongrunningListOperationsResponse
         where
        toJSON GoogleLongrunningListOperationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gllorNextPageToken,
                  ("operations" .=) <$> _gllorOperations])

-- | Configuration for how the filling of a parameter should be handled.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1FormParameterFillBehavior' smart constructor.
data GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior =
  GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior'
    { _gcdcvfpfbRepromptEventHandlers    :: !(Maybe [GoogleCloudDialogflowCxV3beta1EventHandler])
    , _gcdcvfpfbInitialPromptFulfillment :: !(Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfpfbRepromptEventHandlers'
--
-- * 'gcdcvfpfbInitialPromptFulfillment'
googleCloudDialogflowCxV3beta1FormParameterFillBehavior
    :: GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
googleCloudDialogflowCxV3beta1FormParameterFillBehavior =
  GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior'
    { _gcdcvfpfbRepromptEventHandlers = Nothing
    , _gcdcvfpfbInitialPromptFulfillment = Nothing
    }


-- | The handlers for parameter-level events, used to provide reprompt for
-- the parameter or transition to a different page\/flow. The supported
-- events are: * \`sys.no-match-\`, where N can be from 1 to 6 *
-- \`sys.no-match-default\` * \`sys.no-input-\`, where N can be from 1 to 6
-- * \`sys.no-input-default\` * \`sys.invalid-parameter\`
-- \`initial_prompt_fulfillment\` provides the first prompt for the
-- parameter. If the user\'s response does not fill the parameter, a
-- no-match\/no-input event will be triggered, and the fulfillment
-- associated with the \`sys.no-match-1\`\/\`sys.no-input-1\` handler (if
-- defined) will be called to provide a prompt. The
-- \`sys.no-match-2\`\/\`sys.no-input-2\` handler (if defined) will respond
-- to the next no-match\/no-input event, and so on. A
-- \`sys.no-match-default\` or \`sys.no-input-default\` handler will be
-- used to handle all following no-match\/no-input events after all
-- numbered no-match\/no-input handlers for the parameter are consumed. A
-- \`sys.invalid-parameter\` handler can be defined to handle the case
-- where the parameter values have been \`invalidated\` by webhook. For
-- example, if the user\'s response fill the parameter, however the
-- parameter was invalidated by webhook, the fulfillment associated with
-- the \`sys.invalid-parameter\` handler (if defined) will be called to
-- provide a prompt. If the event handler for the corresponding event
-- can\'t be found on the parameter, \`initial_prompt_fulfillment\` will be
-- re-prompted.
gcdcvfpfbRepromptEventHandlers :: Lens' GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior [GoogleCloudDialogflowCxV3beta1EventHandler]
gcdcvfpfbRepromptEventHandlers
  = lens _gcdcvfpfbRepromptEventHandlers
      (\ s a -> s{_gcdcvfpfbRepromptEventHandlers = a})
      . _Default
      . _Coerce

-- | Required. The fulfillment to provide the initial prompt that the agent
-- can present to the user in order to fill the parameter.
gcdcvfpfbInitialPromptFulfillment :: Lens' GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior (Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
gcdcvfpfbInitialPromptFulfillment
  = lens _gcdcvfpfbInitialPromptFulfillment
      (\ s a -> s{_gcdcvfpfbInitialPromptFulfillment = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior'
                   <$>
                   (o .:? "repromptEventHandlers" .!= mempty) <*>
                     (o .:? "initialPromptFulfillment"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior'{..}
          = object
              (catMaybes
                 [("repromptEventHandlers" .=) <$>
                    _gcdcvfpfbRepromptEventHandlers,
                  ("initialPromptFulfillment" .=) <$>
                    _gcdcvfpfbInitialPromptFulfillment])

-- | The request message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ExportAgentRequest' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ExportAgentRequest =
  GoogleCloudDialogflowCxV3beta1ExportAgentRequest'
    { _gooAgentURI :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ExportAgentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooAgentURI'
googleCloudDialogflowCxV3beta1ExportAgentRequest
    :: GoogleCloudDialogflowCxV3beta1ExportAgentRequest
googleCloudDialogflowCxV3beta1ExportAgentRequest =
  GoogleCloudDialogflowCxV3beta1ExportAgentRequest' {_gooAgentURI = Nothing}


-- | Optional. The [Google Cloud
-- Storage](https:\/\/cloud.google.com\/storage\/docs\/) URI to export the
-- agent to. The format of this URI must be \`gs:\/\/\/\`. If left
-- unspecified, the serialized agent is returned inline.
gooAgentURI :: Lens' GoogleCloudDialogflowCxV3beta1ExportAgentRequest (Maybe Text)
gooAgentURI
  = lens _gooAgentURI (\ s a -> s{_gooAgentURI = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ExportAgentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ExportAgentRequest"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ExportAgentRequest' <$>
                   (o .:? "agentUri"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ExportAgentRequest
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ExportAgentRequest'{..}
          = object
              (catMaybes [("agentUri" .=) <$> _gooAgentURI])

-- | Represents intent parameters.
--
-- /See:/ 'googleCloudDialogflowV2IntentParameter' smart constructor.
data GoogleCloudDialogflowV2IntentParameter =
  GoogleCloudDialogflowV2IntentParameter'
    { _gcdvipcValue                 :: !(Maybe Text)
    , _gcdvipcName                  :: !(Maybe Text)
    , _gcdvipcPrompts               :: !(Maybe [Text])
    , _gcdvipcMandatory             :: !(Maybe Bool)
    , _gcdvipcDisplayName           :: !(Maybe Text)
    , _gcdvipcDefaultValue          :: !(Maybe Text)
    , _gcdvipcIsList                :: !(Maybe Bool)
    , _gcdvipcEntityTypeDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvipcValue'
--
-- * 'gcdvipcName'
--
-- * 'gcdvipcPrompts'
--
-- * 'gcdvipcMandatory'
--
-- * 'gcdvipcDisplayName'
--
-- * 'gcdvipcDefaultValue'
--
-- * 'gcdvipcIsList'
--
-- * 'gcdvipcEntityTypeDisplayName'
googleCloudDialogflowV2IntentParameter
    :: GoogleCloudDialogflowV2IntentParameter
googleCloudDialogflowV2IntentParameter =
  GoogleCloudDialogflowV2IntentParameter'
    { _gcdvipcValue = Nothing
    , _gcdvipcName = Nothing
    , _gcdvipcPrompts = Nothing
    , _gcdvipcMandatory = Nothing
    , _gcdvipcDisplayName = Nothing
    , _gcdvipcDefaultValue = Nothing
    , _gcdvipcIsList = Nothing
    , _gcdvipcEntityTypeDisplayName = Nothing
    }


-- | Optional. The definition of the parameter value. It can be: - a constant
-- string, - a parameter value defined as \`$parameter_name\`, - an
-- original parameter value defined as \`$parameter_name.original\`, - a
-- parameter value from some context defined as
-- \`#context_name.parameter_name\`.
gcdvipcValue :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcValue
  = lens _gcdvipcValue (\ s a -> s{_gcdvipcValue = a})

-- | The unique identifier of this parameter.
gcdvipcName :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcName
  = lens _gcdvipcName (\ s a -> s{_gcdvipcName = a})

-- | Optional. The collection of prompts that the agent can present to the
-- user in order to collect a value for the parameter.
gcdvipcPrompts :: Lens' GoogleCloudDialogflowV2IntentParameter [Text]
gcdvipcPrompts
  = lens _gcdvipcPrompts
      (\ s a -> s{_gcdvipcPrompts = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether the parameter is required. That is, whether
-- the intent cannot be completed without collecting the parameter value.
gcdvipcMandatory :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Bool)
gcdvipcMandatory
  = lens _gcdvipcMandatory
      (\ s a -> s{_gcdvipcMandatory = a})

-- | Required. The name of the parameter.
gcdvipcDisplayName :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcDisplayName
  = lens _gcdvipcDisplayName
      (\ s a -> s{_gcdvipcDisplayName = a})

-- | Optional. The default value to use when the \`value\` yields an empty
-- result. Default values can be extracted from contexts by using the
-- following syntax: \`#context_name.parameter_name\`.
gcdvipcDefaultValue :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcDefaultValue
  = lens _gcdvipcDefaultValue
      (\ s a -> s{_gcdvipcDefaultValue = a})

-- | Optional. Indicates whether the parameter represents a list of values.
gcdvipcIsList :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Bool)
gcdvipcIsList
  = lens _gcdvipcIsList
      (\ s a -> s{_gcdvipcIsList = a})

-- | Optional. The name of the entity type, prefixed with \`\'\`, that
-- describes values of the parameter. If the parameter is required, this
-- must be provided.
gcdvipcEntityTypeDisplayName :: Lens' GoogleCloudDialogflowV2IntentParameter (Maybe Text)
gcdvipcEntityTypeDisplayName
  = lens _gcdvipcEntityTypeDisplayName
      (\ s a -> s{_gcdvipcEntityTypeDisplayName = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentParameter
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2IntentParameter"
              (\ o ->
                 GoogleCloudDialogflowV2IntentParameter' <$>
                   (o .:? "value") <*> (o .:? "name") <*>
                     (o .:? "prompts" .!= mempty)
                     <*> (o .:? "mandatory")
                     <*> (o .:? "displayName")
                     <*> (o .:? "defaultValue")
                     <*> (o .:? "isList")
                     <*> (o .:? "entityTypeDisplayName"))

instance ToJSON
           GoogleCloudDialogflowV2IntentParameter
         where
        toJSON GoogleCloudDialogflowV2IntentParameter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gcdvipcValue,
                  ("name" .=) <$> _gcdvipcName,
                  ("prompts" .=) <$> _gcdvipcPrompts,
                  ("mandatory" .=) <$> _gcdvipcMandatory,
                  ("displayName" .=) <$> _gcdvipcDisplayName,
                  ("defaultValue" .=) <$> _gcdvipcDefaultValue,
                  ("isList" .=) <$> _gcdvipcIsList,
                  ("entityTypeDisplayName" .=) <$>
                    _gcdvipcEntityTypeDisplayName])

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResultWebhookPayload' smart constructor.
newtype GoogleCloudDialogflowV2beta1QueryResultWebhookPayload =
  GoogleCloudDialogflowV2beta1QueryResultWebhookPayload'
    { _gcdvqrwpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResultWebhookPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvqrwpcAddtional'
googleCloudDialogflowV2beta1QueryResultWebhookPayload
    :: HashMap Text JSONValue -- ^ 'gcdvqrwpcAddtional'
    -> GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
googleCloudDialogflowV2beta1QueryResultWebhookPayload pGcdvqrwpcAddtional_ =
  GoogleCloudDialogflowV2beta1QueryResultWebhookPayload'
    {_gcdvqrwpcAddtional = _Coerce # pGcdvqrwpcAddtional_}


-- | Properties of the object.
gcdvqrwpcAddtional :: Lens' GoogleCloudDialogflowV2beta1QueryResultWebhookPayload (HashMap Text JSONValue)
gcdvqrwpcAddtional
  = lens _gcdvqrwpcAddtional
      (\ s a -> s{_gcdvqrwpcAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResultWebhookPayload"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResultWebhookPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResultWebhookPayload
         where
        toJSON = toJSON . _gcdvqrwpcAddtional

-- | Represents a part of a training phrase.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentTrainingPhrasePart' smart constructor.
data GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'
    { _gcdvitppcText        :: !(Maybe Text)
    , _gcdvitppcUserDefined :: !(Maybe Bool)
    , _gcdvitppcEntityType  :: !(Maybe Text)
    , _gcdvitppcAlias       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvitppcText'
--
-- * 'gcdvitppcUserDefined'
--
-- * 'gcdvitppcEntityType'
--
-- * 'gcdvitppcAlias'
googleCloudDialogflowV2beta1IntentTrainingPhrasePart
    :: GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
googleCloudDialogflowV2beta1IntentTrainingPhrasePart =
  GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'
    { _gcdvitppcText = Nothing
    , _gcdvitppcUserDefined = Nothing
    , _gcdvitppcEntityType = Nothing
    , _gcdvitppcAlias = Nothing
    }


-- | Required. The text for this part.
gcdvitppcText :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Text)
gcdvitppcText
  = lens _gcdvitppcText
      (\ s a -> s{_gcdvitppcText = a})

-- | Optional. Indicates whether the text was manually annotated. This field
-- is set to true when the Dialogflow Console is used to manually annotate
-- the part. When creating an annotated part with the API, you must set
-- this to true.
gcdvitppcUserDefined :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Bool)
gcdvitppcUserDefined
  = lens _gcdvitppcUserDefined
      (\ s a -> s{_gcdvitppcUserDefined = a})

-- | Optional. The entity type name prefixed with \`\'\`. This field is
-- required for annotated parts of the training phrase.
gcdvitppcEntityType :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Text)
gcdvitppcEntityType
  = lens _gcdvitppcEntityType
      (\ s a -> s{_gcdvitppcEntityType = a})

-- | Optional. The parameter name for the value extracted from the annotated
-- part of the example. This field is required for annotated parts of the
-- training phrase.
gcdvitppcAlias :: Lens' GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart (Maybe Text)
gcdvitppcAlias
  = lens _gcdvitppcAlias
      (\ s a -> s{_gcdvitppcAlias = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'
                   <$>
                   (o .:? "text") <*> (o .:? "userDefined") <*>
                     (o .:? "entityType")
                     <*> (o .:? "alias"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdvitppcText,
                  ("userDefined" .=) <$> _gcdvitppcUserDefined,
                  ("entityType" .=) <$> _gcdvitppcEntityType,
                  ("alias" .=) <$> _gcdvitppcAlias])

-- | An excluded entity phrase that should not be matched.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase =
  GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase'
    { _gcdcvetepValue :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvetepValue'
googleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
    :: GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
googleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase =
  GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase'
    {_gcdcvetepValue = Nothing}


-- | Required. The word or phrase to be excluded.
gcdcvetepValue :: Lens' GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase (Maybe Text)
gcdcvetepValue
  = lens _gcdcvetepValue
      (\ s a -> s{_gcdcvetepValue = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase'
                   <$> (o .:? "value"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase'{..}
          = object
              (catMaybes [("value" .=) <$> _gcdcvetepValue])

-- | Browse Carousel Card for Actions on Google.
-- https:\/\/developers.google.com\/actions\/assistant\/responses#browsing_carousel
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBrowseCarouselCard' smart constructor.
data GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard =
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard'
    { _gItems               :: !(Maybe [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem])
    , _gImageDisplayOptions :: !(Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gItems'
--
-- * 'gImageDisplayOptions'
googleCloudDialogflowV2IntentMessageBrowseCarouselCard
    :: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
googleCloudDialogflowV2IntentMessageBrowseCarouselCard =
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard'
    {_gItems = Nothing, _gImageDisplayOptions = Nothing}


-- | Required. List of items in the Browse Carousel Card. Minimum of two
-- items, maximum of ten.
gItems :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem]
gItems
  = lens _gItems (\ s a -> s{_gItems = a}) . _Default .
      _Coerce

-- | Optional. Settings for displaying the image. Applies to every image in
-- items.
gImageDisplayOptions :: Lens' GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard (Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions)
gImageDisplayOptions
  = lens _gImageDisplayOptions
      (\ s a -> s{_gImageDisplayOptions = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard'
                   <$>
                   (o .:? "items" .!= mempty) <*>
                     (o .:? "imageDisplayOptions"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _gItems,
                  ("imageDisplayOptions" .=) <$>
                    _gImageDisplayOptions])

-- | Represents the query input. It can contain either: 1. A conversational
-- query in the form of text. 2. An intent query that specifies which
-- intent to trigger.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryInput' smart constructor.
data GoogleCloudDialogflowCxV3beta1QueryInput =
  GoogleCloudDialogflowCxV3beta1QueryInput'
    { _gcdcvqiEvent        :: !(Maybe GoogleCloudDialogflowCxV3beta1EventInput)
    , _gcdcvqiLanguageCode :: !(Maybe Text)
    , _gcdcvqiText         :: !(Maybe GoogleCloudDialogflowCxV3beta1TextInput)
    , _gcdcvqiIntent       :: !(Maybe GoogleCloudDialogflowCxV3beta1IntentInput)
    , _gcdcvqiAudio        :: !(Maybe GoogleCloudDialogflowCxV3beta1AudioInput)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqiEvent'
--
-- * 'gcdcvqiLanguageCode'
--
-- * 'gcdcvqiText'
--
-- * 'gcdcvqiIntent'
--
-- * 'gcdcvqiAudio'
googleCloudDialogflowCxV3beta1QueryInput
    :: GoogleCloudDialogflowCxV3beta1QueryInput
googleCloudDialogflowCxV3beta1QueryInput =
  GoogleCloudDialogflowCxV3beta1QueryInput'
    { _gcdcvqiEvent = Nothing
    , _gcdcvqiLanguageCode = Nothing
    , _gcdcvqiText = Nothing
    , _gcdcvqiIntent = Nothing
    , _gcdcvqiAudio = Nothing
    }


-- | The event to be triggered.
gcdcvqiEvent :: Lens' GoogleCloudDialogflowCxV3beta1QueryInput (Maybe GoogleCloudDialogflowCxV3beta1EventInput)
gcdcvqiEvent
  = lens _gcdcvqiEvent (\ s a -> s{_gcdcvqiEvent = a})

-- | Required. The language of the input. See [Language
-- Support](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/language)
-- for a list of the currently supported language codes. Note that queries
-- in the same session do not necessarily need to specify the same
-- language.
gcdcvqiLanguageCode :: Lens' GoogleCloudDialogflowCxV3beta1QueryInput (Maybe Text)
gcdcvqiLanguageCode
  = lens _gcdcvqiLanguageCode
      (\ s a -> s{_gcdcvqiLanguageCode = a})

-- | The natural language text to be processed.
gcdcvqiText :: Lens' GoogleCloudDialogflowCxV3beta1QueryInput (Maybe GoogleCloudDialogflowCxV3beta1TextInput)
gcdcvqiText
  = lens _gcdcvqiText (\ s a -> s{_gcdcvqiText = a})

-- | The intent to be triggered.
gcdcvqiIntent :: Lens' GoogleCloudDialogflowCxV3beta1QueryInput (Maybe GoogleCloudDialogflowCxV3beta1IntentInput)
gcdcvqiIntent
  = lens _gcdcvqiIntent
      (\ s a -> s{_gcdcvqiIntent = a})

-- | The natural language speech audio to be processed.
gcdcvqiAudio :: Lens' GoogleCloudDialogflowCxV3beta1QueryInput (Maybe GoogleCloudDialogflowCxV3beta1AudioInput)
gcdcvqiAudio
  = lens _gcdcvqiAudio (\ s a -> s{_gcdcvqiAudio = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryInput
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryInput"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryInput' <$>
                   (o .:? "event") <*> (o .:? "languageCode") <*>
                     (o .:? "text")
                     <*> (o .:? "intent")
                     <*> (o .:? "audio"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryInput
         where
        toJSON GoogleCloudDialogflowCxV3beta1QueryInput'{..}
          = object
              (catMaybes
                 [("event" .=) <$> _gcdcvqiEvent,
                  ("languageCode" .=) <$> _gcdcvqiLanguageCode,
                  ("text" .=) <$> _gcdcvqiText,
                  ("intent" .=) <$> _gcdcvqiIntent,
                  ("audio" .=) <$> _gcdcvqiAudio])

-- | Transfers the call in Telephony Gateway.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'
    { _gcdvimttcPhoneNumber :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimttcPhoneNumber'
googleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
    :: GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
googleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall =
  GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'
    {_gcdvimttcPhoneNumber = Nothing}


-- | Required. The phone number to transfer the call to in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164). We currently only
-- allow transferring to US numbers (+1xxxyyyzzzz).
gcdvimttcPhoneNumber :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall (Maybe Text)
gcdvimttcPhoneNumber
  = lens _gcdvimttcPhoneNumber
      (\ s a -> s{_gcdvimttcPhoneNumber = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'
                   <$> (o .:? "phoneNumber"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall'{..}
          = object
              (catMaybes
                 [("phoneNumber" .=) <$> _gcdvimttcPhoneNumber])

-- | Rich Business Messaging (RBM) suggestion. Suggestions allow user to
-- easily select\/click a predefined response or perform an action (like
-- opening a web uri).
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmSuggestion' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion'
    { _gcdvimrsReply  :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply)
    , _gcdvimrsAction :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrsReply'
--
-- * 'gcdvimrsAction'
googleCloudDialogflowV2beta1IntentMessageRbmSuggestion
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
googleCloudDialogflowV2beta1IntentMessageRbmSuggestion =
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion'
    {_gcdvimrsReply = Nothing, _gcdvimrsAction = Nothing}


-- | Predefined replies for user to select instead of typing
gcdvimrsReply :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply)
gcdvimrsReply
  = lens _gcdvimrsReply
      (\ s a -> s{_gcdvimrsReply = a})

-- | Predefined client side actions that user can choose
gcdvimrsAction :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction)
gcdvimrsAction
  = lens _gcdvimrsAction
      (\ s a -> s{_gcdvimrsAction = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion'
                   <$> (o .:? "reply") <*> (o .:? "action"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion'{..}
          = object
              (catMaybes
                 [("reply" .=) <$> _gcdvimrsReply,
                  ("action" .=) <$> _gcdvimrsAction])

-- | A text or ssml response that is preferentially used for TTS output audio
-- synthesis, as described in the comment on the ResponseMessage message.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText' smart constructor.
data GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText =
  GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText'
    { _gcdcvrmoatText                      :: !(Maybe Text)
    , _gcdcvrmoatSsml                      :: !(Maybe Text)
    , _gcdcvrmoatAllowPlaybackInterruption :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmoatText'
--
-- * 'gcdcvrmoatSsml'
--
-- * 'gcdcvrmoatAllowPlaybackInterruption'
googleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
    :: GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
googleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText =
  GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText'
    { _gcdcvrmoatText = Nothing
    , _gcdcvrmoatSsml = Nothing
    , _gcdcvrmoatAllowPlaybackInterruption = Nothing
    }


-- | The raw text to be synthesized.
gcdcvrmoatText :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText (Maybe Text)
gcdcvrmoatText
  = lens _gcdcvrmoatText
      (\ s a -> s{_gcdcvrmoatText = a})

-- | The SSML text to be synthesized. For more information, see
-- [SSML](\/speech\/text-to-speech\/docs\/ssml).
gcdcvrmoatSsml :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText (Maybe Text)
gcdcvrmoatSsml
  = lens _gcdcvrmoatSsml
      (\ s a -> s{_gcdcvrmoatSsml = a})

-- | Output only. Whether the playback of this message can be interrupted by
-- the end user\'s speech and the client can then starts the next
-- Dialogflow request.
gcdcvrmoatAllowPlaybackInterruption :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText (Maybe Bool)
gcdcvrmoatAllowPlaybackInterruption
  = lens _gcdcvrmoatAllowPlaybackInterruption
      (\ s a ->
         s{_gcdcvrmoatAllowPlaybackInterruption = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText'
                   <$>
                   (o .:? "text") <*> (o .:? "ssml") <*>
                     (o .:? "allowPlaybackInterruption"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gcdcvrmoatText,
                  ("ssml" .=) <$> _gcdcvrmoatSsml,
                  ("allowPlaybackInterruption" .=) <$>
                    _gcdcvrmoatAllowPlaybackInterruption])

-- | The response message for Agents.ExportAgent.
--
-- /See:/ 'googleCloudDialogflowV2beta1ExportAgentResponse' smart constructor.
data GoogleCloudDialogflowV2beta1ExportAgentResponse =
  GoogleCloudDialogflowV2beta1ExportAgentResponse'
    { _gcdvearcAgentURI     :: !(Maybe Text)
    , _gcdvearcAgentContent :: !(Maybe Bytes)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1ExportAgentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvearcAgentURI'
--
-- * 'gcdvearcAgentContent'
googleCloudDialogflowV2beta1ExportAgentResponse
    :: GoogleCloudDialogflowV2beta1ExportAgentResponse
googleCloudDialogflowV2beta1ExportAgentResponse =
  GoogleCloudDialogflowV2beta1ExportAgentResponse'
    {_gcdvearcAgentURI = Nothing, _gcdvearcAgentContent = Nothing}


-- | The URI to a file containing the exported agent. This field is populated
-- only if \`agent_uri\` is specified in \`ExportAgentRequest\`.
gcdvearcAgentURI :: Lens' GoogleCloudDialogflowV2beta1ExportAgentResponse (Maybe Text)
gcdvearcAgentURI
  = lens _gcdvearcAgentURI
      (\ s a -> s{_gcdvearcAgentURI = a})

-- | Zip compressed raw byte content for agent.
gcdvearcAgentContent :: Lens' GoogleCloudDialogflowV2beta1ExportAgentResponse (Maybe ByteString)
gcdvearcAgentContent
  = lens _gcdvearcAgentContent
      (\ s a -> s{_gcdvearcAgentContent = a})
      . mapping _Bytes

instance FromJSON
           GoogleCloudDialogflowV2beta1ExportAgentResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1ExportAgentResponse"
              (\ o ->
                 GoogleCloudDialogflowV2beta1ExportAgentResponse' <$>
                   (o .:? "agentUri") <*> (o .:? "agentContent"))

instance ToJSON
           GoogleCloudDialogflowV2beta1ExportAgentResponse
         where
        toJSON
          GoogleCloudDialogflowV2beta1ExportAgentResponse'{..}
          = object
              (catMaybes
                 [("agentUri" .=) <$> _gcdvearcAgentURI,
                  ("agentContent" .=) <$> _gcdvearcAgentContent])

-- | The result of sentiment analysis. Sentiment analysis inspects user input
-- and identifies the prevailing subjective opinion, especially to
-- determine a user\'s attitude as positive, negative, or neutral.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1SentimentAnalysisResult' smart constructor.
data GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult =
  GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult'
    { _gcdcvsarScore     :: !(Maybe (Textual Double))
    , _gcdcvsarMagnitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvsarScore'
--
-- * 'gcdcvsarMagnitude'
googleCloudDialogflowCxV3beta1SentimentAnalysisResult
    :: GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult
googleCloudDialogflowCxV3beta1SentimentAnalysisResult =
  GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult'
    {_gcdcvsarScore = Nothing, _gcdcvsarMagnitude = Nothing}


-- | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
-- sentiment).
gcdcvsarScore :: Lens' GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult (Maybe Double)
gcdcvsarScore
  = lens _gcdcvsarScore
      (\ s a -> s{_gcdcvsarScore = a})
      . mapping _Coerce

-- | A non-negative number in the [0, +inf) range, which represents the
-- absolute magnitude of sentiment, regardless of score (positive or
-- negative).
gcdcvsarMagnitude :: Lens' GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult (Maybe Double)
gcdcvsarMagnitude
  = lens _gcdcvsarMagnitude
      (\ s a -> s{_gcdcvsarMagnitude = a})
      . mapping _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult'
                   <$> (o .:? "score") <*> (o .:? "magnitude"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gcdcvsarScore,
                  ("magnitude" .=) <$> _gcdcvsarMagnitude])

-- | Optional. This field is set to the value of the
-- \`QueryParameters.payload\` field passed in the request. Some
-- integrations that query a Dialogflow agent may provide additional
-- information in the payload. In particular, for the Dialogflow Phone
-- Gateway integration, this field has the form: { \"telephony\": {
-- \"caller_id\": \"+18558363987\" } } Note: The caller ID field
-- (\`caller_id\`) will be redacted for Trial Edition agents and populated
-- with the caller ID in [E.164
-- format](https:\/\/en.wikipedia.org\/wiki\/E.164) for Essentials Edition
-- agents.
--
-- /See:/ 'googleCloudDialogflowV2OriginalDetectIntentRequestPayload' smart constructor.
newtype GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload =
  GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload'
    { _gcdvodirpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvodirpcAddtional'
googleCloudDialogflowV2OriginalDetectIntentRequestPayload
    :: HashMap Text JSONValue -- ^ 'gcdvodirpcAddtional'
    -> GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
googleCloudDialogflowV2OriginalDetectIntentRequestPayload pGcdvodirpcAddtional_ =
  GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload'
    {_gcdvodirpcAddtional = _Coerce # pGcdvodirpcAddtional_}


-- | Properties of the object.
gcdvodirpcAddtional :: Lens' GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload (HashMap Text JSONValue)
gcdvodirpcAddtional
  = lens _gcdvodirpcAddtional
      (\ s a -> s{_gcdvodirpcAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload"
              (\ o ->
                 GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowV2OriginalDetectIntentRequestPayload
         where
        toJSON = toJSON . _gcdvodirpcAddtional

-- | A session represents a conversation between a Dialogflow agent and an
-- end-user. You can create special entities, called session entities,
-- during a session. Session entities can extend or replace custom entity
-- types and only exist during the session that they were created for. All
-- session data, including session entities, is stored by Dialogflow for 20
-- minutes. For more information, see the [session entity
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/entities-session).
--
-- /See:/ 'googleCloudDialogflowV2SessionEntityType' smart constructor.
data GoogleCloudDialogflowV2SessionEntityType =
  GoogleCloudDialogflowV2SessionEntityType'
    { _gcdvSetcEntityOverrideMode :: !(Maybe GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode)
    , _gcdvSetcEntities           :: !(Maybe [GoogleCloudDialogflowV2EntityTypeEntity])
    , _gcdvSetcName               :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2SessionEntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvSetcEntityOverrideMode'
--
-- * 'gcdvSetcEntities'
--
-- * 'gcdvSetcName'
googleCloudDialogflowV2SessionEntityType
    :: GoogleCloudDialogflowV2SessionEntityType
googleCloudDialogflowV2SessionEntityType =
  GoogleCloudDialogflowV2SessionEntityType'
    { _gcdvSetcEntityOverrideMode = Nothing
    , _gcdvSetcEntities = Nothing
    , _gcdvSetcName = Nothing
    }


-- | Required. Indicates whether the additional data should override or
-- supplement the custom entity type definition.
gcdvSetcEntityOverrideMode :: Lens' GoogleCloudDialogflowV2SessionEntityType (Maybe GoogleCloudDialogflowV2SessionEntityTypeEntityOverrideMode)
gcdvSetcEntityOverrideMode
  = lens _gcdvSetcEntityOverrideMode
      (\ s a -> s{_gcdvSetcEntityOverrideMode = a})

-- | Required. The collection of entities associated with this session entity
-- type.
gcdvSetcEntities :: Lens' GoogleCloudDialogflowV2SessionEntityType [GoogleCloudDialogflowV2EntityTypeEntity]
gcdvSetcEntities
  = lens _gcdvSetcEntities
      (\ s a -> s{_gcdvSetcEntities = a})
      . _Default
      . _Coerce

-- | Required. The unique identifier of this session entity type. Format:
-- \`projects\/\/agent\/sessions\/\/entityTypes\/\`, or
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\/entityTypes\/\`.
-- If \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. If \`User ID\` is not specified, we assume default \'-\'
-- user. \`\` must be the display name of an existing entity type in the
-- same agent that will be overridden or supplemented.
gcdvSetcName :: Lens' GoogleCloudDialogflowV2SessionEntityType (Maybe Text)
gcdvSetcName
  = lens _gcdvSetcName (\ s a -> s{_gcdvSetcName = a})

instance FromJSON
           GoogleCloudDialogflowV2SessionEntityType
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2SessionEntityType"
              (\ o ->
                 GoogleCloudDialogflowV2SessionEntityType' <$>
                   (o .:? "entityOverrideMode") <*>
                     (o .:? "entities" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON
           GoogleCloudDialogflowV2SessionEntityType
         where
        toJSON GoogleCloudDialogflowV2SessionEntityType'{..}
          = object
              (catMaybes
                 [("entityOverrideMode" .=) <$>
                    _gcdvSetcEntityOverrideMode,
                  ("entities" .=) <$> _gcdvSetcEntities,
                  ("name" .=) <$> _gcdvSetcName])

-- | The collection of parameters extracted from the query. Depending on your
-- protocol or client library language, this is a map, associative array,
-- symbol table, dictionary, or JSON object composed of a collection of
-- (MapKey, MapValue) pairs: - MapKey type: string - MapKey value:
-- parameter name - MapValue type: - If parameter\'s entity type is a
-- composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
--
-- /See:/ 'googleCloudDialogflowCxV3beta1MatchParameters' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1MatchParameters =
  GoogleCloudDialogflowCxV3beta1MatchParameters'
    { _gcdcvmpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1MatchParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvmpAddtional'
googleCloudDialogflowCxV3beta1MatchParameters
    :: HashMap Text JSONValue -- ^ 'gcdcvmpAddtional'
    -> GoogleCloudDialogflowCxV3beta1MatchParameters
googleCloudDialogflowCxV3beta1MatchParameters pGcdcvmpAddtional_ =
  GoogleCloudDialogflowCxV3beta1MatchParameters'
    {_gcdcvmpAddtional = _Coerce # pGcdcvmpAddtional_}


-- | Properties of the object.
gcdcvmpAddtional :: Lens' GoogleCloudDialogflowCxV3beta1MatchParameters (HashMap Text JSONValue)
gcdcvmpAddtional
  = lens _gcdcvmpAddtional
      (\ s a -> s{_gcdcvmpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1MatchParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1MatchParameters"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1MatchParameters' <$>
                   (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1MatchParameters
         where
        toJSON = toJSON . _gcdcvmpAddtional

-- | The collected session parameters. Depending on your protocol or client
-- library language, this is a map, associative array, symbol table,
-- dictionary, or JSON object composed of a collection of (MapKey,
-- MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
-- MapValue type: - If parameter\'s entity type is a composite entity: map
-- - Else: string or number, depending on parameter value type - MapValue
-- value: - If parameter\'s entity type is a composite entity: map from
-- composite entity property names to property values - Else: parameter
-- value
--
-- /See:/ 'googleCloudDialogflowCxV3beta1QueryResultParameters' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1QueryResultParameters =
  GoogleCloudDialogflowCxV3beta1QueryResultParameters'
    { _gcdcvqrpAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1QueryResultParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvqrpAddtional'
googleCloudDialogflowCxV3beta1QueryResultParameters
    :: HashMap Text JSONValue -- ^ 'gcdcvqrpAddtional'
    -> GoogleCloudDialogflowCxV3beta1QueryResultParameters
googleCloudDialogflowCxV3beta1QueryResultParameters pGcdcvqrpAddtional_ =
  GoogleCloudDialogflowCxV3beta1QueryResultParameters'
    {_gcdcvqrpAddtional = _Coerce # pGcdcvqrpAddtional_}


-- | Properties of the object.
gcdcvqrpAddtional :: Lens' GoogleCloudDialogflowCxV3beta1QueryResultParameters (HashMap Text JSONValue)
gcdcvqrpAddtional
  = lens _gcdcvqrpAddtional
      (\ s a -> s{_gcdcvqrpAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1QueryResultParameters
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1QueryResultParameters"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1QueryResultParameters'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1QueryResultParameters
         where
        toJSON = toJSON . _gcdcvqrpAddtional

-- | Cell of TableCardRow.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageTableCardCell' smart constructor.
newtype GoogleCloudDialogflowV2beta1IntentMessageTableCardCell =
  GoogleCloudDialogflowV2beta1IntentMessageTableCardCell'
    { _gcdvimtcccText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageTableCardCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimtcccText'
googleCloudDialogflowV2beta1IntentMessageTableCardCell
    :: GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
googleCloudDialogflowV2beta1IntentMessageTableCardCell =
  GoogleCloudDialogflowV2beta1IntentMessageTableCardCell'
    {_gcdvimtcccText = Nothing}


-- | Required. Text in this cell.
gcdvimtcccText :: Lens' GoogleCloudDialogflowV2beta1IntentMessageTableCardCell (Maybe Text)
gcdvimtcccText
  = lens _gcdvimtcccText
      (\ s a -> s{_gcdvimtcccText = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageTableCardCell"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageTableCardCell'
                   <$> (o .:? "text"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageTableCardCell'{..}
          = object
              (catMaybes [("text" .=) <$> _gcdvimtcccText])

-- | Column properties for TableCard.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageColumnProperties' smart constructor.
data GoogleCloudDialogflowV2IntentMessageColumnProperties =
  GoogleCloudDialogflowV2IntentMessageColumnProperties'
    { _gHeader              :: !(Maybe Text)
    , _gHorizontalAlignment :: !(Maybe GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageColumnProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gHeader'
--
-- * 'gHorizontalAlignment'
googleCloudDialogflowV2IntentMessageColumnProperties
    :: GoogleCloudDialogflowV2IntentMessageColumnProperties
googleCloudDialogflowV2IntentMessageColumnProperties =
  GoogleCloudDialogflowV2IntentMessageColumnProperties'
    {_gHeader = Nothing, _gHorizontalAlignment = Nothing}


-- | Required. Column heading.
gHeader :: Lens' GoogleCloudDialogflowV2IntentMessageColumnProperties (Maybe Text)
gHeader = lens _gHeader (\ s a -> s{_gHeader = a})

-- | Optional. Defines text alignment for all cells in this column.
gHorizontalAlignment :: Lens' GoogleCloudDialogflowV2IntentMessageColumnProperties (Maybe GoogleCloudDialogflowV2IntentMessageColumnPropertiesHorizontalAlignment)
gHorizontalAlignment
  = lens _gHorizontalAlignment
      (\ s a -> s{_gHorizontalAlignment = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageColumnProperties
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageColumnProperties"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageColumnProperties'
                   <$>
                   (o .:? "header") <*> (o .:? "horizontalAlignment"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageColumnProperties
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageColumnProperties'{..}
          = object
              (catMaybes
                 [("header" .=) <$> _gHeader,
                  ("horizontalAlignment" .=) <$>
                    _gHorizontalAlignment])

-- | The response message for Pages.ListPages.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListPagesResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListPagesResponse =
  GoogleCloudDialogflowCxV3beta1ListPagesResponse'
    { _gcdcvlprNextPageToken :: !(Maybe Text)
    , _gcdcvlprPages         :: !(Maybe [GoogleCloudDialogflowCxV3beta1Page])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListPagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlprNextPageToken'
--
-- * 'gcdcvlprPages'
googleCloudDialogflowCxV3beta1ListPagesResponse
    :: GoogleCloudDialogflowCxV3beta1ListPagesResponse
googleCloudDialogflowCxV3beta1ListPagesResponse =
  GoogleCloudDialogflowCxV3beta1ListPagesResponse'
    {_gcdcvlprNextPageToken = Nothing, _gcdcvlprPages = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlprNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListPagesResponse (Maybe Text)
gcdcvlprNextPageToken
  = lens _gcdcvlprNextPageToken
      (\ s a -> s{_gcdcvlprNextPageToken = a})

-- | The list of pages. There will be a maximum number of items returned
-- based on the page_size field in the request.
gcdcvlprPages :: Lens' GoogleCloudDialogflowCxV3beta1ListPagesResponse [GoogleCloudDialogflowCxV3beta1Page]
gcdcvlprPages
  = lens _gcdcvlprPages
      (\ s a -> s{_gcdcvlprPages = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListPagesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListPagesResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListPagesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "pages" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListPagesResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListPagesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlprNextPageToken,
                  ("pages" .=) <$> _gcdcvlprPages])

-- | The response message for Webhooks.ListWebhooks.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListWebhooksResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListWebhooksResponse =
  GoogleCloudDialogflowCxV3beta1ListWebhooksResponse'
    { _gcdcvlwrNextPageToken :: !(Maybe Text)
    , _gcdcvlwrWebhooks      :: !(Maybe [GoogleCloudDialogflowCxV3beta1Webhook])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListWebhooksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlwrNextPageToken'
--
-- * 'gcdcvlwrWebhooks'
googleCloudDialogflowCxV3beta1ListWebhooksResponse
    :: GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
googleCloudDialogflowCxV3beta1ListWebhooksResponse =
  GoogleCloudDialogflowCxV3beta1ListWebhooksResponse'
    {_gcdcvlwrNextPageToken = Nothing, _gcdcvlwrWebhooks = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlwrNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListWebhooksResponse (Maybe Text)
gcdcvlwrNextPageToken
  = lens _gcdcvlwrNextPageToken
      (\ s a -> s{_gcdcvlwrNextPageToken = a})

-- | The list of webhooks. There will be a maximum number of items returned
-- based on the page_size field in the request.
gcdcvlwrWebhooks :: Lens' GoogleCloudDialogflowCxV3beta1ListWebhooksResponse [GoogleCloudDialogflowCxV3beta1Webhook]
gcdcvlwrWebhooks
  = lens _gcdcvlwrWebhooks
      (\ s a -> s{_gcdcvlwrWebhooks = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListWebhooksResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListWebhooksResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "webhooks" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListWebhooksResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlwrNextPageToken,
                  ("webhooks" .=) <$> _gcdcvlwrWebhooks])

-- | An **entity entry** for an associated entity type.
--
-- /See:/ 'googleCloudDialogflowV2EntityTypeEntity' smart constructor.
data GoogleCloudDialogflowV2EntityTypeEntity =
  GoogleCloudDialogflowV2EntityTypeEntity'
    { _gValue    :: !(Maybe Text)
    , _gSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2EntityTypeEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gValue'
--
-- * 'gSynonyms'
googleCloudDialogflowV2EntityTypeEntity
    :: GoogleCloudDialogflowV2EntityTypeEntity
googleCloudDialogflowV2EntityTypeEntity =
  GoogleCloudDialogflowV2EntityTypeEntity'
    {_gValue = Nothing, _gSynonyms = Nothing}


-- | Required. The primary value associated with this entity entry. For
-- example, if the entity type is *vegetable*, the value could be
-- *scallions*. For \`KIND_MAP\` entity types: * A reference value to be
-- used in place of synonyms. For \`KIND_LIST\` entity types: * A string
-- that can contain references to other entity types (with or without
-- aliases).
gValue :: Lens' GoogleCloudDialogflowV2EntityTypeEntity (Maybe Text)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | Required. A collection of value synonyms. For example, if the entity
-- type is *vegetable*, and \`value\` is *scallions*, a synonym could be
-- *green onions*. For \`KIND_LIST\` entity types: * This collection must
-- contain exactly one synonym equal to \`value\`.
gSynonyms :: Lens' GoogleCloudDialogflowV2EntityTypeEntity [Text]
gSynonyms
  = lens _gSynonyms (\ s a -> s{_gSynonyms = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2EntityTypeEntity
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2EntityTypeEntity"
              (\ o ->
                 GoogleCloudDialogflowV2EntityTypeEntity' <$>
                   (o .:? "value") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2EntityTypeEntity
         where
        toJSON GoogleCloudDialogflowV2EntityTypeEntity'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gValue,
                  ("synonyms" .=) <$> _gSynonyms])

-- | Represents the result of conversational query or event processing.
--
-- /See:/ 'googleCloudDialogflowV2beta1QueryResult' smart constructor.
data GoogleCloudDialogflowV2beta1QueryResult =
  GoogleCloudDialogflowV2beta1QueryResult'
    { _gLanguageCode                :: !(Maybe Text)
    , _gAllRequiredParamsPresent    :: !(Maybe Bool)
    , _gIntentDetectionConfidence   :: !(Maybe (Textual Double))
    , _gFulfillmentMessages         :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessage])
    , _gKnowledgeAnswers            :: !(Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswers)
    , _gSpeechRecognitionConfidence :: !(Maybe (Textual Double))
    , _gAction                      :: !(Maybe Text)
    , _gIntent                      :: !(Maybe GoogleCloudDialogflowV2beta1Intent)
    , _gSentimentAnalysisResult     :: !(Maybe GoogleCloudDialogflowV2beta1SentimentAnalysisResult)
    , _gQueryText                   :: !(Maybe Text)
    , _gFulfillmentText             :: !(Maybe Text)
    , _gParameters                  :: !(Maybe GoogleCloudDialogflowV2beta1QueryResultParameters)
    , _gWebhookPayload              :: !(Maybe GoogleCloudDialogflowV2beta1QueryResultWebhookPayload)
    , _gOutputContexts              :: !(Maybe [GoogleCloudDialogflowV2beta1Context])
    , _gWebhookSource               :: !(Maybe Text)
    , _gDiagnosticInfo              :: !(Maybe GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1QueryResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gLanguageCode'
--
-- * 'gAllRequiredParamsPresent'
--
-- * 'gIntentDetectionConfidence'
--
-- * 'gFulfillmentMessages'
--
-- * 'gKnowledgeAnswers'
--
-- * 'gSpeechRecognitionConfidence'
--
-- * 'gAction'
--
-- * 'gIntent'
--
-- * 'gSentimentAnalysisResult'
--
-- * 'gQueryText'
--
-- * 'gFulfillmentText'
--
-- * 'gParameters'
--
-- * 'gWebhookPayload'
--
-- * 'gOutputContexts'
--
-- * 'gWebhookSource'
--
-- * 'gDiagnosticInfo'
googleCloudDialogflowV2beta1QueryResult
    :: GoogleCloudDialogflowV2beta1QueryResult
googleCloudDialogflowV2beta1QueryResult =
  GoogleCloudDialogflowV2beta1QueryResult'
    { _gLanguageCode = Nothing
    , _gAllRequiredParamsPresent = Nothing
    , _gIntentDetectionConfidence = Nothing
    , _gFulfillmentMessages = Nothing
    , _gKnowledgeAnswers = Nothing
    , _gSpeechRecognitionConfidence = Nothing
    , _gAction = Nothing
    , _gIntent = Nothing
    , _gSentimentAnalysisResult = Nothing
    , _gQueryText = Nothing
    , _gFulfillmentText = Nothing
    , _gParameters = Nothing
    , _gWebhookPayload = Nothing
    , _gOutputContexts = Nothing
    , _gWebhookSource = Nothing
    , _gDiagnosticInfo = Nothing
    }


-- | The language that was triggered during intent detection. See [Language
-- Support](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/language)
-- for a list of the currently supported language codes.
gLanguageCode :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gLanguageCode
  = lens _gLanguageCode
      (\ s a -> s{_gLanguageCode = a})

-- | This field is set to: - \`false\` if the matched intent has required
-- parameters and not all of the required parameter values have been
-- collected. - \`true\` if all required parameter values have been
-- collected, or if the matched intent doesn\'t contain any required
-- parameters.
gAllRequiredParamsPresent :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Bool)
gAllRequiredParamsPresent
  = lens _gAllRequiredParamsPresent
      (\ s a -> s{_gAllRequiredParamsPresent = a})

-- | The intent detection confidence. Values range from 0.0 (completely
-- uncertain) to 1.0 (completely certain). This value is for informational
-- purpose only and is only used to help match the best intent within the
-- classification threshold. This value may change for the same end-user
-- expression at any time due to a model retraining or change in
-- implementation. If there are \`multiple knowledge_answers\` messages,
-- this value is set to the greatest \`knowledgeAnswers.match_confidence\`
-- value in the list.
gIntentDetectionConfidence :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Double)
gIntentDetectionConfidence
  = lens _gIntentDetectionConfidence
      (\ s a -> s{_gIntentDetectionConfidence = a})
      . mapping _Coerce

-- | The collection of rich messages to present to the user.
gFulfillmentMessages :: Lens' GoogleCloudDialogflowV2beta1QueryResult [GoogleCloudDialogflowV2beta1IntentMessage]
gFulfillmentMessages
  = lens _gFulfillmentMessages
      (\ s a -> s{_gFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | The result from Knowledge Connector (if any), ordered by decreasing
-- \`KnowledgeAnswers.match_confidence\`.
gKnowledgeAnswers :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1KnowledgeAnswers)
gKnowledgeAnswers
  = lens _gKnowledgeAnswers
      (\ s a -> s{_gKnowledgeAnswers = a})

-- | The Speech recognition confidence between 0.0 and 1.0. A higher number
-- indicates an estimated greater likelihood that the recognized words are
-- correct. The default of 0.0 is a sentinel value indicating that
-- confidence was not set. This field is not guaranteed to be accurate or
-- set. In particular this field isn\'t set for StreamingDetectIntent since
-- the streaming endpoint has separate confidence estimates per portion of
-- the audio in StreamingRecognitionResult.
gSpeechRecognitionConfidence :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Double)
gSpeechRecognitionConfidence
  = lens _gSpeechRecognitionConfidence
      (\ s a -> s{_gSpeechRecognitionConfidence = a})
      . mapping _Coerce

-- | The action name from the matched intent.
gAction :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gAction = lens _gAction (\ s a -> s{_gAction = a})

-- | The intent that matched the conversational query. Some, not all fields
-- are filled in this message, including but not limited to: \`name\`,
-- \`display_name\`, \`end_interaction\` and \`is_fallback\`.
gIntent :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1Intent)
gIntent = lens _gIntent (\ s a -> s{_gIntent = a})

-- | The sentiment analysis result, which depends on the
-- \`sentiment_analysis_request_config\` specified in the request.
gSentimentAnalysisResult :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1SentimentAnalysisResult)
gSentimentAnalysisResult
  = lens _gSentimentAnalysisResult
      (\ s a -> s{_gSentimentAnalysisResult = a})

-- | The original conversational query text: - If natural language text was
-- provided as input, \`query_text\` contains a copy of the input. - If
-- natural language speech audio was provided as input, \`query_text\`
-- contains the speech recognition result. If speech recognizer produced
-- multiple alternatives, a particular one is picked. - If automatic spell
-- correction is enabled, \`query_text\` will contain the corrected user
-- input.
gQueryText :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gQueryText
  = lens _gQueryText (\ s a -> s{_gQueryText = a})

-- | The text to be pronounced to the user or shown on the screen. Note: This
-- is a legacy field, \`fulfillment_messages\` should be preferred.
gFulfillmentText :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gFulfillmentText
  = lens _gFulfillmentText
      (\ s a -> s{_gFulfillmentText = a})

-- | The collection of extracted parameters. Depending on your protocol or
-- client library language, this is a map, associative array, symbol table,
-- dictionary, or JSON object composed of a collection of (MapKey,
-- MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
-- MapValue type: - If parameter\'s entity type is a composite entity: map
-- - Else: string or number, depending on parameter value type - MapValue
-- value: - If parameter\'s entity type is a composite entity: map from
-- composite entity property names to property values - Else: parameter
-- value
gParameters :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1QueryResultParameters)
gParameters
  = lens _gParameters (\ s a -> s{_gParameters = a})

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`payload\` field returned in the webhook response.
gWebhookPayload :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1QueryResultWebhookPayload)
gWebhookPayload
  = lens _gWebhookPayload
      (\ s a -> s{_gWebhookPayload = a})

-- | The collection of output contexts. If applicable,
-- \`output_contexts.parameters\` contains entries with name \`.original\`
-- containing the original parameter values before the query.
gOutputContexts :: Lens' GoogleCloudDialogflowV2beta1QueryResult [GoogleCloudDialogflowV2beta1Context]
gOutputContexts
  = lens _gOutputContexts
      (\ s a -> s{_gOutputContexts = a})
      . _Default
      . _Coerce

-- | If the query was fulfilled by a webhook call, this field is set to the
-- value of the \`source\` field returned in the webhook response.
gWebhookSource :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe Text)
gWebhookSource
  = lens _gWebhookSource
      (\ s a -> s{_gWebhookSource = a})

-- | Free-form diagnostic information for the associated detect intent
-- request. The fields of this data can change without notice, so you
-- should not write code that depends on its structure. The data may
-- contain: - webhook call latency - webhook errors
gDiagnosticInfo :: Lens' GoogleCloudDialogflowV2beta1QueryResult (Maybe GoogleCloudDialogflowV2beta1QueryResultDiagnosticInfo)
gDiagnosticInfo
  = lens _gDiagnosticInfo
      (\ s a -> s{_gDiagnosticInfo = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1QueryResult
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1QueryResult"
              (\ o ->
                 GoogleCloudDialogflowV2beta1QueryResult' <$>
                   (o .:? "languageCode") <*>
                     (o .:? "allRequiredParamsPresent")
                     <*> (o .:? "intentDetectionConfidence")
                     <*> (o .:? "fulfillmentMessages" .!= mempty)
                     <*> (o .:? "knowledgeAnswers")
                     <*> (o .:? "speechRecognitionConfidence")
                     <*> (o .:? "action")
                     <*> (o .:? "intent")
                     <*> (o .:? "sentimentAnalysisResult")
                     <*> (o .:? "queryText")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "parameters")
                     <*> (o .:? "webhookPayload")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "webhookSource")
                     <*> (o .:? "diagnosticInfo"))

instance ToJSON
           GoogleCloudDialogflowV2beta1QueryResult
         where
        toJSON GoogleCloudDialogflowV2beta1QueryResult'{..}
          = object
              (catMaybes
                 [("languageCode" .=) <$> _gLanguageCode,
                  ("allRequiredParamsPresent" .=) <$>
                    _gAllRequiredParamsPresent,
                  ("intentDetectionConfidence" .=) <$>
                    _gIntentDetectionConfidence,
                  ("fulfillmentMessages" .=) <$> _gFulfillmentMessages,
                  ("knowledgeAnswers" .=) <$> _gKnowledgeAnswers,
                  ("speechRecognitionConfidence" .=) <$>
                    _gSpeechRecognitionConfidence,
                  ("action" .=) <$> _gAction,
                  ("intent" .=) <$> _gIntent,
                  ("sentimentAnalysisResult" .=) <$>
                    _gSentimentAnalysisResult,
                  ("queryText" .=) <$> _gQueryText,
                  ("fulfillmentText" .=) <$> _gFulfillmentText,
                  ("parameters" .=) <$> _gParameters,
                  ("webhookPayload" .=) <$> _gWebhookPayload,
                  ("outputContexts" .=) <$> _gOutputContexts,
                  ("webhookSource" .=) <$> _gWebhookSource,
                  ("diagnosticInfo" .=) <$> _gDiagnosticInfo])

-- | The image response message.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageImage' smart constructor.
data GoogleCloudDialogflowV2IntentMessageImage =
  GoogleCloudDialogflowV2IntentMessageImage'
    { _gAccessibilityText :: !(Maybe Text)
    , _gImageURI          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gAccessibilityText'
--
-- * 'gImageURI'
googleCloudDialogflowV2IntentMessageImage
    :: GoogleCloudDialogflowV2IntentMessageImage
googleCloudDialogflowV2IntentMessageImage =
  GoogleCloudDialogflowV2IntentMessageImage'
    {_gAccessibilityText = Nothing, _gImageURI = Nothing}


-- | Optional. A text description of the image to be used for accessibility,
-- e.g., screen readers.
gAccessibilityText :: Lens' GoogleCloudDialogflowV2IntentMessageImage (Maybe Text)
gAccessibilityText
  = lens _gAccessibilityText
      (\ s a -> s{_gAccessibilityText = a})

-- | Optional. The public URI to an image file.
gImageURI :: Lens' GoogleCloudDialogflowV2IntentMessageImage (Maybe Text)
gImageURI
  = lens _gImageURI (\ s a -> s{_gImageURI = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageImage
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageImage"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageImage' <$>
                   (o .:? "accessibilityText") <*> (o .:? "imageUri"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageImage
         where
        toJSON GoogleCloudDialogflowV2IntentMessageImage'{..}
          = object
              (catMaybes
                 [("accessibilityText" .=) <$> _gAccessibilityText,
                  ("imageUri" .=) <$> _gImageURI])

-- | The response message for a webhook call. This response is validated by
-- the Dialogflow server. If validation fails, an error will be returned in
-- the QueryResult.diagnostic_info field. Setting JSON fields to an empty
-- value with the wrong type is a common error. To avoid this error: - Use
-- \`\"\"\` for empty strings - Use \`{}\` or \`null\` for empty objects -
-- Use \`[]\` or \`null\` for empty arrays For more information, see the
-- [Protocol Buffers Language
-- Guide](https:\/\/developers.google.com\/protocol-buffers\/docs\/proto3#json).
--
-- /See:/ 'googleCloudDialogflowV2WebhookResponse' smart constructor.
data GoogleCloudDialogflowV2WebhookResponse =
  GoogleCloudDialogflowV2WebhookResponse'
    { _gcdvwrcFulfillmentMessages :: !(Maybe [GoogleCloudDialogflowV2IntentMessage])
    , _gcdvwrcPayload             :: !(Maybe GoogleCloudDialogflowV2WebhookResponsePayload)
    , _gcdvwrcFulfillmentText     :: !(Maybe Text)
    , _gcdvwrcSource              :: !(Maybe Text)
    , _gcdvwrcOutputContexts      :: !(Maybe [GoogleCloudDialogflowV2Context])
    , _gcdvwrcFollowupEventInput  :: !(Maybe GoogleCloudDialogflowV2EventInput)
    , _gcdvwrcSessionEntityTypes  :: !(Maybe [GoogleCloudDialogflowV2SessionEntityType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2WebhookResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvwrcFulfillmentMessages'
--
-- * 'gcdvwrcPayload'
--
-- * 'gcdvwrcFulfillmentText'
--
-- * 'gcdvwrcSource'
--
-- * 'gcdvwrcOutputContexts'
--
-- * 'gcdvwrcFollowupEventInput'
--
-- * 'gcdvwrcSessionEntityTypes'
googleCloudDialogflowV2WebhookResponse
    :: GoogleCloudDialogflowV2WebhookResponse
googleCloudDialogflowV2WebhookResponse =
  GoogleCloudDialogflowV2WebhookResponse'
    { _gcdvwrcFulfillmentMessages = Nothing
    , _gcdvwrcPayload = Nothing
    , _gcdvwrcFulfillmentText = Nothing
    , _gcdvwrcSource = Nothing
    , _gcdvwrcOutputContexts = Nothing
    , _gcdvwrcFollowupEventInput = Nothing
    , _gcdvwrcSessionEntityTypes = Nothing
    }


-- | Optional. The rich response messages intended for the end-user. When
-- provided, Dialogflow uses this field to populate
-- QueryResult.fulfillment_messages sent to the integration or API caller.
gcdvwrcFulfillmentMessages :: Lens' GoogleCloudDialogflowV2WebhookResponse [GoogleCloudDialogflowV2IntentMessage]
gcdvwrcFulfillmentMessages
  = lens _gcdvwrcFulfillmentMessages
      (\ s a -> s{_gcdvwrcFulfillmentMessages = a})
      . _Default
      . _Coerce

-- | Optional. This field can be used to pass custom data from your webhook
-- to the integration or API caller. Arbitrary JSON objects are supported.
-- When provided, Dialogflow uses this field to populate
-- QueryResult.webhook_payload sent to the integration or API caller. This
-- field is also used by the [Google Assistant
-- integration](https:\/\/cloud.google.com\/dialogflow\/docs\/integrations\/aog)
-- for rich response messages. See the format definition at [Google
-- Assistant Dialogflow webhook
-- format](https:\/\/developers.google.com\/assistant\/actions\/build\/json\/dialogflow-webhook-json)
gcdvwrcPayload :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe GoogleCloudDialogflowV2WebhookResponsePayload)
gcdvwrcPayload
  = lens _gcdvwrcPayload
      (\ s a -> s{_gcdvwrcPayload = a})

-- | Optional. The text response message intended for the end-user. It is
-- recommended to use \`fulfillment_messages.text.text[0]\` instead. When
-- provided, Dialogflow uses this field to populate
-- QueryResult.fulfillment_text sent to the integration or API caller.
gcdvwrcFulfillmentText :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe Text)
gcdvwrcFulfillmentText
  = lens _gcdvwrcFulfillmentText
      (\ s a -> s{_gcdvwrcFulfillmentText = a})

-- | Optional. A custom field used to identify the webhook source. Arbitrary
-- strings are supported. When provided, Dialogflow uses this field to
-- populate QueryResult.webhook_source sent to the integration or API
-- caller.
gcdvwrcSource :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe Text)
gcdvwrcSource
  = lens _gcdvwrcSource
      (\ s a -> s{_gcdvwrcSource = a})

-- | Optional. The collection of output contexts that will overwrite
-- currently active contexts for the session and reset their lifespans.
-- When provided, Dialogflow uses this field to populate
-- QueryResult.output_contexts sent to the integration or API caller.
gcdvwrcOutputContexts :: Lens' GoogleCloudDialogflowV2WebhookResponse [GoogleCloudDialogflowV2Context]
gcdvwrcOutputContexts
  = lens _gcdvwrcOutputContexts
      (\ s a -> s{_gcdvwrcOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. Invokes the supplied events. When this field is set,
-- Dialogflow ignores the \`fulfillment_text\`, \`fulfillment_messages\`,
-- and \`payload\` fields.
gcdvwrcFollowupEventInput :: Lens' GoogleCloudDialogflowV2WebhookResponse (Maybe GoogleCloudDialogflowV2EventInput)
gcdvwrcFollowupEventInput
  = lens _gcdvwrcFollowupEventInput
      (\ s a -> s{_gcdvwrcFollowupEventInput = a})

-- | Optional. Additional session entity types to replace or extend developer
-- entity types with. The entity synonyms apply to all languages and
-- persist for the session. Setting this data from a webhook overwrites the
-- session entity types that have been set using \`detectIntent\`,
-- \`streamingDetectIntent\` or SessionEntityType management methods.
gcdvwrcSessionEntityTypes :: Lens' GoogleCloudDialogflowV2WebhookResponse [GoogleCloudDialogflowV2SessionEntityType]
gcdvwrcSessionEntityTypes
  = lens _gcdvwrcSessionEntityTypes
      (\ s a -> s{_gcdvwrcSessionEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2WebhookResponse
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2WebhookResponse"
              (\ o ->
                 GoogleCloudDialogflowV2WebhookResponse' <$>
                   (o .:? "fulfillmentMessages" .!= mempty) <*>
                     (o .:? "payload")
                     <*> (o .:? "fulfillmentText")
                     <*> (o .:? "source")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "followupEventInput")
                     <*> (o .:? "sessionEntityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2WebhookResponse
         where
        toJSON GoogleCloudDialogflowV2WebhookResponse'{..}
          = object
              (catMaybes
                 [("fulfillmentMessages" .=) <$>
                    _gcdvwrcFulfillmentMessages,
                  ("payload" .=) <$> _gcdvwrcPayload,
                  ("fulfillmentText" .=) <$> _gcdvwrcFulfillmentText,
                  ("source" .=) <$> _gcdvwrcSource,
                  ("outputContexts" .=) <$> _gcdvwrcOutputContexts,
                  ("followupEventInput" .=) <$>
                    _gcdvwrcFollowupEventInput,
                  ("sessionEntityTypes" .=) <$>
                    _gcdvwrcSessionEntityTypes])

-- | The response message for EntityTypes.ListEntityTypes.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ListEntityTypesResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse =
  GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse'
    { _gcdcvletrNextPageToken :: !(Maybe Text)
    , _gcdcvletrEntityTypes   :: !(Maybe [GoogleCloudDialogflowCxV3beta1EntityType])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvletrNextPageToken'
--
-- * 'gcdcvletrEntityTypes'
googleCloudDialogflowCxV3beta1ListEntityTypesResponse
    :: GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
googleCloudDialogflowCxV3beta1ListEntityTypesResponse =
  GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse'
    {_gcdcvletrNextPageToken = Nothing, _gcdcvletrEntityTypes = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvletrNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse (Maybe Text)
gcdcvletrNextPageToken
  = lens _gcdcvletrNextPageToken
      (\ s a -> s{_gcdcvletrNextPageToken = a})

-- | The list of entity types. There will be a maximum number of items
-- returned based on the page_size field in the request.
gcdcvletrEntityTypes :: Lens' GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse [GoogleCloudDialogflowCxV3beta1EntityType]
gcdcvletrEntityTypes
  = lens _gcdcvletrEntityTypes
      (\ s a -> s{_gcdcvletrEntityTypes = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "entityTypes" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvletrNextPageToken,
                  ("entityTypes" .=) <$> _gcdcvletrEntityTypes])

-- | An TransitionRouteGroup represents a group of \`TransitionRoutes\` to be
-- used by a Page.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1TransitionRouteGroup' smart constructor.
data GoogleCloudDialogflowCxV3beta1TransitionRouteGroup =
  GoogleCloudDialogflowCxV3beta1TransitionRouteGroup'
    { _gcdcvtrgTransitionRoutes :: !(Maybe [GoogleCloudDialogflowCxV3beta1TransitionRoute])
    , _gcdcvtrgName             :: !(Maybe Text)
    , _gcdcvtrgDisplayName      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1TransitionRouteGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvtrgTransitionRoutes'
--
-- * 'gcdcvtrgName'
--
-- * 'gcdcvtrgDisplayName'
googleCloudDialogflowCxV3beta1TransitionRouteGroup
    :: GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
googleCloudDialogflowCxV3beta1TransitionRouteGroup =
  GoogleCloudDialogflowCxV3beta1TransitionRouteGroup'
    { _gcdcvtrgTransitionRoutes = Nothing
    , _gcdcvtrgName = Nothing
    , _gcdcvtrgDisplayName = Nothing
    }


-- | Transition routes associated with the TransitionRouteGroup. Duplicate
-- transition routes (i.e. using the same \`intent\`) are not allowed. Note
-- that the \`name\` field is not used in the transition route group scope.
gcdcvtrgTransitionRoutes :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRouteGroup [GoogleCloudDialogflowCxV3beta1TransitionRoute]
gcdcvtrgTransitionRoutes
  = lens _gcdcvtrgTransitionRoutes
      (\ s a -> s{_gcdcvtrgTransitionRoutes = a})
      . _Default
      . _Coerce

-- | The unique identifier of the transition route group.
-- TransitionRouteGroups.CreateTransitionRouteGroup populates the name
-- automatically. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/transitionRouteGroups\/\`.
gcdcvtrgName :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRouteGroup (Maybe Text)
gcdcvtrgName
  = lens _gcdcvtrgName (\ s a -> s{_gcdcvtrgName = a})

-- | Required. The human-readable name of the transition route group, unique
-- within the Agent. The display name can be no longer than 30 characters.
gcdcvtrgDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRouteGroup (Maybe Text)
gcdcvtrgDisplayName
  = lens _gcdcvtrgDisplayName
      (\ s a -> s{_gcdcvtrgDisplayName = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1TransitionRouteGroup"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1TransitionRouteGroup'
                   <$>
                   (o .:? "transitionRoutes" .!= mempty) <*>
                     (o .:? "name")
                     <*> (o .:? "displayName"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1TransitionRouteGroup'{..}
          = object
              (catMaybes
                 [("transitionRoutes" .=) <$>
                    _gcdcvtrgTransitionRoutes,
                  ("name" .=) <$> _gcdcvtrgName,
                  ("displayName" .=) <$> _gcdcvtrgDisplayName])

-- | Agents are best described as Natural Language Understanding (NLU)
-- modules that transform user requests into actionable data. You can
-- include agents in your app, product, or service to determine user intent
-- and respond to the user in a natural way. After you create an agent, you
-- can add Intents, Entity Types, Flows, Fulfillments, Webhooks, and so on
-- to manage the conversation flows..
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Agent' smart constructor.
data GoogleCloudDialogflowCxV3beta1Agent =
  GoogleCloudDialogflowCxV3beta1Agent'
    { _gcdcvaDefaultLanguageCode      :: !(Maybe Text)
    , _gcdcvaEnableStackdriverLogging :: !(Maybe Bool)
    , _gcdcvaStartFlow                :: !(Maybe Text)
    , _gcdcvaSpeechToTextSettings     :: !(Maybe GoogleCloudDialogflowCxV3beta1SpeechToTextSettings)
    , _gcdcvaEnableSpellCorrection    :: !(Maybe Bool)
    , _gcdcvaName                     :: !(Maybe Text)
    , _gcdcvaAvatarURI                :: !(Maybe Text)
    , _gcdcvaDisplayName              :: !(Maybe Text)
    , _gcdcvaTimeZone                 :: !(Maybe Text)
    , _gcdcvaDescription              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Agent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvaDefaultLanguageCode'
--
-- * 'gcdcvaEnableStackdriverLogging'
--
-- * 'gcdcvaStartFlow'
--
-- * 'gcdcvaSpeechToTextSettings'
--
-- * 'gcdcvaEnableSpellCorrection'
--
-- * 'gcdcvaName'
--
-- * 'gcdcvaAvatarURI'
--
-- * 'gcdcvaDisplayName'
--
-- * 'gcdcvaTimeZone'
--
-- * 'gcdcvaDescription'
googleCloudDialogflowCxV3beta1Agent
    :: GoogleCloudDialogflowCxV3beta1Agent
googleCloudDialogflowCxV3beta1Agent =
  GoogleCloudDialogflowCxV3beta1Agent'
    { _gcdcvaDefaultLanguageCode = Nothing
    , _gcdcvaEnableStackdriverLogging = Nothing
    , _gcdcvaStartFlow = Nothing
    , _gcdcvaSpeechToTextSettings = Nothing
    , _gcdcvaEnableSpellCorrection = Nothing
    , _gcdcvaName = Nothing
    , _gcdcvaAvatarURI = Nothing
    , _gcdcvaDisplayName = Nothing
    , _gcdcvaTimeZone = Nothing
    , _gcdcvaDescription = Nothing
    }


-- | Immutable. The default language of the agent as a language tag. See
-- [Language
-- Support](https:\/\/cloud.google.com\/dialogflow\/docs\/reference\/language)
-- for a list of the currently supported language codes. This field cannot
-- be set by the Agents.UpdateAgent method.
gcdcvaDefaultLanguageCode :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Text)
gcdcvaDefaultLanguageCode
  = lens _gcdcvaDefaultLanguageCode
      (\ s a -> s{_gcdcvaDefaultLanguageCode = a})

-- | Indicates if stackdriver logging is enabled for the agent.
gcdcvaEnableStackdriverLogging :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Bool)
gcdcvaEnableStackdriverLogging
  = lens _gcdcvaEnableStackdriverLogging
      (\ s a -> s{_gcdcvaEnableStackdriverLogging = a})

-- | Immutable. Name of the start flow in this agent. A start flow will be
-- automatically created when the agent is created, and can only be deleted
-- by deleting the agent. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
gcdcvaStartFlow :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Text)
gcdcvaStartFlow
  = lens _gcdcvaStartFlow
      (\ s a -> s{_gcdcvaStartFlow = a})

-- | Speech recognition related settings.
gcdcvaSpeechToTextSettings :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe GoogleCloudDialogflowCxV3beta1SpeechToTextSettings)
gcdcvaSpeechToTextSettings
  = lens _gcdcvaSpeechToTextSettings
      (\ s a -> s{_gcdcvaSpeechToTextSettings = a})

-- | Indicates if automatic spell correction is enabled in detect intent
-- requests.
gcdcvaEnableSpellCorrection :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Bool)
gcdcvaEnableSpellCorrection
  = lens _gcdcvaEnableSpellCorrection
      (\ s a -> s{_gcdcvaEnableSpellCorrection = a})

-- | The unique identifier of the agent. Required for the Agents.UpdateAgent
-- method. Agents.CreateAgent populates the name automatically. Format:
-- \`projects\/\/locations\/\/agents\/\`.
gcdcvaName :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Text)
gcdcvaName
  = lens _gcdcvaName (\ s a -> s{_gcdcvaName = a})

-- | The URI of the agent\'s avatar. Avatars are used throughout the
-- Dialogflow console and in the self-hosted [Web
-- Demo](https:\/\/cloud.google.com\/dialogflow\/docs\/integrations\/web-demo)
-- integration.
gcdcvaAvatarURI :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Text)
gcdcvaAvatarURI
  = lens _gcdcvaAvatarURI
      (\ s a -> s{_gcdcvaAvatarURI = a})

-- | Required. The human-readable name of the agent, unique within the
-- location.
gcdcvaDisplayName :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Text)
gcdcvaDisplayName
  = lens _gcdcvaDisplayName
      (\ s a -> s{_gcdcvaDisplayName = a})

-- | Required. The time zone of the agent from the [time zone
-- database](https:\/\/www.iana.org\/time-zones), e.g., America\/New_York,
-- Europe\/Paris.
gcdcvaTimeZone :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Text)
gcdcvaTimeZone
  = lens _gcdcvaTimeZone
      (\ s a -> s{_gcdcvaTimeZone = a})

-- | The description of the agent. The maximum length is 500 characters. If
-- exceeded, the request is rejected.
gcdcvaDescription :: Lens' GoogleCloudDialogflowCxV3beta1Agent (Maybe Text)
gcdcvaDescription
  = lens _gcdcvaDescription
      (\ s a -> s{_gcdcvaDescription = a})

instance FromJSON GoogleCloudDialogflowCxV3beta1Agent
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Agent"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Agent' <$>
                   (o .:? "defaultLanguageCode") <*>
                     (o .:? "enableStackdriverLogging")
                     <*> (o .:? "startFlow")
                     <*> (o .:? "speechToTextSettings")
                     <*> (o .:? "enableSpellCorrection")
                     <*> (o .:? "name")
                     <*> (o .:? "avatarUri")
                     <*> (o .:? "displayName")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "description"))

instance ToJSON GoogleCloudDialogflowCxV3beta1Agent
         where
        toJSON GoogleCloudDialogflowCxV3beta1Agent'{..}
          = object
              (catMaybes
                 [("defaultLanguageCode" .=) <$>
                    _gcdcvaDefaultLanguageCode,
                  ("enableStackdriverLogging" .=) <$>
                    _gcdcvaEnableStackdriverLogging,
                  ("startFlow" .=) <$> _gcdcvaStartFlow,
                  ("speechToTextSettings" .=) <$>
                    _gcdcvaSpeechToTextSettings,
                  ("enableSpellCorrection" .=) <$>
                    _gcdcvaEnableSpellCorrection,
                  ("name" .=) <$> _gcdcvaName,
                  ("avatarUri" .=) <$> _gcdcvaAvatarURI,
                  ("displayName" .=) <$> _gcdcvaDisplayName,
                  ("timeZone" .=) <$> _gcdcvaTimeZone,
                  ("description" .=) <$> _gcdcvaDescription])

-- | Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you
-- to respond to users with more vivid content, e.g. with media and
-- suggestions. You can group multiple rich cards into one using
-- RbmCarouselCard but carousel cards will give you less control over the
-- card layout.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard =
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard'
    { _gcdvimrscThumbnailImageAlignment :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment)
    , _gcdvimrscCardOrientation         :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation)
    , _gcdvimrscCardContent             :: !(Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimrscThumbnailImageAlignment'
--
-- * 'gcdvimrscCardOrientation'
--
-- * 'gcdvimrscCardContent'
googleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
    :: GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
googleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard =
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard'
    { _gcdvimrscThumbnailImageAlignment = Nothing
    , _gcdvimrscCardOrientation = Nothing
    , _gcdvimrscCardContent = Nothing
    }


-- | Required if orientation is horizontal. Image preview alignment for
-- standalone cards with horizontal layout.
gcdvimrscThumbnailImageAlignment :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment)
gcdvimrscThumbnailImageAlignment
  = lens _gcdvimrscThumbnailImageAlignment
      (\ s a -> s{_gcdvimrscThumbnailImageAlignment = a})

-- | Required. Orientation of the card.
gcdvimrscCardOrientation :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation)
gcdvimrscCardOrientation
  = lens _gcdvimrscCardOrientation
      (\ s a -> s{_gcdvimrscCardOrientation = a})

-- | Required. Card content.
gcdvimrscCardContent :: Lens' GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard (Maybe GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent)
gcdvimrscCardContent
  = lens _gcdvimrscCardContent
      (\ s a -> s{_gcdvimrscCardContent = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard'
                   <$>
                   (o .:? "thumbnailImageAlignment") <*>
                     (o .:? "cardOrientation")
                     <*> (o .:? "cardContent"))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard'{..}
          = object
              (catMaybes
                 [("thumbnailImageAlignment" .=) <$>
                    _gcdvimrscThumbnailImageAlignment,
                  ("cardOrientation" .=) <$> _gcdvimrscCardOrientation,
                  ("cardContent" .=) <$> _gcdvimrscCardContent])

-- | Represents an example that the agent is trained on to identify the
-- intent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1IntentTrainingPhrase' smart constructor.
data GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase =
  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase'
    { _gcdcvitpParts       :: !(Maybe [GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart])
    , _gcdcvitpRepeatCount :: !(Maybe (Textual Int32))
    , _gcdcvitpId          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvitpParts'
--
-- * 'gcdcvitpRepeatCount'
--
-- * 'gcdcvitpId'
googleCloudDialogflowCxV3beta1IntentTrainingPhrase
    :: GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
googleCloudDialogflowCxV3beta1IntentTrainingPhrase =
  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase'
    { _gcdcvitpParts = Nothing
    , _gcdcvitpRepeatCount = Nothing
    , _gcdcvitpId = Nothing
    }


-- | Required. The ordered list of training phrase parts. The parts are
-- concatenated in order to form the training phrase. Note: The API does
-- not automatically annotate training phrases like the Dialogflow Console
-- does. Note: Do not forget to include whitespace at part boundaries, so
-- the training phrase is well formatted when the parts are concatenated.
-- If the training phrase does not need to be annotated with parameters,
-- you just need a single part with only the Part.text field set. If you
-- want to annotate the training phrase, you must create multiple parts,
-- where the fields of each part are populated in one of two ways: -
-- \`Part.text\` is set to a part of the phrase that has no parameters. -
-- \`Part.text\` is set to a part of the phrase that you want to annotate,
-- and the \`parameter_id\` field is set.
gcdcvitpParts :: Lens' GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase [GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart]
gcdcvitpParts
  = lens _gcdcvitpParts
      (\ s a -> s{_gcdcvitpParts = a})
      . _Default
      . _Coerce

-- | Indicates how many times this example was added to the intent.
gcdcvitpRepeatCount :: Lens' GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase (Maybe Int32)
gcdcvitpRepeatCount
  = lens _gcdcvitpRepeatCount
      (\ s a -> s{_gcdcvitpRepeatCount = a})
      . mapping _Coerce

-- | Output only. The unique identifier of the training phrase.
gcdcvitpId :: Lens' GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase (Maybe Text)
gcdcvitpId
  = lens _gcdcvitpId (\ s a -> s{_gcdcvitpId = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase'
                   <$>
                   (o .:? "parts" .!= mempty) <*> (o .:? "repeatCount")
                     <*> (o .:? "id"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase'{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _gcdcvitpParts,
                  ("repeatCount" .=) <$> _gcdcvitpRepeatCount,
                  ("id" .=) <$> _gcdcvitpId])

-- | Each intent parameter has a type, called the entity type, which dictates
-- exactly how data from an end-user expression is extracted. Dialogflow
-- provides predefined system entities that can match many common types of
-- data. For example, there are system entities for matching dates, times,
-- colors, email addresses, and so on. You can also create your own custom
-- entities for matching custom data. For example, you could define a
-- vegetable entity that can match the types of vegetables available for
-- purchase with a grocery store agent. For more information, see the
-- [Entity
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/entities-overview).
--
-- /See:/ 'googleCloudDialogflowV2beta1EntityType' smart constructor.
data GoogleCloudDialogflowV2beta1EntityType =
  GoogleCloudDialogflowV2beta1EntityType'
    { _gcdvetcEntities              :: !(Maybe [GoogleCloudDialogflowV2beta1EntityTypeEntity])
    , _gcdvetcKind                  :: !(Maybe GoogleCloudDialogflowV2beta1EntityTypeKind)
    , _gcdvetcName                  :: !(Maybe Text)
    , _gcdvetcAutoExpansionMode     :: !(Maybe GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode)
    , _gcdvetcDisplayName           :: !(Maybe Text)
    , _gcdvetcEnableFuzzyExtraction :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1EntityType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvetcEntities'
--
-- * 'gcdvetcKind'
--
-- * 'gcdvetcName'
--
-- * 'gcdvetcAutoExpansionMode'
--
-- * 'gcdvetcDisplayName'
--
-- * 'gcdvetcEnableFuzzyExtraction'
googleCloudDialogflowV2beta1EntityType
    :: GoogleCloudDialogflowV2beta1EntityType
googleCloudDialogflowV2beta1EntityType =
  GoogleCloudDialogflowV2beta1EntityType'
    { _gcdvetcEntities = Nothing
    , _gcdvetcKind = Nothing
    , _gcdvetcName = Nothing
    , _gcdvetcAutoExpansionMode = Nothing
    , _gcdvetcDisplayName = Nothing
    , _gcdvetcEnableFuzzyExtraction = Nothing
    }


-- | Optional. The collection of entity entries associated with the entity
-- type.
gcdvetcEntities :: Lens' GoogleCloudDialogflowV2beta1EntityType [GoogleCloudDialogflowV2beta1EntityTypeEntity]
gcdvetcEntities
  = lens _gcdvetcEntities
      (\ s a -> s{_gcdvetcEntities = a})
      . _Default
      . _Coerce

-- | Required. Indicates the kind of entity type.
gcdvetcKind :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe GoogleCloudDialogflowV2beta1EntityTypeKind)
gcdvetcKind
  = lens _gcdvetcKind (\ s a -> s{_gcdvetcKind = a})

-- | The unique identifier of the entity type. Required for
-- EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes
-- methods. Supported formats: - \`projects\/\/agent\/entityTypes\/\` -
-- \`projects\/\/locations\/\/agent\/entityTypes\/\`
gcdvetcName :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe Text)
gcdvetcName
  = lens _gcdvetcName (\ s a -> s{_gcdvetcName = a})

-- | Optional. Indicates whether the entity type can be automatically
-- expanded.
gcdvetcAutoExpansionMode :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe GoogleCloudDialogflowV2beta1EntityTypeAutoExpansionMode)
gcdvetcAutoExpansionMode
  = lens _gcdvetcAutoExpansionMode
      (\ s a -> s{_gcdvetcAutoExpansionMode = a})

-- | Required. The name of the entity type.
gcdvetcDisplayName :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe Text)
gcdvetcDisplayName
  = lens _gcdvetcDisplayName
      (\ s a -> s{_gcdvetcDisplayName = a})

-- | Optional. Enables fuzzy entity extraction during classification.
gcdvetcEnableFuzzyExtraction :: Lens' GoogleCloudDialogflowV2beta1EntityType (Maybe Bool)
gcdvetcEnableFuzzyExtraction
  = lens _gcdvetcEnableFuzzyExtraction
      (\ s a -> s{_gcdvetcEnableFuzzyExtraction = a})

instance FromJSON
           GoogleCloudDialogflowV2beta1EntityType
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1EntityType"
              (\ o ->
                 GoogleCloudDialogflowV2beta1EntityType' <$>
                   (o .:? "entities" .!= mempty) <*> (o .:? "kind") <*>
                     (o .:? "name")
                     <*> (o .:? "autoExpansionMode")
                     <*> (o .:? "displayName")
                     <*> (o .:? "enableFuzzyExtraction"))

instance ToJSON
           GoogleCloudDialogflowV2beta1EntityType
         where
        toJSON GoogleCloudDialogflowV2beta1EntityType'{..}
          = object
              (catMaybes
                 [("entities" .=) <$> _gcdvetcEntities,
                  ("kind" .=) <$> _gcdvetcKind,
                  ("name" .=) <$> _gcdvetcName,
                  ("autoExpansionMode" .=) <$>
                    _gcdvetcAutoExpansionMode,
                  ("displayName" .=) <$> _gcdvetcDisplayName,
                  ("enableFuzzyExtraction" .=) <$>
                    _gcdvetcEnableFuzzyExtraction])

-- | Custom metadata for your handoff procedure. Dialogflow doesn\'t impose
-- any structure on this.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata =
  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata'
    { _gcdcvrmlahmAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvrmlahmAddtional'
googleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata
    :: HashMap Text JSONValue -- ^ 'gcdcvrmlahmAddtional'
    -> GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata
googleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata pGcdcvrmlahmAddtional_ =
  GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata'
    {_gcdcvrmlahmAddtional = _Coerce # pGcdcvrmlahmAddtional_}


-- | Properties of the object.
gcdcvrmlahmAddtional :: Lens' GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata (HashMap Text JSONValue)
gcdcvrmlahmAddtional
  = lens _gcdcvrmlahmAddtional
      (\ s a -> s{_gcdcvrmlahmAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoffMetadata
         where
        toJSON = toJSON . _gcdcvrmlahmAddtional

-- | Request of MatchIntent.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1MatchIntentRequest' smart constructor.
data GoogleCloudDialogflowCxV3beta1MatchIntentRequest =
  GoogleCloudDialogflowCxV3beta1MatchIntentRequest'
    { _gcdcvmirQueryInput  :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryInput)
    , _gcdcvmirQueryParams :: !(Maybe GoogleCloudDialogflowCxV3beta1QueryParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1MatchIntentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvmirQueryInput'
--
-- * 'gcdcvmirQueryParams'
googleCloudDialogflowCxV3beta1MatchIntentRequest
    :: GoogleCloudDialogflowCxV3beta1MatchIntentRequest
googleCloudDialogflowCxV3beta1MatchIntentRequest =
  GoogleCloudDialogflowCxV3beta1MatchIntentRequest'
    {_gcdcvmirQueryInput = Nothing, _gcdcvmirQueryParams = Nothing}


-- | Required. The input specification.
gcdcvmirQueryInput :: Lens' GoogleCloudDialogflowCxV3beta1MatchIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1QueryInput)
gcdcvmirQueryInput
  = lens _gcdcvmirQueryInput
      (\ s a -> s{_gcdcvmirQueryInput = a})

-- | The parameters of this query.
gcdcvmirQueryParams :: Lens' GoogleCloudDialogflowCxV3beta1MatchIntentRequest (Maybe GoogleCloudDialogflowCxV3beta1QueryParameters)
gcdcvmirQueryParams
  = lens _gcdcvmirQueryParams
      (\ s a -> s{_gcdcvmirQueryParams = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1MatchIntentRequest
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1MatchIntentRequest"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1MatchIntentRequest' <$>
                   (o .:? "queryInput") <*> (o .:? "queryParams"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1MatchIntentRequest
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1MatchIntentRequest'{..}
          = object
              (catMaybes
                 [("queryInput" .=) <$> _gcdcvmirQueryInput,
                  ("queryParams" .=) <$> _gcdcvmirQueryParams])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'googleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone     :: !(Maybe Bool)
    , _gloError    :: !(Maybe GoogleRpcStatus)
    , _gloResponse :: !(Maybe GoogleLongrunningOperationResponse)
    , _gloName     :: !(Maybe Text)
    , _gloMetadata :: !(Maybe GoogleLongrunningOperationMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gloDone'
--
-- * 'gloError'
--
-- * 'gloResponse'
--
-- * 'gloName'
--
-- * 'gloMetadata'
googleLongrunningOperation
    :: GoogleLongrunningOperation
googleLongrunningOperation =
  GoogleLongrunningOperation'
    { _gloDone = Nothing
    , _gloError = Nothing
    , _gloResponse = Nothing
    , _gloName = Nothing
    , _gloMetadata = Nothing
    }


-- | If the value is \`false\`, it means the operation is still in progress.
-- If \`true\`, the operation is completed, and either \`error\` or
-- \`response\` is available.
gloDone :: Lens' GoogleLongrunningOperation (Maybe Bool)
gloDone = lens _gloDone (\ s a -> s{_gloDone = a})

-- | The error result of the operation in case of failure or cancellation.
gloError :: Lens' GoogleLongrunningOperation (Maybe GoogleRpcStatus)
gloError = lens _gloError (\ s a -> s{_gloError = a})

-- | The normal response of the operation in case of success. If the original
-- method returns no data on success, such as \`Delete\`, the response is
-- \`google.protobuf.Empty\`. If the original method is standard
-- \`Get\`\/\`Create\`\/\`Update\`, the response should be the resource.
-- For other methods, the response should have the type \`XxxResponse\`,
-- where \`Xxx\` is the original method name. For example, if the original
-- method name is \`TakeSnapshot()\`, the inferred response type is
-- \`TakeSnapshotResponse\`.
gloResponse :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationResponse)
gloResponse
  = lens _gloResponse (\ s a -> s{_gloResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. If you use the default HTTP mapping, the
-- \`name\` should be a resource name ending with
-- \`operations\/{unique_id}\`.
gloName :: Lens' GoogleLongrunningOperation (Maybe Text)
gloName = lens _gloName (\ s a -> s{_gloName = a})

-- | Service-specific metadata associated with the operation. It typically
-- contains progress information and common metadata such as create time.
-- Some services might not provide such metadata. Any method that returns a
-- long-running operation should document the metadata type, if any.
gloMetadata :: Lens' GoogleLongrunningOperation (Maybe GoogleLongrunningOperationMetadata)
gloMetadata
  = lens _gloMetadata (\ s a -> s{_gloMetadata = a})

instance FromJSON GoogleLongrunningOperation where
        parseJSON
          = withObject "GoogleLongrunningOperation"
              (\ o ->
                 GoogleLongrunningOperation' <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON GoogleLongrunningOperation where
        toJSON GoogleLongrunningOperation'{..}
          = object
              (catMaybes
                 [("done" .=) <$> _gloDone,
                  ("error" .=) <$> _gloError,
                  ("response" .=) <$> _gloResponse,
                  ("name" .=) <$> _gloName,
                  ("metadata" .=) <$> _gloMetadata])

-- | A rich response message. Corresponds to the intent \`Response\` field in
-- the Dialogflow console. For more information, see [Rich response
-- messages](https:\/\/cloud.google.com\/dialogflow\/docs\/intents-rich-messages).
--
-- /See:/ 'googleCloudDialogflowV2IntentMessage' smart constructor.
data GoogleCloudDialogflowV2IntentMessage =
  GoogleCloudDialogflowV2IntentMessage'
    { _gcdvimcCard               :: !(Maybe GoogleCloudDialogflowV2IntentMessageCard)
    , _gcdvimcImage              :: !(Maybe GoogleCloudDialogflowV2IntentMessageImage)
    , _gcdvimcPlatform           :: !(Maybe GoogleCloudDialogflowV2IntentMessagePlatform)
    , _gcdvimcBrowseCarouselCard :: !(Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard)
    , _gcdvimcTableCard          :: !(Maybe GoogleCloudDialogflowV2IntentMessageTableCard)
    , _gcdvimcLinkOutSuggestion  :: !(Maybe GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion)
    , _gcdvimcText               :: !(Maybe GoogleCloudDialogflowV2IntentMessageText)
    , _gcdvimcCarouselSelect     :: !(Maybe GoogleCloudDialogflowV2IntentMessageCarouselSelect)
    , _gcdvimcSimpleResponses    :: !(Maybe GoogleCloudDialogflowV2IntentMessageSimpleResponses)
    , _gcdvimcPayload            :: !(Maybe GoogleCloudDialogflowV2IntentMessagePayload)
    , _gcdvimcSuggestions        :: !(Maybe GoogleCloudDialogflowV2IntentMessageSuggestions)
    , _gcdvimcListSelect         :: !(Maybe GoogleCloudDialogflowV2IntentMessageListSelect)
    , _gcdvimcMediaContent       :: !(Maybe GoogleCloudDialogflowV2IntentMessageMediaContent)
    , _gcdvimcBasicCard          :: !(Maybe GoogleCloudDialogflowV2IntentMessageBasicCard)
    , _gcdvimcQuickReplies       :: !(Maybe GoogleCloudDialogflowV2IntentMessageQuickReplies)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimcCard'
--
-- * 'gcdvimcImage'
--
-- * 'gcdvimcPlatform'
--
-- * 'gcdvimcBrowseCarouselCard'
--
-- * 'gcdvimcTableCard'
--
-- * 'gcdvimcLinkOutSuggestion'
--
-- * 'gcdvimcText'
--
-- * 'gcdvimcCarouselSelect'
--
-- * 'gcdvimcSimpleResponses'
--
-- * 'gcdvimcPayload'
--
-- * 'gcdvimcSuggestions'
--
-- * 'gcdvimcListSelect'
--
-- * 'gcdvimcMediaContent'
--
-- * 'gcdvimcBasicCard'
--
-- * 'gcdvimcQuickReplies'
googleCloudDialogflowV2IntentMessage
    :: GoogleCloudDialogflowV2IntentMessage
googleCloudDialogflowV2IntentMessage =
  GoogleCloudDialogflowV2IntentMessage'
    { _gcdvimcCard = Nothing
    , _gcdvimcImage = Nothing
    , _gcdvimcPlatform = Nothing
    , _gcdvimcBrowseCarouselCard = Nothing
    , _gcdvimcTableCard = Nothing
    , _gcdvimcLinkOutSuggestion = Nothing
    , _gcdvimcText = Nothing
    , _gcdvimcCarouselSelect = Nothing
    , _gcdvimcSimpleResponses = Nothing
    , _gcdvimcPayload = Nothing
    , _gcdvimcSuggestions = Nothing
    , _gcdvimcListSelect = Nothing
    , _gcdvimcMediaContent = Nothing
    , _gcdvimcBasicCard = Nothing
    , _gcdvimcQuickReplies = Nothing
    }


-- | The card response.
gcdvimcCard :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageCard)
gcdvimcCard
  = lens _gcdvimcCard (\ s a -> s{_gcdvimcCard = a})

-- | The image response.
gcdvimcImage :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageImage)
gcdvimcImage
  = lens _gcdvimcImage (\ s a -> s{_gcdvimcImage = a})

-- | Optional. The platform that this message is intended for.
gcdvimcPlatform :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessagePlatform)
gcdvimcPlatform
  = lens _gcdvimcPlatform
      (\ s a -> s{_gcdvimcPlatform = a})

-- | Browse carousel card for Actions on Google.
gcdvimcBrowseCarouselCard :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard)
gcdvimcBrowseCarouselCard
  = lens _gcdvimcBrowseCarouselCard
      (\ s a -> s{_gcdvimcBrowseCarouselCard = a})

-- | Table card for Actions on Google.
gcdvimcTableCard :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageTableCard)
gcdvimcTableCard
  = lens _gcdvimcTableCard
      (\ s a -> s{_gcdvimcTableCard = a})

-- | The link out suggestion chip for Actions on Google.
gcdvimcLinkOutSuggestion :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion)
gcdvimcLinkOutSuggestion
  = lens _gcdvimcLinkOutSuggestion
      (\ s a -> s{_gcdvimcLinkOutSuggestion = a})

-- | The text response.
gcdvimcText :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageText)
gcdvimcText
  = lens _gcdvimcText (\ s a -> s{_gcdvimcText = a})

-- | The carousel card response for Actions on Google.
gcdvimcCarouselSelect :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageCarouselSelect)
gcdvimcCarouselSelect
  = lens _gcdvimcCarouselSelect
      (\ s a -> s{_gcdvimcCarouselSelect = a})

-- | The voice and text-only responses for Actions on Google.
gcdvimcSimpleResponses :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageSimpleResponses)
gcdvimcSimpleResponses
  = lens _gcdvimcSimpleResponses
      (\ s a -> s{_gcdvimcSimpleResponses = a})

-- | A custom platform-specific response.
gcdvimcPayload :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessagePayload)
gcdvimcPayload
  = lens _gcdvimcPayload
      (\ s a -> s{_gcdvimcPayload = a})

-- | The suggestion chips for Actions on Google.
gcdvimcSuggestions :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageSuggestions)
gcdvimcSuggestions
  = lens _gcdvimcSuggestions
      (\ s a -> s{_gcdvimcSuggestions = a})

-- | The list card response for Actions on Google.
gcdvimcListSelect :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageListSelect)
gcdvimcListSelect
  = lens _gcdvimcListSelect
      (\ s a -> s{_gcdvimcListSelect = a})

-- | The media content card for Actions on Google.
gcdvimcMediaContent :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageMediaContent)
gcdvimcMediaContent
  = lens _gcdvimcMediaContent
      (\ s a -> s{_gcdvimcMediaContent = a})

-- | The basic card response for Actions on Google.
gcdvimcBasicCard :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageBasicCard)
gcdvimcBasicCard
  = lens _gcdvimcBasicCard
      (\ s a -> s{_gcdvimcBasicCard = a})

-- | The quick replies response.
gcdvimcQuickReplies :: Lens' GoogleCloudDialogflowV2IntentMessage (Maybe GoogleCloudDialogflowV2IntentMessageQuickReplies)
gcdvimcQuickReplies
  = lens _gcdvimcQuickReplies
      (\ s a -> s{_gcdvimcQuickReplies = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessage
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2IntentMessage"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessage' <$>
                   (o .:? "card") <*> (o .:? "image") <*>
                     (o .:? "platform")
                     <*> (o .:? "browseCarouselCard")
                     <*> (o .:? "tableCard")
                     <*> (o .:? "linkOutSuggestion")
                     <*> (o .:? "text")
                     <*> (o .:? "carouselSelect")
                     <*> (o .:? "simpleResponses")
                     <*> (o .:? "payload")
                     <*> (o .:? "suggestions")
                     <*> (o .:? "listSelect")
                     <*> (o .:? "mediaContent")
                     <*> (o .:? "basicCard")
                     <*> (o .:? "quickReplies"))

instance ToJSON GoogleCloudDialogflowV2IntentMessage
         where
        toJSON GoogleCloudDialogflowV2IntentMessage'{..}
          = object
              (catMaybes
                 [("card" .=) <$> _gcdvimcCard,
                  ("image" .=) <$> _gcdvimcImage,
                  ("platform" .=) <$> _gcdvimcPlatform,
                  ("browseCarouselCard" .=) <$>
                    _gcdvimcBrowseCarouselCard,
                  ("tableCard" .=) <$> _gcdvimcTableCard,
                  ("linkOutSuggestion" .=) <$>
                    _gcdvimcLinkOutSuggestion,
                  ("text" .=) <$> _gcdvimcText,
                  ("carouselSelect" .=) <$> _gcdvimcCarouselSelect,
                  ("simpleResponses" .=) <$> _gcdvimcSimpleResponses,
                  ("payload" .=) <$> _gcdvimcPayload,
                  ("suggestions" .=) <$> _gcdvimcSuggestions,
                  ("listSelect" .=) <$> _gcdvimcListSelect,
                  ("mediaContent" .=) <$> _gcdvimcMediaContent,
                  ("basicCard" .=) <$> _gcdvimcBasicCard,
                  ("quickReplies" .=) <$> _gcdvimcQuickReplies])

-- | The response message for Environments.LookupEnvironmentHistory.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse' smart constructor.
data GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse =
  GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse'
    { _gcdcvlehrNextPageToken :: !(Maybe Text)
    , _gcdcvlehrEnvironments  :: !(Maybe [GoogleCloudDialogflowCxV3beta1Environment])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvlehrNextPageToken'
--
-- * 'gcdcvlehrEnvironments'
googleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
    :: GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
googleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse =
  GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse'
    {_gcdcvlehrNextPageToken = Nothing, _gcdcvlehrEnvironments = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
gcdcvlehrNextPageToken :: Lens' GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse (Maybe Text)
gcdcvlehrNextPageToken
  = lens _gcdcvlehrNextPageToken
      (\ s a -> s{_gcdcvlehrNextPageToken = a})

-- | Represents a list of snapshots for an environment. Time of the snapshots
-- is stored in \`update_time\`.
gcdcvlehrEnvironments :: Lens' GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse [GoogleCloudDialogflowCxV3beta1Environment]
gcdcvlehrEnvironments
  = lens _gcdcvlehrEnvironments
      (\ s a -> s{_gcdcvlehrEnvironments = a})
      . _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse'
                   <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "environments" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _gcdcvlehrNextPageToken,
                  ("environments" .=) <$> _gcdcvlehrEnvironments])

-- | The card for presenting a carousel of options to select from.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageCarouselSelect' smart constructor.
newtype GoogleCloudDialogflowV2IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2IntentMessageCarouselSelect'
    { _gooItems :: Maybe [GoogleCloudDialogflowV2IntentMessageCarouselSelectItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageCarouselSelect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooItems'
googleCloudDialogflowV2IntentMessageCarouselSelect
    :: GoogleCloudDialogflowV2IntentMessageCarouselSelect
googleCloudDialogflowV2IntentMessageCarouselSelect =
  GoogleCloudDialogflowV2IntentMessageCarouselSelect' {_gooItems = Nothing}


-- | Required. Carousel items.
gooItems :: Lens' GoogleCloudDialogflowV2IntentMessageCarouselSelect [GoogleCloudDialogflowV2IntentMessageCarouselSelectItem]
gooItems
  = lens _gooItems (\ s a -> s{_gooItems = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelect
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageCarouselSelect"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageCarouselSelect'
                   <$> (o .:? "items" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageCarouselSelect
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageCarouselSelect'{..}
          = object (catMaybes [("items" .=) <$> _gooItems])

-- | The sentiment, such as positive\/negative feeling or association, for a
-- unit of analysis, such as the query text.
--
-- /See:/ 'googleCloudDialogflowV2Sentiment' smart constructor.
data GoogleCloudDialogflowV2Sentiment =
  GoogleCloudDialogflowV2Sentiment'
    { _gScore     :: !(Maybe (Textual Double))
    , _gMagnitude :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2Sentiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gScore'
--
-- * 'gMagnitude'
googleCloudDialogflowV2Sentiment
    :: GoogleCloudDialogflowV2Sentiment
googleCloudDialogflowV2Sentiment =
  GoogleCloudDialogflowV2Sentiment' {_gScore = Nothing, _gMagnitude = Nothing}


-- | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
-- sentiment).
gScore :: Lens' GoogleCloudDialogflowV2Sentiment (Maybe Double)
gScore
  = lens _gScore (\ s a -> s{_gScore = a}) .
      mapping _Coerce

-- | A non-negative number in the [0, +inf) range, which represents the
-- absolute magnitude of sentiment, regardless of score (positive or
-- negative).
gMagnitude :: Lens' GoogleCloudDialogflowV2Sentiment (Maybe Double)
gMagnitude
  = lens _gMagnitude (\ s a -> s{_gMagnitude = a}) .
      mapping _Coerce

instance FromJSON GoogleCloudDialogflowV2Sentiment
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2Sentiment"
              (\ o ->
                 GoogleCloudDialogflowV2Sentiment' <$>
                   (o .:? "score") <*> (o .:? "magnitude"))

instance ToJSON GoogleCloudDialogflowV2Sentiment
         where
        toJSON GoogleCloudDialogflowV2Sentiment'{..}
          = object
              (catMaybes
                 [("score" .=) <$> _gScore,
                  ("magnitude" .=) <$> _gMagnitude])

-- | A form is a data model that groups related parameters that can be
-- collected from the user. The process in which the agent prompts the user
-- and collects parameter values from the user is called form filling. A
-- form can be added to a page. When form filling is done, the filled
-- parameters will be written to the session.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1Form' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1Form =
  GoogleCloudDialogflowCxV3beta1Form'
    { _gcdcvfParameters :: Maybe [GoogleCloudDialogflowCxV3beta1FormParameter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1Form' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvfParameters'
googleCloudDialogflowCxV3beta1Form
    :: GoogleCloudDialogflowCxV3beta1Form
googleCloudDialogflowCxV3beta1Form =
  GoogleCloudDialogflowCxV3beta1Form' {_gcdcvfParameters = Nothing}


-- | Parameters to collect from the user.
gcdcvfParameters :: Lens' GoogleCloudDialogflowCxV3beta1Form [GoogleCloudDialogflowCxV3beta1FormParameter]
gcdcvfParameters
  = lens _gcdcvfParameters
      (\ s a -> s{_gcdcvfParameters = a})
      . _Default
      . _Coerce

instance FromJSON GoogleCloudDialogflowCxV3beta1Form
         where
        parseJSON
          = withObject "GoogleCloudDialogflowCxV3beta1Form"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1Form' <$>
                   (o .:? "parameters" .!= mempty))

instance ToJSON GoogleCloudDialogflowCxV3beta1Form
         where
        toJSON GoogleCloudDialogflowCxV3beta1Form'{..}
          = object
              (catMaybes [("parameters" .=) <$> _gcdcvfParameters])

-- | A transition route specifies a intent that can be matched and\/or a data
-- condition that can be evaluated during a session. When a specified
-- transition is matched, the following actions are taken in order: * If
-- there is a \`trigger_fulfillment\` associated with the transition, it
-- will be called. * If there is a \`target_page\` associated with the
-- transition, the session will transition into the specified page. * If
-- there is a \`target_flow\` associated with the transition, the session
-- will transition into the specified flow.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1TransitionRoute' smart constructor.
data GoogleCloudDialogflowCxV3beta1TransitionRoute =
  GoogleCloudDialogflowCxV3beta1TransitionRoute'
    { _gcdcvtrTriggerFulfillment :: !(Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
    , _gcdcvtrIntent             :: !(Maybe Text)
    , _gcdcvtrName               :: !(Maybe Text)
    , _gcdcvtrTargetPage         :: !(Maybe Text)
    , _gcdcvtrCondition          :: !(Maybe Text)
    , _gcdcvtrTargetFlow         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1TransitionRoute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvtrTriggerFulfillment'
--
-- * 'gcdcvtrIntent'
--
-- * 'gcdcvtrName'
--
-- * 'gcdcvtrTargetPage'
--
-- * 'gcdcvtrCondition'
--
-- * 'gcdcvtrTargetFlow'
googleCloudDialogflowCxV3beta1TransitionRoute
    :: GoogleCloudDialogflowCxV3beta1TransitionRoute
googleCloudDialogflowCxV3beta1TransitionRoute =
  GoogleCloudDialogflowCxV3beta1TransitionRoute'
    { _gcdcvtrTriggerFulfillment = Nothing
    , _gcdcvtrIntent = Nothing
    , _gcdcvtrName = Nothing
    , _gcdcvtrTargetPage = Nothing
    , _gcdcvtrCondition = Nothing
    , _gcdcvtrTargetFlow = Nothing
    }


-- | The fulfillment to call when the condition is satisfied. At least one of
-- \`trigger_fulfillment\` and \`target\` must be specified. When both are
-- defined, \`trigger_fulfillment\` is executed first.
gcdcvtrTriggerFulfillment :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRoute (Maybe GoogleCloudDialogflowCxV3beta1Fulfillment)
gcdcvtrTriggerFulfillment
  = lens _gcdcvtrTriggerFulfillment
      (\ s a -> s{_gcdcvtrTriggerFulfillment = a})

-- | The unique identifier of an Intent. Format:
-- \`projects\/\/locations\/\/agents\/\/intents\/\`. Indicates that the
-- transition can only happen when the given intent is matched. At least
-- one of \`intent\` or \`condition\` must be specified. When both
-- \`intent\` and \`condition\` are specified, the transition can only
-- happen when both are fulfilled.
gcdcvtrIntent :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRoute (Maybe Text)
gcdcvtrIntent
  = lens _gcdcvtrIntent
      (\ s a -> s{_gcdcvtrIntent = a})

-- | Output only. The unique identifier of this transition route.
gcdcvtrName :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRoute (Maybe Text)
gcdcvtrName
  = lens _gcdcvtrName (\ s a -> s{_gcdcvtrName = a})

-- | The target page to transition to. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/pages\/\`.
gcdcvtrTargetPage :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRoute (Maybe Text)
gcdcvtrTargetPage
  = lens _gcdcvtrTargetPage
      (\ s a -> s{_gcdcvtrTargetPage = a})

-- | The condition to evaluate against form parameters or session parameters.
-- See the [conditions
-- reference](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/condition).
-- At least one of \`intent\` or \`condition\` must be specified. When both
-- \`intent\` and \`condition\` are specified, the transition can only
-- happen when both are fulfilled.
gcdcvtrCondition :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRoute (Maybe Text)
gcdcvtrCondition
  = lens _gcdcvtrCondition
      (\ s a -> s{_gcdcvtrCondition = a})

-- | The target flow to transition to. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
gcdcvtrTargetFlow :: Lens' GoogleCloudDialogflowCxV3beta1TransitionRoute (Maybe Text)
gcdcvtrTargetFlow
  = lens _gcdcvtrTargetFlow
      (\ s a -> s{_gcdcvtrTargetFlow = a})

instance FromJSON
           GoogleCloudDialogflowCxV3beta1TransitionRoute
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1TransitionRoute"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1TransitionRoute' <$>
                   (o .:? "triggerFulfillment") <*> (o .:? "intent") <*>
                     (o .:? "name")
                     <*> (o .:? "targetPage")
                     <*> (o .:? "condition")
                     <*> (o .:? "targetFlow"))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1TransitionRoute
         where
        toJSON
          GoogleCloudDialogflowCxV3beta1TransitionRoute'{..}
          = object
              (catMaybes
                 [("triggerFulfillment" .=) <$>
                    _gcdcvtrTriggerFulfillment,
                  ("intent" .=) <$> _gcdcvtrIntent,
                  ("name" .=) <$> _gcdcvtrName,
                  ("targetPage" .=) <$> _gcdcvtrTargetPage,
                  ("condition" .=) <$> _gcdcvtrCondition,
                  ("targetFlow" .=) <$> _gcdcvtrTargetFlow])

-- | Value to append directly to QueryResult.webhook_payloads.
--
-- /See:/ 'googleCloudDialogflowCxV3beta1WebhookResponsePayload' smart constructor.
newtype GoogleCloudDialogflowCxV3beta1WebhookResponsePayload =
  GoogleCloudDialogflowCxV3beta1WebhookResponsePayload'
    { _gcdcvwrpcAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowCxV3beta1WebhookResponsePayload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdcvwrpcAddtional'
googleCloudDialogflowCxV3beta1WebhookResponsePayload
    :: HashMap Text JSONValue -- ^ 'gcdcvwrpcAddtional'
    -> GoogleCloudDialogflowCxV3beta1WebhookResponsePayload
googleCloudDialogflowCxV3beta1WebhookResponsePayload pGcdcvwrpcAddtional_ =
  GoogleCloudDialogflowCxV3beta1WebhookResponsePayload'
    {_gcdcvwrpcAddtional = _Coerce # pGcdcvwrpcAddtional_}


-- | Properties of the object.
gcdcvwrpcAddtional :: Lens' GoogleCloudDialogflowCxV3beta1WebhookResponsePayload (HashMap Text JSONValue)
gcdcvwrpcAddtional
  = lens _gcdcvwrpcAddtional
      (\ s a -> s{_gcdcvwrpcAddtional = a})
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowCxV3beta1WebhookResponsePayload
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowCxV3beta1WebhookResponsePayload"
              (\ o ->
                 GoogleCloudDialogflowCxV3beta1WebhookResponsePayload'
                   <$> (parseJSONObject o))

instance ToJSON
           GoogleCloudDialogflowCxV3beta1WebhookResponsePayload
         where
        toJSON = toJSON . _gcdcvwrpcAddtional

-- | Additional info about the select item for when it is triggered in a
-- dialog.
--
-- /See:/ 'googleCloudDialogflowV2beta1IntentMessageSelectItemInfo' smart constructor.
data GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'
    { _gooKey      :: !(Maybe Text)
    , _gooSynonyms :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gooKey'
--
-- * 'gooSynonyms'
googleCloudDialogflowV2beta1IntentMessageSelectItemInfo
    :: GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
googleCloudDialogflowV2beta1IntentMessageSelectItemInfo =
  GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'
    {_gooKey = Nothing, _gooSynonyms = Nothing}


-- | Required. A unique key that will be sent back to the agent if this
-- response is given.
gooKey :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo (Maybe Text)
gooKey = lens _gooKey (\ s a -> s{_gooKey = a})

-- | Optional. A list of synonyms that can also be used to trigger this item
-- in dialog.
gooSynonyms :: Lens' GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo [Text]
gooSynonyms
  = lens _gooSynonyms (\ s a -> s{_gooSynonyms = a}) .
      _Default
      . _Coerce

instance FromJSON
           GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo"
              (\ o ->
                 GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'
                   <$> (o .:? "key") <*> (o .:? "synonyms" .!= mempty))

instance ToJSON
           GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
         where
        toJSON
          GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo'{..}
          = object
              (catMaybes
                 [("key" .=) <$> _gooKey,
                  ("synonyms" .=) <$> _gooSynonyms])

-- | An intent categorizes an end-user\'s intention for one conversation
-- turn. For each agent, you define many intents, where your combined
-- intents can handle a complete conversation. When an end-user writes or
-- says something, referred to as an end-user expression or end-user input,
-- Dialogflow matches the end-user input to the best intent in your agent.
-- Matching an intent is also known as intent classification. For more
-- information, see the [intent
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/intents-overview).
--
-- /See:/ 'googleCloudDialogflowV2beta1Intent' smart constructor.
data GoogleCloudDialogflowV2beta1Intent =
  GoogleCloudDialogflowV2beta1Intent'
    { _gcdvicDefaultResponsePlatforms :: !(Maybe [GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem])
    , _gcdvicWebhookState             :: !(Maybe GoogleCloudDialogflowV2beta1IntentWebhookState)
    , _gcdvicMlEnabled                :: !(Maybe Bool)
    , _gcdvicPriority                 :: !(Maybe (Textual Int32))
    , _gcdvicAction                   :: !(Maybe Text)
    , _gcdvicRootFollowupIntentName   :: !(Maybe Text)
    , _gcdvicName                     :: !(Maybe Text)
    , _gcdvicEvents                   :: !(Maybe [Text])
    , _gcdvicParameters               :: !(Maybe [GoogleCloudDialogflowV2beta1IntentParameter])
    , _gcdvicDisplayName              :: !(Maybe Text)
    , _gcdvicInputContextNames        :: !(Maybe [Text])
    , _gcdvicEndInteraction           :: !(Maybe Bool)
    , _gcdvicMessages                 :: !(Maybe [GoogleCloudDialogflowV2beta1IntentMessage])
    , _gcdvicParentFollowupIntentName :: !(Maybe Text)
    , _gcdvicOutputContexts           :: !(Maybe [GoogleCloudDialogflowV2beta1Context])
    , _gcdvicTrainingPhrases          :: !(Maybe [GoogleCloudDialogflowV2beta1IntentTrainingPhrase])
    , _gcdvicFollowupIntentInfo       :: !(Maybe [GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo])
    , _gcdvicIsFallback               :: !(Maybe Bool)
    , _gcdvicMlDisabled               :: !(Maybe Bool)
    , _gcdvicResetContexts            :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2beta1Intent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvicDefaultResponsePlatforms'
--
-- * 'gcdvicWebhookState'
--
-- * 'gcdvicMlEnabled'
--
-- * 'gcdvicPriority'
--
-- * 'gcdvicAction'
--
-- * 'gcdvicRootFollowupIntentName'
--
-- * 'gcdvicName'
--
-- * 'gcdvicEvents'
--
-- * 'gcdvicParameters'
--
-- * 'gcdvicDisplayName'
--
-- * 'gcdvicInputContextNames'
--
-- * 'gcdvicEndInteraction'
--
-- * 'gcdvicMessages'
--
-- * 'gcdvicParentFollowupIntentName'
--
-- * 'gcdvicOutputContexts'
--
-- * 'gcdvicTrainingPhrases'
--
-- * 'gcdvicFollowupIntentInfo'
--
-- * 'gcdvicIsFallback'
--
-- * 'gcdvicMlDisabled'
--
-- * 'gcdvicResetContexts'
googleCloudDialogflowV2beta1Intent
    :: GoogleCloudDialogflowV2beta1Intent
googleCloudDialogflowV2beta1Intent =
  GoogleCloudDialogflowV2beta1Intent'
    { _gcdvicDefaultResponsePlatforms = Nothing
    , _gcdvicWebhookState = Nothing
    , _gcdvicMlEnabled = Nothing
    , _gcdvicPriority = Nothing
    , _gcdvicAction = Nothing
    , _gcdvicRootFollowupIntentName = Nothing
    , _gcdvicName = Nothing
    , _gcdvicEvents = Nothing
    , _gcdvicParameters = Nothing
    , _gcdvicDisplayName = Nothing
    , _gcdvicInputContextNames = Nothing
    , _gcdvicEndInteraction = Nothing
    , _gcdvicMessages = Nothing
    , _gcdvicParentFollowupIntentName = Nothing
    , _gcdvicOutputContexts = Nothing
    , _gcdvicTrainingPhrases = Nothing
    , _gcdvicFollowupIntentInfo = Nothing
    , _gcdvicIsFallback = Nothing
    , _gcdvicMlDisabled = Nothing
    , _gcdvicResetContexts = Nothing
    }


-- | Optional. The list of platforms for which the first responses will be
-- copied from the messages in PLATFORM_UNSPECIFIED (i.e. default
-- platform).
gcdvicDefaultResponsePlatforms :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentDefaultResponsePlatformsItem]
gcdvicDefaultResponsePlatforms
  = lens _gcdvicDefaultResponsePlatforms
      (\ s a -> s{_gcdvicDefaultResponsePlatforms = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether webhooks are enabled for the intent.
gcdvicWebhookState :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe GoogleCloudDialogflowV2beta1IntentWebhookState)
gcdvicWebhookState
  = lens _gcdvicWebhookState
      (\ s a -> s{_gcdvicWebhookState = a})

-- | Optional. Indicates whether Machine Learning is enabled for the intent.
-- Note: If \`ml_enabled\` setting is set to false, then this intent is not
-- taken into account during inference in \`ML ONLY\` match mode. Also,
-- auto-markup in the UI is turned off. DEPRECATED! Please use
-- \`ml_disabled\` field instead. NOTE: If both \`ml_enabled\` and
-- \`ml_disabled\` are either not set or false, then the default value is
-- determined as follows: - Before April 15th, 2018 the default is:
-- ml_enabled = false \/ ml_disabled = true. - After April 15th, 2018 the
-- default is: ml_enabled = true \/ ml_disabled = false.
gcdvicMlEnabled :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicMlEnabled
  = lens _gcdvicMlEnabled
      (\ s a -> s{_gcdvicMlEnabled = a})

-- | Optional. The priority of this intent. Higher numbers represent higher
-- priorities. - If the supplied value is unspecified or 0, the service
-- translates the value to 500,000, which corresponds to the \`Normal\`
-- priority in the console. - If the supplied value is negative, the intent
-- is ignored in runtime detect intent requests.
gcdvicPriority :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Int32)
gcdvicPriority
  = lens _gcdvicPriority
      (\ s a -> s{_gcdvicPriority = a})
      . mapping _Coerce

-- | Optional. The name of the action associated with the intent. Note: The
-- action name must not contain whitespaces.
gcdvicAction :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicAction
  = lens _gcdvicAction (\ s a -> s{_gcdvicAction = a})

-- | Output only. The unique identifier of the root intent in the chain of
-- followup intents. It identifies the correct followup intents chain for
-- this intent. Format: \`projects\/\/agent\/intents\/\`.
gcdvicRootFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicRootFollowupIntentName
  = lens _gcdvicRootFollowupIntentName
      (\ s a -> s{_gcdvicRootFollowupIntentName = a})

-- | Optional. The unique identifier of this intent. Required for
-- Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported
-- formats: - \`projects\/\/agent\/intents\/\` -
-- \`projects\/\/locations\/\/agent\/intents\/\`
gcdvicName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicName
  = lens _gcdvicName (\ s a -> s{_gcdvicName = a})

-- | Optional. The collection of event names that trigger the intent. If the
-- collection of input contexts is not empty, all of the contexts must be
-- present in the active user session for an event to trigger this intent.
-- Event names are limited to 150 characters.
gcdvicEvents :: Lens' GoogleCloudDialogflowV2beta1Intent [Text]
gcdvicEvents
  = lens _gcdvicEvents (\ s a -> s{_gcdvicEvents = a})
      . _Default
      . _Coerce

-- | Optional. The collection of parameters associated with the intent.
gcdvicParameters :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentParameter]
gcdvicParameters
  = lens _gcdvicParameters
      (\ s a -> s{_gcdvicParameters = a})
      . _Default
      . _Coerce

-- | Required. The name of this intent.
gcdvicDisplayName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicDisplayName
  = lens _gcdvicDisplayName
      (\ s a -> s{_gcdvicDisplayName = a})

-- | Optional. The list of context names required for this intent to be
-- triggered. Formats: - \`projects\/\/agent\/sessions\/-\/contexts\/\` -
-- \`projects\/\/locations\/\/agent\/sessions\/-\/contexts\/\`
gcdvicInputContextNames :: Lens' GoogleCloudDialogflowV2beta1Intent [Text]
gcdvicInputContextNames
  = lens _gcdvicInputContextNames
      (\ s a -> s{_gcdvicInputContextNames = a})
      . _Default
      . _Coerce

-- | Optional. Indicates that this intent ends an interaction. Some
-- integrations (e.g., Actions on Google or Dialogflow phone gateway) use
-- this information to close interaction with an end user. Default is
-- false.
gcdvicEndInteraction :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicEndInteraction
  = lens _gcdvicEndInteraction
      (\ s a -> s{_gcdvicEndInteraction = a})

-- | Optional. The collection of rich messages corresponding to the
-- \`Response\` field in the Dialogflow console.
gcdvicMessages :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentMessage]
gcdvicMessages
  = lens _gcdvicMessages
      (\ s a -> s{_gcdvicMessages = a})
      . _Default
      . _Coerce

-- | Optional. The unique identifier of the parent intent in the chain of
-- followup intents. You can set this field when creating an intent, for
-- example with CreateIntent or BatchUpdateIntents, in order to make this
-- intent a followup intent. It identifies the parent followup intent.
-- Format: \`projects\/\/agent\/intents\/\`.
gcdvicParentFollowupIntentName :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Text)
gcdvicParentFollowupIntentName
  = lens _gcdvicParentFollowupIntentName
      (\ s a -> s{_gcdvicParentFollowupIntentName = a})

-- | Optional. The collection of contexts that are activated when the intent
-- is matched. Context messages in this collection should not set the
-- parameters field. Setting the \`lifespan_count\` to 0 will reset the
-- context when the intent is matched. Format:
-- \`projects\/\/agent\/sessions\/-\/contexts\/\`.
gcdvicOutputContexts :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1Context]
gcdvicOutputContexts
  = lens _gcdvicOutputContexts
      (\ s a -> s{_gcdvicOutputContexts = a})
      . _Default
      . _Coerce

-- | Optional. The collection of examples that the agent is trained on.
gcdvicTrainingPhrases :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentTrainingPhrase]
gcdvicTrainingPhrases
  = lens _gcdvicTrainingPhrases
      (\ s a -> s{_gcdvicTrainingPhrases = a})
      . _Default
      . _Coerce

-- | Output only. Information about all followup intents that have this
-- intent as a direct or indirect parent. We populate this field only in
-- the output.
gcdvicFollowupIntentInfo :: Lens' GoogleCloudDialogflowV2beta1Intent [GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo]
gcdvicFollowupIntentInfo
  = lens _gcdvicFollowupIntentInfo
      (\ s a -> s{_gcdvicFollowupIntentInfo = a})
      . _Default
      . _Coerce

-- | Optional. Indicates whether this is a fallback intent.
gcdvicIsFallback :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicIsFallback
  = lens _gcdvicIsFallback
      (\ s a -> s{_gcdvicIsFallback = a})

-- | Optional. Indicates whether Machine Learning is disabled for the intent.
-- Note: If \`ml_disabled\` setting is set to true, then this intent is not
-- taken into account during inference in \`ML ONLY\` match mode. Also,
-- auto-markup in the UI is turned off.
gcdvicMlDisabled :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicMlDisabled
  = lens _gcdvicMlDisabled
      (\ s a -> s{_gcdvicMlDisabled = a})

-- | Optional. Indicates whether to delete all contexts in the current
-- session when this intent is matched.
gcdvicResetContexts :: Lens' GoogleCloudDialogflowV2beta1Intent (Maybe Bool)
gcdvicResetContexts
  = lens _gcdvicResetContexts
      (\ s a -> s{_gcdvicResetContexts = a})

instance FromJSON GoogleCloudDialogflowV2beta1Intent
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2beta1Intent"
              (\ o ->
                 GoogleCloudDialogflowV2beta1Intent' <$>
                   (o .:? "defaultResponsePlatforms" .!= mempty) <*>
                     (o .:? "webhookState")
                     <*> (o .:? "mlEnabled")
                     <*> (o .:? "priority")
                     <*> (o .:? "action")
                     <*> (o .:? "rootFollowupIntentName")
                     <*> (o .:? "name")
                     <*> (o .:? "events" .!= mempty)
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "displayName")
                     <*> (o .:? "inputContextNames" .!= mempty)
                     <*> (o .:? "endInteraction")
                     <*> (o .:? "messages" .!= mempty)
                     <*> (o .:? "parentFollowupIntentName")
                     <*> (o .:? "outputContexts" .!= mempty)
                     <*> (o .:? "trainingPhrases" .!= mempty)
                     <*> (o .:? "followupIntentInfo" .!= mempty)
                     <*> (o .:? "isFallback")
                     <*> (o .:? "mlDisabled")
                     <*> (o .:? "resetContexts"))

instance ToJSON GoogleCloudDialogflowV2beta1Intent
         where
        toJSON GoogleCloudDialogflowV2beta1Intent'{..}
          = object
              (catMaybes
                 [("defaultResponsePlatforms" .=) <$>
                    _gcdvicDefaultResponsePlatforms,
                  ("webhookState" .=) <$> _gcdvicWebhookState,
                  ("mlEnabled" .=) <$> _gcdvicMlEnabled,
                  ("priority" .=) <$> _gcdvicPriority,
                  ("action" .=) <$> _gcdvicAction,
                  ("rootFollowupIntentName" .=) <$>
                    _gcdvicRootFollowupIntentName,
                  ("name" .=) <$> _gcdvicName,
                  ("events" .=) <$> _gcdvicEvents,
                  ("parameters" .=) <$> _gcdvicParameters,
                  ("displayName" .=) <$> _gcdvicDisplayName,
                  ("inputContextNames" .=) <$>
                    _gcdvicInputContextNames,
                  ("endInteraction" .=) <$> _gcdvicEndInteraction,
                  ("messages" .=) <$> _gcdvicMessages,
                  ("parentFollowupIntentName" .=) <$>
                    _gcdvicParentFollowupIntentName,
                  ("outputContexts" .=) <$> _gcdvicOutputContexts,
                  ("trainingPhrases" .=) <$> _gcdvicTrainingPhrases,
                  ("followupIntentInfo" .=) <$>
                    _gcdvicFollowupIntentInfo,
                  ("isFallback" .=) <$> _gcdvicIsFallback,
                  ("mlDisabled" .=) <$> _gcdvicMlDisabled,
                  ("resetContexts" .=) <$> _gcdvicResetContexts])

-- | Dialogflow contexts are similar to natural language context. If a person
-- says to you \"they are orange\", you need context in order to understand
-- what \"they\" is referring to. Similarly, for Dialogflow to handle an
-- end-user expression like that, it needs to be provided with context in
-- order to correctly match an intent. Using contexts, you can control the
-- flow of a conversation. You can configure contexts for an intent by
-- setting input and output contexts, which are identified by string names.
-- When an intent is matched, any configured output contexts for that
-- intent become active. While any contexts are active, Dialogflow is more
-- likely to match intents that are configured with input contexts that
-- correspond to the currently active contexts. For more information about
-- context, see the [Contexts
-- guide](https:\/\/cloud.google.com\/dialogflow\/docs\/contexts-overview).
--
-- /See:/ 'googleCloudDialogflowV2Context' smart constructor.
data GoogleCloudDialogflowV2Context =
  GoogleCloudDialogflowV2Context'
    { _gcdvccLifespanCount :: !(Maybe (Textual Int32))
    , _gcdvccName          :: !(Maybe Text)
    , _gcdvccParameters    :: !(Maybe GoogleCloudDialogflowV2ContextParameters)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2Context' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvccLifespanCount'
--
-- * 'gcdvccName'
--
-- * 'gcdvccParameters'
googleCloudDialogflowV2Context
    :: GoogleCloudDialogflowV2Context
googleCloudDialogflowV2Context =
  GoogleCloudDialogflowV2Context'
    { _gcdvccLifespanCount = Nothing
    , _gcdvccName = Nothing
    , _gcdvccParameters = Nothing
    }


-- | Optional. The number of conversational query requests after which the
-- context expires. The default is \`0\`. If set to \`0\`, the context
-- expires immediately. Contexts expire automatically after 20 minutes if
-- there are no matching queries.
gcdvccLifespanCount :: Lens' GoogleCloudDialogflowV2Context (Maybe Int32)
gcdvccLifespanCount
  = lens _gcdvccLifespanCount
      (\ s a -> s{_gcdvccLifespanCount = a})
      . mapping _Coerce

-- | Required. The unique identifier of the context. Format:
-- \`projects\/\/agent\/sessions\/\/contexts\/\`, or
-- \`projects\/\/agent\/environments\/\/users\/\/sessions\/\/contexts\/\`.
-- The \`Context ID\` is always converted to lowercase, may only contain
-- characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If
-- \`Environment ID\` is not specified, we assume default \'draft\'
-- environment. If \`User ID\` is not specified, we assume default \'-\'
-- user. The following context names are reserved for internal use by
-- Dialogflow. You should not use these contexts or create contexts with
-- these names: * \`__system_counters__\` * \`*_id_dialog_context\` *
-- \`*_dialog_params_size\`
gcdvccName :: Lens' GoogleCloudDialogflowV2Context (Maybe Text)
gcdvccName
  = lens _gcdvccName (\ s a -> s{_gcdvccName = a})

-- | Optional. The collection of parameters associated with this context.
-- Depending on your protocol or client library language, this is a map,
-- associative array, symbol table, dictionary, or JSON object composed of
-- a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey
-- value: parameter name - MapValue type: - If parameter\'s entity type is
-- a composite entity: map - Else: string or number, depending on parameter
-- value type - MapValue value: - If parameter\'s entity type is a
-- composite entity: map from composite entity property names to property
-- values - Else: parameter value
gcdvccParameters :: Lens' GoogleCloudDialogflowV2Context (Maybe GoogleCloudDialogflowV2ContextParameters)
gcdvccParameters
  = lens _gcdvccParameters
      (\ s a -> s{_gcdvccParameters = a})

instance FromJSON GoogleCloudDialogflowV2Context
         where
        parseJSON
          = withObject "GoogleCloudDialogflowV2Context"
              (\ o ->
                 GoogleCloudDialogflowV2Context' <$>
                   (o .:? "lifespanCount") <*> (o .:? "name") <*>
                     (o .:? "parameters"))

instance ToJSON GoogleCloudDialogflowV2Context where
        toJSON GoogleCloudDialogflowV2Context'{..}
          = object
              (catMaybes
                 [("lifespanCount" .=) <$> _gcdvccLifespanCount,
                  ("name" .=) <$> _gcdvccName,
                  ("parameters" .=) <$> _gcdvccParameters])

-- | The button object that appears at the bottom of a card.
--
-- /See:/ 'googleCloudDialogflowV2IntentMessageBasicCardButton' smart constructor.
data GoogleCloudDialogflowV2IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2IntentMessageBasicCardButton'
    { _gcdvimbcbcOpenURIAction :: !(Maybe GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction)
    , _gcdvimbcbcTitle         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleCloudDialogflowV2IntentMessageBasicCardButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdvimbcbcOpenURIAction'
--
-- * 'gcdvimbcbcTitle'
googleCloudDialogflowV2IntentMessageBasicCardButton
    :: GoogleCloudDialogflowV2IntentMessageBasicCardButton
googleCloudDialogflowV2IntentMessageBasicCardButton =
  GoogleCloudDialogflowV2IntentMessageBasicCardButton'
    {_gcdvimbcbcOpenURIAction = Nothing, _gcdvimbcbcTitle = Nothing}


-- | Required. Action to take when a user taps on the button.
gcdvimbcbcOpenURIAction :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCardButton (Maybe GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenURIAction)
gcdvimbcbcOpenURIAction
  = lens _gcdvimbcbcOpenURIAction
      (\ s a -> s{_gcdvimbcbcOpenURIAction = a})

-- | Required. The title of the button.
gcdvimbcbcTitle :: Lens' GoogleCloudDialogflowV2IntentMessageBasicCardButton (Maybe Text)
gcdvimbcbcTitle
  = lens _gcdvimbcbcTitle
      (\ s a -> s{_gcdvimbcbcTitle = a})

instance FromJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButton
         where
        parseJSON
          = withObject
              "GoogleCloudDialogflowV2IntentMessageBasicCardButton"
              (\ o ->
                 GoogleCloudDialogflowV2IntentMessageBasicCardButton'
                   <$> (o .:? "openUriAction") <*> (o .:? "title"))

instance ToJSON
           GoogleCloudDialogflowV2IntentMessageBasicCardButton
         where
        toJSON
          GoogleCloudDialogflowV2IntentMessageBasicCardButton'{..}
          = object
              (catMaybes
                 [("openUriAction" .=) <$> _gcdvimbcbcOpenURIAction,
                  ("title" .=) <$> _gcdvimbcbcTitle])

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngineTaskQueue.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngineTaskQueue.Types.Product where

import           Network.Google.AppEngineTaskQueue.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'taskQueue' smart constructor.
data TaskQueue = TaskQueue
    { _tqKind      :: !Text
    , _tqStats     :: !(Maybe Stats)
    , _tqMaxLeases :: !(Maybe Int32)
    , _tqId        :: !(Maybe Text)
    , _tqACL       :: !(Maybe ACL)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskQueue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tqKind'
--
-- * 'tqStats'
--
-- * 'tqMaxLeases'
--
-- * 'tqId'
--
-- * 'tqACL'
taskQueue
    :: TaskQueue
taskQueue =
    TaskQueue
    { _tqKind = "taskqueues#taskqueue"
    , _tqStats = Nothing
    , _tqMaxLeases = Nothing
    , _tqId = Nothing
    , _tqACL = Nothing
    }

-- | The kind of REST object returned, in this case taskqueue.
tqKind :: Lens' TaskQueue Text
tqKind = lens _tqKind (\ s a -> s{_tqKind = a})

-- | Statistics for the TaskQueue object in question.
tqStats :: Lens' TaskQueue (Maybe Stats)
tqStats = lens _tqStats (\ s a -> s{_tqStats = a})

-- | The number of times we should lease out tasks before giving up on them.
-- If unset we lease them out forever until a worker deletes the task.
tqMaxLeases :: Lens' TaskQueue (Maybe Int32)
tqMaxLeases
  = lens _tqMaxLeases (\ s a -> s{_tqMaxLeases = a})

-- | Name of the taskqueue.
tqId :: Lens' TaskQueue (Maybe Text)
tqId = lens _tqId (\ s a -> s{_tqId = a})

-- | ACLs that are applicable to this TaskQueue object.
tqACL :: Lens' TaskQueue (Maybe ACL)
tqACL = lens _tqACL (\ s a -> s{_tqACL = a})

instance FromJSON TaskQueue where
        parseJSON
          = withObject "TaskQueue"
              (\ o ->
                 TaskQueue <$>
                   (o .:? "kind" .!= "taskqueues#taskqueue") <*>
                     (o .:? "stats")
                     <*> (o .:? "maxLeases")
                     <*> (o .:? "id")
                     <*> (o .:? "acl"))

instance ToJSON TaskQueue where
        toJSON TaskQueue{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tqKind), ("stats" .=) <$> _tqStats,
                  ("maxLeases" .=) <$> _tqMaxLeases,
                  ("id" .=) <$> _tqId, ("acl" .=) <$> _tqACL])

--
-- /See:/ 'tasks2' smart constructor.
data Tasks2 = Tasks2
    { _tKind  :: !Text
    , _tItems :: !(Maybe [Task])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tasks2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tKind'
--
-- * 'tItems'
tasks2
    :: Tasks2
tasks2 =
    Tasks2
    { _tKind = "taskqueues#tasks"
    , _tItems = Nothing
    }

-- | The kind of object returned, a list of tasks.
tKind :: Lens' Tasks2 Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | The actual list of tasks currently active in the TaskQueue.
tItems :: Lens' Tasks2 [Task]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

instance FromJSON Tasks2 where
        parseJSON
          = withObject "Tasks2"
              (\ o ->
                 Tasks2 <$>
                   (o .:? "kind" .!= "taskqueues#tasks") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Tasks2 where
        toJSON Tasks2{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tKind), ("items" .=) <$> _tItems])

--
-- /See:/ 'tasks' smart constructor.
data Tasks = Tasks
    { _tasKind  :: !Text
    , _tasItems :: !(Maybe [Task])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasKind'
--
-- * 'tasItems'
tasks
    :: Tasks
tasks =
    Tasks
    { _tasKind = "taskqueue#tasks"
    , _tasItems = Nothing
    }

-- | The kind of object returned, a list of tasks.
tasKind :: Lens' Tasks Text
tasKind = lens _tasKind (\ s a -> s{_tasKind = a})

-- | The actual list of tasks returned as a result of the lease operation.
tasItems :: Lens' Tasks [Task]
tasItems
  = lens _tasItems (\ s a -> s{_tasItems = a}) .
      _Default
      . _Coerce

instance FromJSON Tasks where
        parseJSON
          = withObject "Tasks"
              (\ o ->
                 Tasks <$>
                   (o .:? "kind" .!= "taskqueue#tasks") <*>
                     (o .:? "items" .!= mempty))

instance ToJSON Tasks where
        toJSON Tasks{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tasKind),
                  ("items" .=) <$> _tasItems])

-- | Statistics for the TaskQueue object in question.
--
-- /See:/ 'stats' smart constructor.
data Stats = Stats
    { _sTotalTasks       :: !(Maybe Int32)
    , _sOldestTask       :: !(Maybe Int64)
    , _sLeasedLastHour   :: !(Maybe Int64)
    , _sLeasedLastMinute :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Stats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTotalTasks'
--
-- * 'sOldestTask'
--
-- * 'sLeasedLastHour'
--
-- * 'sLeasedLastMinute'
stats
    :: Stats
stats =
    Stats
    { _sTotalTasks = Nothing
    , _sOldestTask = Nothing
    , _sLeasedLastHour = Nothing
    , _sLeasedLastMinute = Nothing
    }

-- | Number of tasks in the queue.
sTotalTasks :: Lens' Stats (Maybe Int32)
sTotalTasks
  = lens _sTotalTasks (\ s a -> s{_sTotalTasks = a})

-- | The timestamp (in seconds since the epoch) of the oldest unfinished
-- task.
sOldestTask :: Lens' Stats (Maybe Int64)
sOldestTask
  = lens _sOldestTask (\ s a -> s{_sOldestTask = a})

-- | Number of tasks leased in the last hour.
sLeasedLastHour :: Lens' Stats (Maybe Int64)
sLeasedLastHour
  = lens _sLeasedLastHour
      (\ s a -> s{_sLeasedLastHour = a})

-- | Number of tasks leased in the last minute.
sLeasedLastMinute :: Lens' Stats (Maybe Int64)
sLeasedLastMinute
  = lens _sLeasedLastMinute
      (\ s a -> s{_sLeasedLastMinute = a})

instance FromJSON Stats where
        parseJSON
          = withObject "Stats"
              (\ o ->
                 Stats <$>
                   (o .:? "totalTasks") <*> (o .:? "oldestTask") <*>
                     (o .:? "leasedLastHour")
                     <*> (o .:? "leasedLastMinute"))

instance ToJSON Stats where
        toJSON Stats{..}
          = object
              (catMaybes
                 [("totalTasks" .=) <$> _sTotalTasks,
                  ("oldestTask" .=) <$> _sOldestTask,
                  ("leasedLastHour" .=) <$> _sLeasedLastHour,
                  ("leasedLastMinute" .=) <$> _sLeasedLastMinute])

--
-- /See:/ 'task' smart constructor.
data Task = Task
    { _ttRetryCount       :: !(Maybe Int32)
    , _ttEnqueueTimestamp :: !(Maybe Int64)
    , _ttTag              :: !(Maybe Text)
    , _ttKind             :: !Text
    , _ttQueueName        :: !(Maybe Text)
    , _ttPayloadBase64    :: !(Maybe Text)
    , _ttId               :: !(Maybe Text)
    , _ttLeaseTimestamp   :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttRetryCount'
--
-- * 'ttEnqueueTimestamp'
--
-- * 'ttTag'
--
-- * 'ttKind'
--
-- * 'ttQueueName'
--
-- * 'ttPayloadBase64'
--
-- * 'ttId'
--
-- * 'ttLeaseTimestamp'
task
    :: Task
task =
    Task
    { _ttRetryCount = Nothing
    , _ttEnqueueTimestamp = Nothing
    , _ttTag = Nothing
    , _ttKind = "taskqueues#task"
    , _ttQueueName = Nothing
    , _ttPayloadBase64 = Nothing
    , _ttId = Nothing
    , _ttLeaseTimestamp = Nothing
    }

-- | The number of leases applied to this task.
ttRetryCount :: Lens' Task (Maybe Int32)
ttRetryCount
  = lens _ttRetryCount (\ s a -> s{_ttRetryCount = a})

-- | Time (in seconds since the epoch) at which the task was enqueued.
ttEnqueueTimestamp :: Lens' Task (Maybe Int64)
ttEnqueueTimestamp
  = lens _ttEnqueueTimestamp
      (\ s a -> s{_ttEnqueueTimestamp = a})

-- | Tag for the task, could be used later to lease tasks grouped by a
-- specific tag.
ttTag :: Lens' Task (Maybe Text)
ttTag = lens _ttTag (\ s a -> s{_ttTag = a})

-- | The kind of object returned, in this case set to task.
ttKind :: Lens' Task Text
ttKind = lens _ttKind (\ s a -> s{_ttKind = a})

-- | Name of the queue that the task is in.
ttQueueName :: Lens' Task (Maybe Text)
ttQueueName
  = lens _ttQueueName (\ s a -> s{_ttQueueName = a})

-- | A bag of bytes which is the task payload. The payload on the JSON side
-- is always Base64 encoded.
ttPayloadBase64 :: Lens' Task (Maybe Text)
ttPayloadBase64
  = lens _ttPayloadBase64
      (\ s a -> s{_ttPayloadBase64 = a})

-- | Name of the task.
ttId :: Lens' Task (Maybe Text)
ttId = lens _ttId (\ s a -> s{_ttId = a})

-- | Time (in seconds since the epoch) at which the task lease will expire.
-- This value is 0 if the task isnt currently leased out to a worker.
ttLeaseTimestamp :: Lens' Task (Maybe Int64)
ttLeaseTimestamp
  = lens _ttLeaseTimestamp
      (\ s a -> s{_ttLeaseTimestamp = a})

instance FromJSON Task where
        parseJSON
          = withObject "Task"
              (\ o ->
                 Task <$>
                   (o .:? "retry_count") <*> (o .:? "enqueueTimestamp")
                     <*> (o .:? "tag")
                     <*> (o .:? "kind" .!= "taskqueues#task")
                     <*> (o .:? "queueName")
                     <*> (o .:? "payloadBase64")
                     <*> (o .:? "id")
                     <*> (o .:? "leaseTimestamp"))

instance ToJSON Task where
        toJSON Task{..}
          = object
              (catMaybes
                 [("retry_count" .=) <$> _ttRetryCount,
                  ("enqueueTimestamp" .=) <$> _ttEnqueueTimestamp,
                  ("tag" .=) <$> _ttTag, Just ("kind" .= _ttKind),
                  ("queueName" .=) <$> _ttQueueName,
                  ("payloadBase64" .=) <$> _ttPayloadBase64,
                  ("id" .=) <$> _ttId,
                  ("leaseTimestamp" .=) <$> _ttLeaseTimestamp])

-- | ACLs that are applicable to this TaskQueue object.
--
-- /See:/ 'acl' smart constructor.
data ACL = ACL
    { _aProducerEmails :: !(Maybe [Text])
    , _aAdminEmails    :: !(Maybe [Text])
    , _aConsumerEmails :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProducerEmails'
--
-- * 'aAdminEmails'
--
-- * 'aConsumerEmails'
acl
    :: ACL
acl =
    ACL
    { _aProducerEmails = Nothing
    , _aAdminEmails = Nothing
    , _aConsumerEmails = Nothing
    }

-- | Email addresses of users who can \"produce\" tasks into the TaskQueue.
-- This means they can Insert tasks into the queue.
aProducerEmails :: Lens' ACL [Text]
aProducerEmails
  = lens _aProducerEmails
      (\ s a -> s{_aProducerEmails = a})
      . _Default
      . _Coerce

-- | Email addresses of users who are \"admins\" of the TaskQueue. This means
-- they can control the queue, eg set ACLs for the queue.
aAdminEmails :: Lens' ACL [Text]
aAdminEmails
  = lens _aAdminEmails (\ s a -> s{_aAdminEmails = a})
      . _Default
      . _Coerce

-- | Email addresses of users who can \"consume\" tasks from the TaskQueue.
-- This means they can Dequeue and Delete tasks from the queue.
aConsumerEmails :: Lens' ACL [Text]
aConsumerEmails
  = lens _aConsumerEmails
      (\ s a -> s{_aConsumerEmails = a})
      . _Default
      . _Coerce

instance FromJSON ACL where
        parseJSON
          = withObject "ACL"
              (\ o ->
                 ACL <$>
                   (o .:? "producerEmails" .!= mempty) <*>
                     (o .:? "adminEmails" .!= mempty)
                     <*> (o .:? "consumerEmails" .!= mempty))

instance ToJSON ACL where
        toJSON ACL{..}
          = object
              (catMaybes
                 [("producerEmails" .=) <$> _aProducerEmails,
                  ("adminEmails" .=) <$> _aAdminEmails,
                  ("consumerEmails" .=) <$> _aConsumerEmails])
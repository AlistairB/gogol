{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.URLShortener
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you create, inspect, and manage goo.gl short URLs
--
-- /See:/ <https://developers.google.com/url-shortener/v1/getting_started URL Shortener API Reference>
module Network.Google.URLShortener
    (
    -- * REST Resources

    -- ** URL Shortener API
      URLShortener
    , uRLShortener
    , uRLShortenerURL

    -- ** urlshortener.url.get
    , module Network.Google.API.URLShortener.URL.Get

    -- ** urlshortener.url.insert
    , module Network.Google.API.URLShortener.URL.Insert

    -- ** urlshortener.url.list
    , module Network.Google.API.URLShortener.URL.List

    -- * Types

    -- ** URLGet'Projection
    , URLGet'Projection (..)

    -- ** Alt
    , Alt (..)

    -- ** StringCount
    , StringCount
    , stringCount
    , scCount
    , scId

    -- ** UrlHistory
    , UrlHistory
    , urlHistory
    , uhTotalItems
    , uhNextPageToken
    , uhItemsPerPage
    , uhKind
    , uhItems

    -- ** AnalyticsSnapshot
    , AnalyticsSnapshot
    , analyticsSnapshot
    , asPlatforms
    , asShortUrlClicks
    , asReferrers
    , asCountries
    , asLongUrlClicks
    , asBrowsers

    -- ** AnalyticsSummary
    , AnalyticsSummary
    , analyticsSummary
    , asWeek
    , asAllTime
    , asDay
    , asTwoHours
    , asMonth

    -- ** URLList'Projection
    , URLList'Projection (..)

    -- ** Url
    , Url
    , url
    , urlStatus
    , urlKind
    , urlCreated
    , urlAnalytics
    , urlLongUrl
    , urlId
    ) where

import           Network.Google.API.URLShortener.URL.Get
import           Network.Google.API.URLShortener.URL.Insert
import           Network.Google.API.URLShortener.URL.List
import           Network.Google.Prelude
import           Network.Google.URLShortener.Types

{- $resources
TODO
-}

type URLShortener =
     URLInsertAPI :<|> URLGetAPI :<|> URLListAPI

uRLShortener :: Proxy URLShortener
uRLShortener = Proxy
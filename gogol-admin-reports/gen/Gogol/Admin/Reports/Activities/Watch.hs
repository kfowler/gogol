{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.Reports.Activities.Watch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start receiving notifications for account activities. For more information, see Receiving Push Notifications.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @reports.activities.watch@.
module Gogol.Admin.Reports.Activities.Watch
  ( -- * Resource
    ReportsActivitiesWatchResource,

    -- ** Constructing a Request
    newReportsActivitiesWatch,
    ReportsActivitiesWatch,
  )
where

import Gogol.Admin.Reports.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @reports.activities.watch@ method which the
-- 'ReportsActivitiesWatch' request conforms to.
type ReportsActivitiesWatchResource =
  "admin"
    Core.:> "reports"
    Core.:> "v1"
    Core.:> "activity"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "applications"
    Core.:> Core.Capture
              "applicationName"
              ActivitiesWatchApplicationName
    Core.:> "watch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "actorIpAddress" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "endTime" Core.Text
    Core.:> Core.QueryParam "eventName" Core.Text
    Core.:> Core.QueryParam "filters" Core.Text
    Core.:> Core.QueryParam "groupIdFilter" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "orgUnitID" Core.Text
    Core.:> Core.QueryParam
              "pageToken"
              Core.Text
    Core.:> Core.QueryParam
              "startTime"
              Core.Text
    Core.:> Core.QueryParam
              "uploadType"
              Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              Channel
    Core.:> Core.Post
              '[Core.JSON]
              Channel

-- | Start receiving notifications for account activities. For more information, see Receiving Push Notifications.
--
-- /See:/ 'newReportsActivitiesWatch' smart constructor.
data ReportsActivitiesWatch = ReportsActivitiesWatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The Internet Protocol (IP) Address of host where the event was performed. This is an additional way to filter a report\'s summary using the IP address of the user whose activity is being reported. This IP address may or may not reflect the user\'s physical location. For example, the IP address can be the user\'s proxy server\'s address or a virtual private network (VPN) address. This parameter supports both IPv4 and IPv6 address versions.
    actorIpAddress :: (Core.Maybe Core.Text),
    -- | Application name for which the events are to be retrieved.
    applicationName :: ActivitiesWatchApplicationName,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID of the customer to retrieve data for.
    customerId :: (Core.Maybe Core.Text),
    -- | Sets the end of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The default value is the approximate time of the API request. An API report has three basic time concepts: - /Date of the API\'s request for a report/: When the API created and retrieved the report. - /Report\'s start time/: The beginning of the timespan shown in the report. The @startTime@ must be before the @endTime@ (if specified) and the current time when the request is made, or the API returns an error. - /Report\'s end time/: The end of the timespan shown in the report. For example, the timespan of events summarized in a report can start in April and end in May. The report itself can be requested in August. If the @endTime@ is not specified, the report returns all activities from the @startTime@ until the current time or the most recent 180 days if the @startTime@ is more than 180 days in the past.
    endTime :: (Core.Maybe Core.Text),
    -- | The name of the event being queried by the API. Each @eventName@ is related to a specific Google Workspace service or feature which the API organizes into types of events. An example is the Google Calendar events in the Admin console application\'s reports. The Calendar Settings @type@ structure has all of the Calendar @eventName@ activities reported by the API. When an administrator changes a Calendar setting, the API reports this activity in the Calendar Settings @type@ and @eventName@ parameters. For more information about @eventName@ query strings and parameters, see the list of event names for various applications above in @applicationName@.
    eventName :: (Core.Maybe Core.Text),
    -- | The @filters@ query string is a comma-separated list. The list is composed of event parameters that are manipulated by relational operators. Event parameters are in the form @parameter1 name[parameter1 value],parameter2 name[parameter2 value],...@ These event parameters are associated with a specific @eventName@. An empty report is returned if the filtered request\'s parameter does not belong to the @eventName@. For more information about @eventName@ parameters, see the list of event names for various applications above in @applicationName@. In the following Admin Activity example, the \<> operator is URL-encoded in the request\'s query string (%3C%3E): GET...&eventName=CHANGE/CALENDAR/SETTING &filters=NEW/VALUE%3C%3EREAD/ONLY/ACCESS In the following Drive example, the list can be a view or edit event\'s @doc_id@ parameter with a value that is manipulated by an \'equal to\' (==) or \'not equal to\' (\<>) relational operator. In the first example, the report returns each edited document\'s @doc_id@. In the
    -- second example, the report returns each viewed document\'s @doc_id@ that equals the value 12345 and does not return any viewed document\'s which have a @doc_id@ value of 98765. The \<> operator is URL-encoded in the request\'s query string (%3C%3E): GET...&eventName=edit&filters=doc/id GET...&eventName=view&filters=doc/id==12345,doc/id%3C%3E98765 The relational operators include: - @==@ - \'equal to\'. - @\<>@ - \'not equal to\'. It is URL-encoded (%3C%3E). - @\<@ - \'less than\'. It is URL-encoded (%3C). - @\<=@ - \'less than or equal to\'. It is URL-encoded (%3C=). - @>@ - \'greater than\'. It is URL-encoded (%3E). - @>=@ - \'greater than or equal to\'. It is URL-encoded (%3E=). /Note:/ The API doesn\'t accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the
    -- response corresponding to the remaining valid request parameters. If no parameters are requested, all parameters are returned.
    filters :: (Core.Maybe Core.Text),
    -- | Comma separated group ids (obfuscated) on which user activities are filtered, i.e. the response will contain activities for only those users that are a part of at least one of the group ids mentioned here. Format: \"id:abc123,id:xyz456\"
    groupIdFilter :: (Core.Maybe Core.Text),
    -- | Determines how many activity records are shown on each response page. For example, if the request sets @maxResults=1@ and the report has two activities, the report has two pages. The response\'s @nextPageToken@ property has the token to the second page. The @maxResults@ query string is optional in the request. The default value is 1000.
    maxResults :: Core.Int32,
    -- | ID of the organizational unit to report on. Activity records will be shown only for users who belong to the specified organizational unit. Data before Dec 17, 2018 doesn\'t appear in the filtered results.
    orgUnitID :: Core.Text,
    -- | The token to specify next page. A report with multiple pages has a @nextPageToken@ property in the response. In your follow-on request getting the next page of the report, enter the @nextPageToken@ value in the @pageToken@ query string.
    pageToken :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Channel,
    -- | Sets the beginning of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The report returns all activities from @startTime@ until @endTime@. The @startTime@ must be before the @endTime@ (if specified) and the current time when the request is made, or the API returns an error.
    startTime :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Represents the profile ID or the user email for which the data should be filtered. Can be @all@ for all information, or @userKey@ for a user\'s unique Google Workspace profile ID or their primary email address. Must not be a deleted user. For a deleted user, call @users.list@ in Directory API with @showDeleted=true@, then use the returned @ID@ as the @userKey@.
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReportsActivitiesWatch' with the minimum fields required to make a request.
newReportsActivitiesWatch ::
  -- |  Application name for which the events are to be retrieved. See 'applicationName'.
  ActivitiesWatchApplicationName ->
  -- |  Multipart request metadata. See 'payload'.
  Channel ->
  -- |  Represents the profile ID or the user email for which the data should be filtered. Can be @all@ for all information, or @userKey@ for a user\'s unique Google Workspace profile ID or their primary email address. Must not be a deleted user. For a deleted user, call @users.list@ in Directory API with @showDeleted=true@, then use the returned @ID@ as the @userKey@. See 'userKey'.
  Core.Text ->
  ReportsActivitiesWatch
newReportsActivitiesWatch applicationName payload userKey =
  ReportsActivitiesWatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      actorIpAddress = Core.Nothing,
      applicationName = applicationName,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      endTime = Core.Nothing,
      eventName = Core.Nothing,
      filters = Core.Nothing,
      groupIdFilter = Core.Nothing,
      maxResults = 1000,
      orgUnitID = "",
      pageToken = Core.Nothing,
      payload = payload,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance Core.GoogleRequest ReportsActivitiesWatch where
  type Rs ReportsActivitiesWatch = Channel
  type
    Scopes ReportsActivitiesWatch =
      '["https://www.googleapis.com/auth/admin.reports.audit.readonly"]
  requestClient ReportsActivitiesWatch {..} =
    go
      userKey
      applicationName
      xgafv
      accessToken
      actorIpAddress
      callback
      customerId
      endTime
      eventName
      filters
      groupIdFilter
      (Core.Just maxResults)
      (Core.Just orgUnitID)
      pageToken
      startTime
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminReportsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ReportsActivitiesWatchResource
          )
          Core.mempty

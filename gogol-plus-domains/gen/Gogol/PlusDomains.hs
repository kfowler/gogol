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
-- Module      : Gogol.PlusDomains
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Builds on top of the Google+ platform for Google Apps Domains.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference>
module Gogol.PlusDomains
  ( -- * Configuration
    plusDomainsService,

    -- * OAuth Scopes
    plusCirclesReadScope,
    plusLoginScope,
    plusMeScope,
    plusMediaUploadScope,
    plusProfilesReadScope,
    plusStreamReadScope,
    userinfoEmailScope,
    userinfoProfileScope,

    -- * Resources

    -- ** plusDomains.activities.get
    PlusDomainsActivitiesGetResource,
    newPlusDomainsActivitiesGet,
    PlusDomainsActivitiesGet,

    -- ** plusDomains.activities.list
    PlusDomainsActivitiesListResource,
    newPlusDomainsActivitiesList,
    PlusDomainsActivitiesList,

    -- ** plusDomains.audiences.list
    PlusDomainsAudiencesListResource,
    newPlusDomainsAudiencesList,
    PlusDomainsAudiencesList,

    -- ** plusDomains.circles.list
    PlusDomainsCirclesListResource,
    newPlusDomainsCirclesList,
    PlusDomainsCirclesList,

    -- ** plusDomains.comments.get
    PlusDomainsCommentsGetResource,
    newPlusDomainsCommentsGet,
    PlusDomainsCommentsGet,

    -- ** plusDomains.comments.list
    PlusDomainsCommentsListResource,
    newPlusDomainsCommentsList,
    PlusDomainsCommentsList,

    -- ** plusDomains.media.insert
    PlusDomainsMediaInsertResource,
    newPlusDomainsMediaInsert,
    PlusDomainsMediaInsert,

    -- ** plusDomains.people.get
    PlusDomainsPeopleGetResource,
    newPlusDomainsPeopleGet,
    PlusDomainsPeopleGet,

    -- ** plusDomains.people.list
    PlusDomainsPeopleListResource,
    newPlusDomainsPeopleList,
    PlusDomainsPeopleList,

    -- ** plusDomains.people.listByActivity
    PlusDomainsPeopleListByActivityResource,
    newPlusDomainsPeopleListByActivity,
    PlusDomainsPeopleListByActivity,

    -- * Types

    -- ** Acl
    Acl (..),
    newAcl,

    -- ** Activity
    Activity (..),
    newActivity,

    -- ** Activity_Actor
    Activity_Actor (..),
    newActivity_Actor,

    -- ** Activity_Actor_ClientSpecificActorInfo
    Activity_Actor_ClientSpecificActorInfo (..),
    newActivity_Actor_ClientSpecificActorInfo,

    -- ** Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newActivity_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- ** Activity_Actor_Image
    Activity_Actor_Image (..),
    newActivity_Actor_Image,

    -- ** Activity_Actor_Name
    Activity_Actor_Name (..),
    newActivity_Actor_Name,

    -- ** Activity_Actor_Verification
    Activity_Actor_Verification (..),
    newActivity_Actor_Verification,

    -- ** Activity_Object
    Activity_Object (..),
    newActivity_Object,

    -- ** Activity_Object_Actor
    Activity_Object_Actor (..),
    newActivity_Object_Actor,

    -- ** Activity_Object_Actor_ClientSpecificActorInfo
    Activity_Object_Actor_ClientSpecificActorInfo (..),
    newActivity_Object_Actor_ClientSpecificActorInfo,

    -- ** Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newActivity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- ** Activity_Object_Actor_Image
    Activity_Object_Actor_Image (..),
    newActivity_Object_Actor_Image,

    -- ** Activity_Object_Actor_Verification
    Activity_Object_Actor_Verification (..),
    newActivity_Object_Actor_Verification,

    -- ** Activity_Object_AttachmentsItem
    Activity_Object_AttachmentsItem (..),
    newActivity_Object_AttachmentsItem,

    -- ** Activity_Object_AttachmentsItem_Embed
    Activity_Object_AttachmentsItem_Embed (..),
    newActivity_Object_AttachmentsItem_Embed,

    -- ** Activity_Object_AttachmentsItem_FullImage
    Activity_Object_AttachmentsItem_FullImage (..),
    newActivity_Object_AttachmentsItem_FullImage,

    -- ** Activity_Object_AttachmentsItem_Image
    Activity_Object_AttachmentsItem_Image (..),
    newActivity_Object_AttachmentsItem_Image,

    -- ** Activity_Object_AttachmentsItem_PreviewThumbnailsItem
    Activity_Object_AttachmentsItem_PreviewThumbnailsItem (..),
    newActivity_Object_AttachmentsItem_PreviewThumbnailsItem,

    -- ** Activity_Object_AttachmentsItem_ThumbnailsItem
    Activity_Object_AttachmentsItem_ThumbnailsItem (..),
    newActivity_Object_AttachmentsItem_ThumbnailsItem,

    -- ** Activity_Object_AttachmentsItem_ThumbnailsItem_Image
    Activity_Object_AttachmentsItem_ThumbnailsItem_Image (..),
    newActivity_Object_AttachmentsItem_ThumbnailsItem_Image,

    -- ** Activity_Object_Plusoners
    Activity_Object_Plusoners (..),
    newActivity_Object_Plusoners,

    -- ** Activity_Object_Replies
    Activity_Object_Replies (..),
    newActivity_Object_Replies,

    -- ** Activity_Object_Resharers
    Activity_Object_Resharers (..),
    newActivity_Object_Resharers,

    -- ** Activity_Object_StatusForViewer
    Activity_Object_StatusForViewer (..),
    newActivity_Object_StatusForViewer,

    -- ** Activity_Provider
    Activity_Provider (..),
    newActivity_Provider,

    -- ** ActivityFeed
    ActivityFeed (..),
    newActivityFeed,

    -- ** Audience
    Audience (..),
    newAudience,

    -- ** AudiencesFeed
    AudiencesFeed (..),
    newAudiencesFeed,

    -- ** Circle
    Circle (..),
    newCircle,

    -- ** Circle_People
    Circle_People (..),
    newCircle_People,

    -- ** CircleFeed
    CircleFeed (..),
    newCircleFeed,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** Comment_Actor
    Comment_Actor (..),
    newComment_Actor,

    -- ** Comment_Actor_ClientSpecificActorInfo
    Comment_Actor_ClientSpecificActorInfo (..),
    newComment_Actor_ClientSpecificActorInfo,

    -- ** Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newComment_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- ** Comment_Actor_Image
    Comment_Actor_Image (..),
    newComment_Actor_Image,

    -- ** Comment_Actor_Verification
    Comment_Actor_Verification (..),
    newComment_Actor_Verification,

    -- ** Comment_InReplyToItem
    Comment_InReplyToItem (..),
    newComment_InReplyToItem,

    -- ** Comment_Object
    Comment_Object (..),
    newComment_Object,

    -- ** Comment_Plusoners
    Comment_Plusoners (..),
    newComment_Plusoners,

    -- ** CommentFeed
    CommentFeed (..),
    newCommentFeed,

    -- ** Media
    Media (..),
    newMedia,

    -- ** Media_Author
    Media_Author (..),
    newMedia_Author,

    -- ** Media_Author_Image
    Media_Author_Image (..),
    newMedia_Author_Image,

    -- ** Media_Exif
    Media_Exif (..),
    newMedia_Exif,

    -- ** PeopleFeed
    PeopleFeed (..),
    newPeopleFeed,

    -- ** Person
    Person (..),
    newPerson,

    -- ** Person_Cover
    Person_Cover (..),
    newPerson_Cover,

    -- ** Person_Cover_CoverInfo
    Person_Cover_CoverInfo (..),
    newPerson_Cover_CoverInfo,

    -- ** Person_Cover_CoverPhoto
    Person_Cover_CoverPhoto (..),
    newPerson_Cover_CoverPhoto,

    -- ** Person_EmailsItem
    Person_EmailsItem (..),
    newPerson_EmailsItem,

    -- ** Person_Image
    Person_Image (..),
    newPerson_Image,

    -- ** Person_Name
    Person_Name (..),
    newPerson_Name,

    -- ** Person_OrganizationsItem
    Person_OrganizationsItem (..),
    newPerson_OrganizationsItem,

    -- ** Person_PlacesLivedItem
    Person_PlacesLivedItem (..),
    newPerson_PlacesLivedItem,

    -- ** Person_UrlsItem
    Person_UrlsItem (..),
    newPerson_UrlsItem,

    -- ** Place
    Place (..),
    newPlace,

    -- ** Place_Address
    Place_Address (..),
    newPlace_Address,

    -- ** Place_Position
    Place_Position (..),
    newPlace_Position,

    -- ** PlusDomainsAclentryResource
    PlusDomainsAclentryResource (..),
    newPlusDomainsAclentryResource,

    -- ** Videostream
    Videostream (..),
    newVideostream,

    -- ** ActivitiesListCollection
    ActivitiesListCollection (..),

    -- ** CommentsListSortOrder
    CommentsListSortOrder (..),

    -- ** MediaInsertCollection
    MediaInsertCollection (..),

    -- ** PeopleListCollection
    PeopleListCollection (..),

    -- ** PeopleListOrderBy
    PeopleListOrderBy (..),

    -- ** PeopleListByActivityCollection
    PeopleListByActivityCollection (..),
  )
where

import Gogol.PlusDomains.Activities.Get
import Gogol.PlusDomains.Activities.List
import Gogol.PlusDomains.Audiences.List
import Gogol.PlusDomains.Circles.List
import Gogol.PlusDomains.Comments.Get
import Gogol.PlusDomains.Comments.List
import Gogol.PlusDomains.Media.Insert
import Gogol.PlusDomains.People.Get
import Gogol.PlusDomains.People.List
import Gogol.PlusDomains.People.ListByActivity
import Gogol.PlusDomains.Types

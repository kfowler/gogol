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
-- Module      : Gogol.Drive
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference>
module Gogol.Drive
  ( -- * Configuration
    driveService,

    -- * OAuth Scopes
    driveScope,
    driveAppdataScope,
    driveFileScope,
    driveMetadataScope,
    driveMetadataReadOnlyScope,
    drivePhotosReadOnlyScope,
    driveReadOnlyScope,
    driveScriptsScope,

    -- * Resources

    -- ** drive.about.get
    DriveAboutGetResource,
    newDriveAboutGet,
    DriveAboutGet,

    -- ** drive.changes.getStartPageToken
    DriveChangesGetStartPageTokenResource,
    newDriveChangesGetStartPageToken,
    DriveChangesGetStartPageToken,

    -- ** drive.changes.list
    DriveChangesListResource,
    newDriveChangesList,
    DriveChangesList,

    -- ** drive.changes.watch
    DriveChangesWatchResource,
    newDriveChangesWatch,
    DriveChangesWatch,

    -- ** drive.channels.stop
    DriveChannelsStopResource,
    newDriveChannelsStop,
    DriveChannelsStop,

    -- ** drive.comments.create
    DriveCommentsCreateResource,
    newDriveCommentsCreate,
    DriveCommentsCreate,

    -- ** drive.comments.delete
    DriveCommentsDeleteResource,
    newDriveCommentsDelete,
    DriveCommentsDelete,

    -- ** drive.comments.get
    DriveCommentsGetResource,
    newDriveCommentsGet,
    DriveCommentsGet,

    -- ** drive.comments.list
    DriveCommentsListResource,
    newDriveCommentsList,
    DriveCommentsList,

    -- ** drive.comments.update
    DriveCommentsUpdateResource,
    newDriveCommentsUpdate,
    DriveCommentsUpdate,

    -- ** drive.drives.create
    DriveDrivesCreateResource,
    newDriveDrivesCreate,
    DriveDrivesCreate,

    -- ** drive.drives.delete
    DriveDrivesDeleteResource,
    newDriveDrivesDelete,
    DriveDrivesDelete,

    -- ** drive.drives.get
    DriveDrivesGetResource,
    newDriveDrivesGet,
    DriveDrivesGet,

    -- ** drive.drives.hide
    DriveDrivesHideResource,
    newDriveDrivesHide,
    DriveDrivesHide,

    -- ** drive.drives.list
    DriveDrivesListResource,
    newDriveDrivesList,
    DriveDrivesList,

    -- ** drive.drives.unhide
    DriveDrivesUnhideResource,
    newDriveDrivesUnhide,
    DriveDrivesUnhide,

    -- ** drive.drives.update
    DriveDrivesUpdateResource,
    newDriveDrivesUpdate,
    DriveDrivesUpdate,

    -- ** drive.files.copy
    DriveFilesCopyResource,
    newDriveFilesCopy,
    DriveFilesCopy,

    -- ** drive.files.create
    DriveFilesCreateResource,
    newDriveFilesCreate,
    DriveFilesCreate,

    -- ** drive.files.delete
    DriveFilesDeleteResource,
    newDriveFilesDelete,
    DriveFilesDelete,

    -- ** drive.files.emptyTrash
    DriveFilesEmptyTrashResource,
    newDriveFilesEmptyTrash,
    DriveFilesEmptyTrash,

    -- ** drive.files.export
    DriveFilesExportResource,
    newDriveFilesExport,
    DriveFilesExport,

    -- ** drive.files.generateIds
    DriveFilesGenerateIdsResource,
    newDriveFilesGenerateIds,
    DriveFilesGenerateIds,

    -- ** drive.files.get
    DriveFilesGetResource,
    newDriveFilesGet,
    DriveFilesGet,

    -- ** drive.files.list
    DriveFilesListResource,
    newDriveFilesList,
    DriveFilesList,

    -- ** drive.files.update
    DriveFilesUpdateResource,
    newDriveFilesUpdate,
    DriveFilesUpdate,

    -- ** drive.files.watch
    DriveFilesWatchResource,
    newDriveFilesWatch,
    DriveFilesWatch,

    -- ** drive.permissions.create
    DrivePermissionsCreateResource,
    newDrivePermissionsCreate,
    DrivePermissionsCreate,

    -- ** drive.permissions.delete
    DrivePermissionsDeleteResource,
    newDrivePermissionsDelete,
    DrivePermissionsDelete,

    -- ** drive.permissions.get
    DrivePermissionsGetResource,
    newDrivePermissionsGet,
    DrivePermissionsGet,

    -- ** drive.permissions.list
    DrivePermissionsListResource,
    newDrivePermissionsList,
    DrivePermissionsList,

    -- ** drive.permissions.update
    DrivePermissionsUpdateResource,
    newDrivePermissionsUpdate,
    DrivePermissionsUpdate,

    -- ** drive.replies.create
    DriveRepliesCreateResource,
    newDriveRepliesCreate,
    DriveRepliesCreate,

    -- ** drive.replies.delete
    DriveRepliesDeleteResource,
    newDriveRepliesDelete,
    DriveRepliesDelete,

    -- ** drive.replies.get
    DriveRepliesGetResource,
    newDriveRepliesGet,
    DriveRepliesGet,

    -- ** drive.replies.list
    DriveRepliesListResource,
    newDriveRepliesList,
    DriveRepliesList,

    -- ** drive.replies.update
    DriveRepliesUpdateResource,
    newDriveRepliesUpdate,
    DriveRepliesUpdate,

    -- ** drive.revisions.delete
    DriveRevisionsDeleteResource,
    newDriveRevisionsDelete,
    DriveRevisionsDelete,

    -- ** drive.revisions.get
    DriveRevisionsGetResource,
    newDriveRevisionsGet,
    DriveRevisionsGet,

    -- ** drive.revisions.list
    DriveRevisionsListResource,
    newDriveRevisionsList,
    DriveRevisionsList,

    -- ** drive.revisions.update
    DriveRevisionsUpdateResource,
    newDriveRevisionsUpdate,
    DriveRevisionsUpdate,

    -- ** drive.teamdrives.create
    DriveTeamdrivesCreateResource,
    newDriveTeamdrivesCreate,
    DriveTeamdrivesCreate,

    -- ** drive.teamdrives.delete
    DriveTeamdrivesDeleteResource,
    newDriveTeamdrivesDelete,
    DriveTeamdrivesDelete,

    -- ** drive.teamdrives.get
    DriveTeamdrivesGetResource,
    newDriveTeamdrivesGet,
    DriveTeamdrivesGet,

    -- ** drive.teamdrives.list
    DriveTeamdrivesListResource,
    newDriveTeamdrivesList,
    DriveTeamdrivesList,

    -- ** drive.teamdrives.update
    DriveTeamdrivesUpdateResource,
    newDriveTeamdrivesUpdate,
    DriveTeamdrivesUpdate,

    -- * Types

    -- ** About
    About (..),
    newAbout,

    -- ** About_DriveThemesItem
    About_DriveThemesItem (..),
    newAbout_DriveThemesItem,

    -- ** About_ExportFormats
    About_ExportFormats (..),
    newAbout_ExportFormats,

    -- ** About_ImportFormats
    About_ImportFormats (..),
    newAbout_ImportFormats,

    -- ** About_MaxImportSizes
    About_MaxImportSizes (..),
    newAbout_MaxImportSizes,

    -- ** About_StorageQuota
    About_StorageQuota (..),
    newAbout_StorageQuota,

    -- ** About_TeamDriveThemesItem
    About_TeamDriveThemesItem (..),
    newAbout_TeamDriveThemesItem,

    -- ** Change
    Change (..),
    newChange,

    -- ** ChangeList
    ChangeList (..),
    newChangeList,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Channel_Params
    Channel_Params (..),
    newChannel_Params,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** Comment_QuotedFileContent
    Comment_QuotedFileContent (..),
    newComment_QuotedFileContent,

    -- ** CommentList
    CommentList (..),
    newCommentList,

    -- ** ContentRestriction
    ContentRestriction (..),
    newContentRestriction,

    -- ** Drive
    Drive (..),
    newDrive,

    -- ** Drive_BackgroundImageFile
    Drive_BackgroundImageFile (..),
    newDrive_BackgroundImageFile,

    -- ** Drive_Capabilities
    Drive_Capabilities (..),
    newDrive_Capabilities,

    -- ** Drive_Restrictions
    Drive_Restrictions (..),
    newDrive_Restrictions,

    -- ** DriveList
    DriveList (..),
    newDriveList,

    -- ** File
    File (..),
    newFile,

    -- ** File_AppProperties
    File_AppProperties (..),
    newFile_AppProperties,

    -- ** File_Capabilities
    File_Capabilities (..),
    newFile_Capabilities,

    -- ** File_ContentHints
    File_ContentHints (..),
    newFile_ContentHints,

    -- ** File_ContentHints_Thumbnail
    File_ContentHints_Thumbnail (..),
    newFile_ContentHints_Thumbnail,

    -- ** File_ExportLinks
    File_ExportLinks (..),
    newFile_ExportLinks,

    -- ** File_ImageMediaMetadata
    File_ImageMediaMetadata (..),
    newFile_ImageMediaMetadata,

    -- ** File_ImageMediaMetadata_Location
    File_ImageMediaMetadata_Location (..),
    newFile_ImageMediaMetadata_Location,

    -- ** File_LinkShareMetadata
    File_LinkShareMetadata (..),
    newFile_LinkShareMetadata,

    -- ** File_Properties
    File_Properties (..),
    newFile_Properties,

    -- ** File_ShortcutDetails
    File_ShortcutDetails (..),
    newFile_ShortcutDetails,

    -- ** File_VideoMediaMetadata
    File_VideoMediaMetadata (..),
    newFile_VideoMediaMetadata,

    -- ** FileList
    FileList (..),
    newFileList,

    -- ** GeneratedIds
    GeneratedIds (..),
    newGeneratedIds,

    -- ** Permission
    Permission (..),
    newPermission,

    -- ** Permission_PermissionDetailsItem
    Permission_PermissionDetailsItem (..),
    newPermission_PermissionDetailsItem,

    -- ** Permission_TeamDrivePermissionDetailsItem
    Permission_TeamDrivePermissionDetailsItem (..),
    newPermission_TeamDrivePermissionDetailsItem,

    -- ** PermissionList
    PermissionList (..),
    newPermissionList,

    -- ** Reply
    Reply (..),
    newReply,

    -- ** ReplyList
    ReplyList (..),
    newReplyList,

    -- ** Revision
    Revision (..),
    newRevision,

    -- ** Revision_ExportLinks
    Revision_ExportLinks (..),
    newRevision_ExportLinks,

    -- ** RevisionList
    RevisionList (..),
    newRevisionList,

    -- ** StartPageToken
    StartPageToken (..),
    newStartPageToken,

    -- ** TeamDrive
    TeamDrive (..),
    newTeamDrive,

    -- ** TeamDrive_BackgroundImageFile
    TeamDrive_BackgroundImageFile (..),
    newTeamDrive_BackgroundImageFile,

    -- ** TeamDrive_Capabilities
    TeamDrive_Capabilities (..),
    newTeamDrive_Capabilities,

    -- ** TeamDrive_Restrictions
    TeamDrive_Restrictions (..),
    newTeamDrive_Restrictions,

    -- ** TeamDriveList
    TeamDriveList (..),
    newTeamDriveList,

    -- ** User
    User (..),
    newUser,

    -- ** FilesListCorpus
    FilesListCorpus (..),
  )
where

import Gogol.Drive.About.Get
import Gogol.Drive.Changes.GetStartPageToken
import Gogol.Drive.Changes.List
import Gogol.Drive.Changes.Watch
import Gogol.Drive.Channels.Stop
import Gogol.Drive.Comments.Create
import Gogol.Drive.Comments.Delete
import Gogol.Drive.Comments.Get
import Gogol.Drive.Comments.List
import Gogol.Drive.Comments.Update
import Gogol.Drive.Drives.Create
import Gogol.Drive.Drives.Delete
import Gogol.Drive.Drives.Get
import Gogol.Drive.Drives.Hide
import Gogol.Drive.Drives.List
import Gogol.Drive.Drives.Unhide
import Gogol.Drive.Drives.Update
import Gogol.Drive.Files.Copy
import Gogol.Drive.Files.Create
import Gogol.Drive.Files.Delete
import Gogol.Drive.Files.EmptyTrash
import Gogol.Drive.Files.Export
import Gogol.Drive.Files.GenerateIds
import Gogol.Drive.Files.Get
import Gogol.Drive.Files.List
import Gogol.Drive.Files.Update
import Gogol.Drive.Files.Watch
import Gogol.Drive.Permissions.Create
import Gogol.Drive.Permissions.Delete
import Gogol.Drive.Permissions.Get
import Gogol.Drive.Permissions.List
import Gogol.Drive.Permissions.Update
import Gogol.Drive.Replies.Create
import Gogol.Drive.Replies.Delete
import Gogol.Drive.Replies.Get
import Gogol.Drive.Replies.List
import Gogol.Drive.Replies.Update
import Gogol.Drive.Revisions.Delete
import Gogol.Drive.Revisions.Get
import Gogol.Drive.Revisions.List
import Gogol.Drive.Revisions.Update
import Gogol.Drive.Teamdrives.Create
import Gogol.Drive.Teamdrives.Delete
import Gogol.Drive.Teamdrives.Get
import Gogol.Drive.Teamdrives.List
import Gogol.Drive.Teamdrives.Update
import Gogol.Drive.Types

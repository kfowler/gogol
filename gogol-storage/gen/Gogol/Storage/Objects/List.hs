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
-- Module      : Gogol.Storage.Objects.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of objects matching the criteria.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.list@.
module Gogol.Storage.Objects.List
  ( -- * Resource
    StorageObjectsListResource,

    -- ** Constructing a Request
    newStorageObjectsList,
    StorageObjectsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.list@ method which the
-- 'StorageObjectsList' request conforms to.
type StorageObjectsListResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "o"
    Core.:> Core.QueryParam "delimiter" Core.Text
    Core.:> Core.QueryParam "endOffset" Core.Text
    Core.:> Core.QueryParam "includeTrailingDelimiter" Core.Bool
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "prefix" Core.Text
    Core.:> Core.QueryParam "projection" ObjectsListProjection
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "startOffset" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "versions" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Objects

-- | Retrieves a list of objects matching the criteria.
--
-- /See:/ 'newStorageObjectsList' smart constructor.
data StorageObjectsList = StorageObjectsList
  { -- | Name of the bucket in which to look for objects.
    bucket :: Core.Text,
    -- | Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted.
    delimiter :: (Core.Maybe Core.Text),
    -- | Filter results to objects whose names are lexicographically before endOffset. If startOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
    endOffset :: (Core.Maybe Core.Text),
    -- | If true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes.
    includeTrailingDelimiter :: (Core.Maybe Core.Bool),
    -- | Maximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller.
    maxResults :: Core.Word32,
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | Filter results to objects whose names begin with this prefix.
    prefix :: (Core.Maybe Core.Text),
    -- | Set of properties to return. Defaults to noAcl.
    projection :: (Core.Maybe ObjectsListProjection),
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Filter results to objects whose names are lexicographically equal to or after startOffset. If endOffset is also set, the objects listed will have names between startOffset (inclusive) and endOffset (exclusive).
    startOffset :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text),
    -- | If true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning.
    versions :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsList' with the minimum fields required to make a request.
newStorageObjectsList ::
  -- |  Name of the bucket in which to look for objects. See 'bucket'.
  Core.Text ->
  StorageObjectsList
newStorageObjectsList bucket =
  StorageObjectsList
    { bucket = bucket,
      delimiter = Core.Nothing,
      endOffset = Core.Nothing,
      includeTrailingDelimiter = Core.Nothing,
      maxResults = 1000,
      pageToken = Core.Nothing,
      prefix = Core.Nothing,
      projection = Core.Nothing,
      provisionalUserProject = Core.Nothing,
      startOffset = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing,
      versions = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsList where
  type Rs StorageObjectsList = Objects
  type
    Scopes StorageObjectsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/devstorage.full_control",
         "https://www.googleapis.com/auth/devstorage.read_only",
         "https://www.googleapis.com/auth/devstorage.read_write"
       ]
  requestClient StorageObjectsList {..} =
    go
      bucket
      delimiter
      endOffset
      includeTrailingDelimiter
      (Core.Just maxResults)
      pageToken
      prefix
      projection
      provisionalUserProject
      startOffset
      uploadType
      userProject
      versions
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageObjectsListResource)
          Core.mempty

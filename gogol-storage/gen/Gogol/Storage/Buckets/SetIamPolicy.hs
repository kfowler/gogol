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
-- Module      : Gogol.Storage.Buckets.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an IAM policy for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.setIamPolicy@.
module Gogol.Storage.Buckets.SetIamPolicy
  ( -- * Resource
    StorageBucketsSetIamPolicyResource,

    -- ** Constructing a Request
    newStorageBucketsSetIamPolicy,
    StorageBucketsSetIamPolicy,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.setIamPolicy@ method which the
-- 'StorageBucketsSetIamPolicy' request conforms to.
type StorageBucketsSetIamPolicyResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "iam"
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Policy
    Core.:> Core.Put '[Core.JSON] Policy

-- | Updates an IAM policy for the specified bucket.
--
-- /See:/ 'newStorageBucketsSetIamPolicy' smart constructor.
data StorageBucketsSetIamPolicy = StorageBucketsSetIamPolicy
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | Multipart request metadata.
    payload :: Policy,
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsSetIamPolicy' with the minimum fields required to make a request.
newStorageBucketsSetIamPolicy ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Policy ->
  StorageBucketsSetIamPolicy
newStorageBucketsSetIamPolicy bucket payload =
  StorageBucketsSetIamPolicy
    { bucket = bucket,
      payload = payload,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageBucketsSetIamPolicy
  where
  type Rs StorageBucketsSetIamPolicy = Policy
  type
    Scopes StorageBucketsSetIamPolicy =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/devstorage.full_control"
       ]
  requestClient StorageBucketsSetIamPolicy {..} =
    go
      bucket
      provisionalUserProject
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      payload
      storageService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageBucketsSetIamPolicyResource
          )
          Core.mempty

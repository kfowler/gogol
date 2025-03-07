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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.delete@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Delete
  ( -- * Resource
    CloudbuildProjectsTriggersDeleteResource,

    -- ** Constructing a Request
    newCloudbuildProjectsTriggersDelete,
    CloudbuildProjectsTriggersDelete,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.triggers.delete@ method which the
-- 'CloudbuildProjectsTriggersDelete' request conforms to.
type CloudbuildProjectsTriggersDeleteResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "triggers"
    Core.:> Core.Capture "triggerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsTriggersDelete' smart constructor.
data CloudbuildProjectsTriggersDelete = CloudbuildProjectsTriggersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the @Trigger@ to delete. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@
    name :: (Core.Maybe Core.Text),
    -- | Required. ID of the project that owns the trigger.
    projectId :: Core.Text,
    -- | Required. ID of the @BuildTrigger@ to delete.
    triggerId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsTriggersDelete' with the minimum fields required to make a request.
newCloudbuildProjectsTriggersDelete ::
  -- |  Required. ID of the project that owns the trigger. See 'projectId'.
  Core.Text ->
  -- |  Required. ID of the @BuildTrigger@ to delete. See 'triggerId'.
  Core.Text ->
  CloudbuildProjectsTriggersDelete
newCloudbuildProjectsTriggersDelete projectId triggerId =
  CloudbuildProjectsTriggersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = Core.Nothing,
      projectId = projectId,
      triggerId = triggerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsTriggersDelete
  where
  type Rs CloudbuildProjectsTriggersDelete = Empty
  type
    Scopes CloudbuildProjectsTriggersDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudbuildProjectsTriggersDelete {..} =
    go
      projectId
      triggerId
      xgafv
      accessToken
      callback
      name
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsTriggersDeleteResource
          )
          Core.mempty

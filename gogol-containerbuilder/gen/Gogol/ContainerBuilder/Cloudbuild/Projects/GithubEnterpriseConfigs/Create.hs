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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.githubEnterpriseConfigs.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Create
  ( -- * Resource
    CloudbuildProjectsGithubEnterpriseConfigsCreateResource,

    -- ** Constructing a Request
    newCloudbuildProjectsGithubEnterpriseConfigsCreate,
    CloudbuildProjectsGithubEnterpriseConfigsCreate,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.githubEnterpriseConfigs.create@ method which the
-- 'CloudbuildProjectsGithubEnterpriseConfigsCreate' request conforms to.
type CloudbuildProjectsGithubEnterpriseConfigsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "githubEnterpriseConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "gheConfigId" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GitHubEnterpriseConfig
    Core.:> Core.Post '[Core.JSON] Operation

-- | Create an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ 'newCloudbuildProjectsGithubEnterpriseConfigsCreate' smart constructor.
data CloudbuildProjectsGithubEnterpriseConfigsCreate = CloudbuildProjectsGithubEnterpriseConfigsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig’s resource name. ghe/config/id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
    gheConfigId :: (Core.Maybe Core.Text),
    -- | Name of the parent project. For example: projects\/{$project/number} or projects\/{$project/id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GitHubEnterpriseConfig,
    -- | ID of the project.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsGithubEnterpriseConfigsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsGithubEnterpriseConfigsCreate ::
  -- |  Name of the parent project. For example: projects\/{$project/number} or projects\/{$project/id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GitHubEnterpriseConfig ->
  CloudbuildProjectsGithubEnterpriseConfigsCreate
newCloudbuildProjectsGithubEnterpriseConfigsCreate parent payload =
  CloudbuildProjectsGithubEnterpriseConfigsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      gheConfigId = Core.Nothing,
      parent = parent,
      payload = payload,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsGithubEnterpriseConfigsCreate
  where
  type
    Rs
      CloudbuildProjectsGithubEnterpriseConfigsCreate =
      Operation
  type
    Scopes
      CloudbuildProjectsGithubEnterpriseConfigsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsGithubEnterpriseConfigsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        gheConfigId
        projectId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsGithubEnterpriseConfigsCreateResource
            )
            Core.mempty

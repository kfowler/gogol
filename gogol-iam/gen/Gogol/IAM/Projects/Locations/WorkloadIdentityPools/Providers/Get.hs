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
-- Module      : Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an individual WorkloadIdentityPoolProvider.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.get@.
module Gogol.IAM.Projects.Locations.WorkloadIdentityPools.Providers.Get
  ( -- * Resource
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGetResource,

    -- ** Constructing a Request
    newIAMProjectsLocationsWorkloadIdentityPoolsProvidersGet,
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.get@ method which the
-- 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet' request conforms to.
type IAMProjectsLocationsWorkloadIdentityPoolsProvidersGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] WorkloadIdentityPoolProvider

-- | Gets an individual WorkloadIdentityPoolProvider.
--
-- /See:/ 'newIAMProjectsLocationsWorkloadIdentityPoolsProvidersGet' smart constructor.
data IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet = IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the provider to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet' with the minimum fields required to make a request.
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersGet ::
  -- |  Required. The name of the provider to retrieve. See 'name'.
  Core.Text ->
  IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet
newIAMProjectsLocationsWorkloadIdentityPoolsProvidersGet name =
  IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet
  where
  type
    Rs
      IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet =
      WorkloadIdentityPoolProvider
  type
    Scopes
      IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IAMProjectsLocationsWorkloadIdentityPoolsProvidersGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        iAMService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IAMProjectsLocationsWorkloadIdentityPoolsProvidersGetResource
            )
            Core.mempty

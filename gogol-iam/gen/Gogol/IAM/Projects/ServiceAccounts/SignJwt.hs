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
-- Module      : Gogol.IAM.Projects.ServiceAccounts.SignJwt
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Note:__ This method is deprecated. Use the <https://cloud.google.com/iam/help/rest-credentials/v1/projects.serviceAccounts/signJwt signJwt> method in the IAM Service Account Credentials API instead. If you currently use this method, see the <https://cloud.google.com/iam/help/credentials/migrate-api migration guide> for instructions. Signs a JSON Web Token (JWT) using the system-managed private key for a ServiceAccount.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.signJwt@.
module Gogol.IAM.Projects.ServiceAccounts.SignJwt
  ( -- * Resource
    IAMProjectsServiceAccountsSignJwtResource,

    -- ** Constructing a Request
    newIAMProjectsServiceAccountsSignJwt,
    IAMProjectsServiceAccountsSignJwt,
  )
where

import Gogol.IAM.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @iam.projects.serviceAccounts.signJwt@ method which the
-- 'IAMProjectsServiceAccountsSignJwt' request conforms to.
type IAMProjectsServiceAccountsSignJwtResource =
  "v1"
    Core.:> Core.CaptureMode "name" "signJwt" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SignJwtRequest
    Core.:> Core.Post '[Core.JSON] SignJwtResponse

-- | __Note:__ This method is deprecated. Use the <https://cloud.google.com/iam/help/rest-credentials/v1/projects.serviceAccounts/signJwt signJwt> method in the IAM Service Account Credentials API instead. If you currently use this method, see the <https://cloud.google.com/iam/help/credentials/migrate-api migration guide> for instructions. Signs a JSON Web Token (JWT) using the system-managed private key for a ServiceAccount.
--
-- /See:/ 'newIAMProjectsServiceAccountsSignJwt' smart constructor.
data IAMProjectsServiceAccountsSignJwt = IAMProjectsServiceAccountsSignJwt
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The resource name of the service account in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SignJwtRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMProjectsServiceAccountsSignJwt' with the minimum fields required to make a request.
newIAMProjectsServiceAccountsSignJwt ::
  -- |  Required. Deprecated. <https://cloud.google.com/iam/help/credentials/migrate-api Migrate to Service Account Credentials API>. The resource name of the service account in the following format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. Using @-@ as a wildcard for the @PROJECT_ID@ will infer the project from the account. The @ACCOUNT@ value can be the @email@ address or the @unique_id@ of the service account. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SignJwtRequest ->
  IAMProjectsServiceAccountsSignJwt
newIAMProjectsServiceAccountsSignJwt name payload =
  IAMProjectsServiceAccountsSignJwt
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IAMProjectsServiceAccountsSignJwt
  where
  type
    Rs IAMProjectsServiceAccountsSignJwt =
      SignJwtResponse
  type
    Scopes IAMProjectsServiceAccountsSignJwt =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient IAMProjectsServiceAccountsSignJwt {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      iAMService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IAMProjectsServiceAccountsSignJwtResource
          )
          Core.mempty

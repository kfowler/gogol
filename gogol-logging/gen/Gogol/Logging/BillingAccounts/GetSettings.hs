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
-- Module      : Gogol.Logging.BillingAccounts.GetSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Log Router settings for the given resource.Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.getSettings@.
module Gogol.Logging.BillingAccounts.GetSettings
  ( -- * Resource
    LoggingBillingAccountsGetSettingsResource,

    -- ** Constructing a Request
    newLoggingBillingAccountsGetSettings,
    LoggingBillingAccountsGetSettings,
  )
where

import Gogol.Logging.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @logging.billingAccounts.getSettings@ method which the
-- 'LoggingBillingAccountsGetSettings' request conforms to.
type LoggingBillingAccountsGetSettingsResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "settings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Settings

-- | Gets the Log Router settings for the given resource.Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Log Router (https:\/\/cloud.google.com\/logging\/docs\/routing\/managed-encryption) for more information.
--
-- /See:/ 'newLoggingBillingAccountsGetSettings' smart constructor.
data LoggingBillingAccountsGetSettings = LoggingBillingAccountsGetSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource for which to retrieve settings. \"projects\/[PROJECT/ID]\/settings\" \"organizations\/[ORGANIZATION/ID]\/settings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/settings\" \"folders\/[FOLDER_ID]\/settings\" For example:\"organizations\/12345\/settings\"Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingBillingAccountsGetSettings' with the minimum fields required to make a request.
newLoggingBillingAccountsGetSettings ::
  -- |  Required. The resource for which to retrieve settings. \"projects\/[PROJECT/ID]\/settings\" \"organizations\/[ORGANIZATION/ID]\/settings\" \"billingAccounts\/[BILLING/ACCOUNT/ID]\/settings\" \"folders\/[FOLDER_ID]\/settings\" For example:\"organizations\/12345\/settings\"Note: Settings for the Log Router can be get for Google Cloud projects, folders, organizations and billing accounts. Currently it can only be configured for organizations. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization. See 'name'.
  Core.Text ->
  LoggingBillingAccountsGetSettings
newLoggingBillingAccountsGetSettings name =
  LoggingBillingAccountsGetSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LoggingBillingAccountsGetSettings
  where
  type Rs LoggingBillingAccountsGetSettings = Settings
  type
    Scopes LoggingBillingAccountsGetSettings =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/logging.admin",
         "https://www.googleapis.com/auth/logging.read"
       ]
  requestClient LoggingBillingAccountsGetSettings {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      loggingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LoggingBillingAccountsGetSettingsResource
          )
          Core.mempty

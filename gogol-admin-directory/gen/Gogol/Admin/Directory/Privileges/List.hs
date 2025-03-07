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
-- Module      : Gogol.Admin.Directory.Privileges.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a paginated list of all privileges for a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.privileges.list@.
module Gogol.Admin.Directory.Privileges.List
  ( -- * Resource
    DirectoryPrivilegesListResource,

    -- ** Constructing a Request
    newDirectoryPrivilegesList,
    DirectoryPrivilegesList,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.privileges.list@ method which the
-- 'DirectoryPrivilegesList' request conforms to.
type DirectoryPrivilegesListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "roles"
    Core.:> "ALL"
    Core.:> "privileges"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Privileges

-- | Retrieves a paginated list of all privileges for a customer.
--
-- /See:/ 'newDirectoryPrivilegesList' smart constructor.
data DirectoryPrivilegesList = DirectoryPrivilegesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable ID of the Google Workspace account.
    customer :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryPrivilegesList' with the minimum fields required to make a request.
newDirectoryPrivilegesList ::
  -- |  Immutable ID of the Google Workspace account. See 'customer'.
  Core.Text ->
  DirectoryPrivilegesList
newDirectoryPrivilegesList customer =
  DirectoryPrivilegesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryPrivilegesList where
  type Rs DirectoryPrivilegesList = Privileges
  type
    Scopes DirectoryPrivilegesList =
      '[ "https://www.googleapis.com/auth/admin.directory.rolemanagement",
         "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"
       ]
  requestClient DirectoryPrivilegesList {..} =
    go
      customer
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DirectoryPrivilegesListResource
          )
          Core.mempty

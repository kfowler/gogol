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
-- Module      : Gogol.AndroidManagement.Enterprises.Devices.Operations.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn\'t support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.operations.cancel@.
module Gogol.AndroidManagement.Enterprises.Devices.Operations.Cancel
  ( -- * Resource
    AndroidManagementEnterprisesDevicesOperationsCancelResource,

    -- ** Constructing a Request
    newAndroidManagementEnterprisesDevicesOperationsCancel,
    AndroidManagementEnterprisesDevicesOperationsCancel,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.devices.operations.cancel@ method which the
-- 'AndroidManagementEnterprisesDevicesOperationsCancel' request conforms to.
type AndroidManagementEnterprisesDevicesOperationsCancelResource =
  "v1"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Empty

-- | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn\'t support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.
--
-- /See:/ 'newAndroidManagementEnterprisesDevicesOperationsCancel' smart constructor.
data AndroidManagementEnterprisesDevicesOperationsCancel = AndroidManagementEnterprisesDevicesOperationsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource to be cancelled.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesDevicesOperationsCancel' with the minimum fields required to make a request.
newAndroidManagementEnterprisesDevicesOperationsCancel ::
  -- |  The name of the operation resource to be cancelled. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesDevicesOperationsCancel
newAndroidManagementEnterprisesDevicesOperationsCancel name =
  AndroidManagementEnterprisesDevicesOperationsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesDevicesOperationsCancel
  where
  type
    Rs
      AndroidManagementEnterprisesDevicesOperationsCancel =
      Empty
  type
    Scopes
      AndroidManagementEnterprisesDevicesOperationsCancel =
      '["https://www.googleapis.com/auth/androidmanagement"]
  requestClient
    AndroidManagementEnterprisesDevicesOperationsCancel {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesDevicesOperationsCancelResource
            )
            Core.mempty

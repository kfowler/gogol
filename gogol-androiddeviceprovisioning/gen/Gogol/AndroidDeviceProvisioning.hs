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
-- Module      : Gogol.AndroidDeviceProvisioning
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Automates Android zero-touch enrollment for device resellers, customers, and EMMs.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference>
module Gogol.AndroidDeviceProvisioning
  ( -- * Configuration
    androidDeviceProvisioningService,

    -- * Resources

    -- ** androiddeviceprovisioning.customers.configurations.create
    AndroidDeviceProvisioningCustomersConfigurationsCreateResource,
    newAndroidDeviceProvisioningCustomersConfigurationsCreate,
    AndroidDeviceProvisioningCustomersConfigurationsCreate,

    -- ** androiddeviceprovisioning.customers.configurations.delete
    AndroidDeviceProvisioningCustomersConfigurationsDeleteResource,
    newAndroidDeviceProvisioningCustomersConfigurationsDelete,
    AndroidDeviceProvisioningCustomersConfigurationsDelete,

    -- ** androiddeviceprovisioning.customers.configurations.get
    AndroidDeviceProvisioningCustomersConfigurationsGetResource,
    newAndroidDeviceProvisioningCustomersConfigurationsGet,
    AndroidDeviceProvisioningCustomersConfigurationsGet,

    -- ** androiddeviceprovisioning.customers.configurations.list
    AndroidDeviceProvisioningCustomersConfigurationsListResource,
    newAndroidDeviceProvisioningCustomersConfigurationsList,
    AndroidDeviceProvisioningCustomersConfigurationsList,

    -- ** androiddeviceprovisioning.customers.configurations.patch
    AndroidDeviceProvisioningCustomersConfigurationsPatchResource,
    newAndroidDeviceProvisioningCustomersConfigurationsPatch,
    AndroidDeviceProvisioningCustomersConfigurationsPatch,

    -- ** androiddeviceprovisioning.customers.devices.applyConfiguration
    AndroidDeviceProvisioningCustomersDevicesApplyConfigurationResource,
    newAndroidDeviceProvisioningCustomersDevicesApplyConfiguration,
    AndroidDeviceProvisioningCustomersDevicesApplyConfiguration,

    -- ** androiddeviceprovisioning.customers.devices.get
    AndroidDeviceProvisioningCustomersDevicesGetResource,
    newAndroidDeviceProvisioningCustomersDevicesGet,
    AndroidDeviceProvisioningCustomersDevicesGet,

    -- ** androiddeviceprovisioning.customers.devices.list
    AndroidDeviceProvisioningCustomersDevicesListResource,
    newAndroidDeviceProvisioningCustomersDevicesList,
    AndroidDeviceProvisioningCustomersDevicesList,

    -- ** androiddeviceprovisioning.customers.devices.removeConfiguration
    AndroidDeviceProvisioningCustomersDevicesRemoveConfigurationResource,
    newAndroidDeviceProvisioningCustomersDevicesRemoveConfiguration,
    AndroidDeviceProvisioningCustomersDevicesRemoveConfiguration,

    -- ** androiddeviceprovisioning.customers.devices.unclaim
    AndroidDeviceProvisioningCustomersDevicesUnclaimResource,
    newAndroidDeviceProvisioningCustomersDevicesUnclaim,
    AndroidDeviceProvisioningCustomersDevicesUnclaim,

    -- ** androiddeviceprovisioning.customers.dpcs.list
    AndroidDeviceProvisioningCustomersDpcsListResource,
    newAndroidDeviceProvisioningCustomersDpcsList,
    AndroidDeviceProvisioningCustomersDpcsList,

    -- ** androiddeviceprovisioning.customers.list
    AndroidDeviceProvisioningCustomersListResource,
    newAndroidDeviceProvisioningCustomersList,
    AndroidDeviceProvisioningCustomersList,

    -- ** androiddeviceprovisioning.operations.get
    AndroidDeviceProvisioningOperationsGetResource,
    newAndroidDeviceProvisioningOperationsGet,
    AndroidDeviceProvisioningOperationsGet,

    -- ** androiddeviceprovisioning.partners.customers.create
    AndroidDeviceProvisioningPartnersCustomersCreateResource,
    newAndroidDeviceProvisioningPartnersCustomersCreate,
    AndroidDeviceProvisioningPartnersCustomersCreate,

    -- ** androiddeviceprovisioning.partners.customers.list
    AndroidDeviceProvisioningPartnersCustomersListResource,
    newAndroidDeviceProvisioningPartnersCustomersList,
    AndroidDeviceProvisioningPartnersCustomersList,

    -- ** androiddeviceprovisioning.partners.devices.claim
    AndroidDeviceProvisioningPartnersDevicesClaimResource,
    newAndroidDeviceProvisioningPartnersDevicesClaim,
    AndroidDeviceProvisioningPartnersDevicesClaim,

    -- ** androiddeviceprovisioning.partners.devices.claimAsync
    AndroidDeviceProvisioningPartnersDevicesClaimAsyncResource,
    newAndroidDeviceProvisioningPartnersDevicesClaimAsync,
    AndroidDeviceProvisioningPartnersDevicesClaimAsync,

    -- ** androiddeviceprovisioning.partners.devices.findByIdentifier
    AndroidDeviceProvisioningPartnersDevicesFindByIdentifierResource,
    newAndroidDeviceProvisioningPartnersDevicesFindByIdentifier,
    AndroidDeviceProvisioningPartnersDevicesFindByIdentifier,

    -- ** androiddeviceprovisioning.partners.devices.findByOwner
    AndroidDeviceProvisioningPartnersDevicesFindByOwnerResource,
    newAndroidDeviceProvisioningPartnersDevicesFindByOwner,
    AndroidDeviceProvisioningPartnersDevicesFindByOwner,

    -- ** androiddeviceprovisioning.partners.devices.get
    AndroidDeviceProvisioningPartnersDevicesGetResource,
    newAndroidDeviceProvisioningPartnersDevicesGet,
    AndroidDeviceProvisioningPartnersDevicesGet,

    -- ** androiddeviceprovisioning.partners.devices.metadata
    AndroidDeviceProvisioningPartnersDevicesMetadataResource,
    newAndroidDeviceProvisioningPartnersDevicesMetadata,
    AndroidDeviceProvisioningPartnersDevicesMetadata,

    -- ** androiddeviceprovisioning.partners.devices.unclaim
    AndroidDeviceProvisioningPartnersDevicesUnclaimResource,
    newAndroidDeviceProvisioningPartnersDevicesUnclaim,
    AndroidDeviceProvisioningPartnersDevicesUnclaim,

    -- ** androiddeviceprovisioning.partners.devices.unclaimAsync
    AndroidDeviceProvisioningPartnersDevicesUnclaimAsyncResource,
    newAndroidDeviceProvisioningPartnersDevicesUnclaimAsync,
    AndroidDeviceProvisioningPartnersDevicesUnclaimAsync,

    -- ** androiddeviceprovisioning.partners.devices.updateMetadataAsync
    AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsyncResource,
    newAndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync,
    AndroidDeviceProvisioningPartnersDevicesUpdateMetadataAsync,

    -- ** androiddeviceprovisioning.partners.vendors.customers.list
    AndroidDeviceProvisioningPartnersVendorsCustomersListResource,
    newAndroidDeviceProvisioningPartnersVendorsCustomersList,
    AndroidDeviceProvisioningPartnersVendorsCustomersList,

    -- ** androiddeviceprovisioning.partners.vendors.list
    AndroidDeviceProvisioningPartnersVendorsListResource,
    newAndroidDeviceProvisioningPartnersVendorsList,
    AndroidDeviceProvisioningPartnersVendorsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** ClaimDeviceRequest
    ClaimDeviceRequest (..),
    newClaimDeviceRequest,

    -- ** ClaimDeviceRequest_SectionType
    ClaimDeviceRequest_SectionType (..),

    -- ** ClaimDeviceResponse
    ClaimDeviceResponse (..),
    newClaimDeviceResponse,

    -- ** ClaimDevicesRequest
    ClaimDevicesRequest (..),
    newClaimDevicesRequest,

    -- ** Company
    Company (..),
    newCompany,

    -- ** Company_TermsStatus
    Company_TermsStatus (..),

    -- ** Configuration
    Configuration (..),
    newConfiguration,

    -- ** CreateCustomerRequest
    CreateCustomerRequest (..),
    newCreateCustomerRequest,

    -- ** CustomerApplyConfigurationRequest
    CustomerApplyConfigurationRequest (..),
    newCustomerApplyConfigurationRequest,

    -- ** CustomerListConfigurationsResponse
    CustomerListConfigurationsResponse (..),
    newCustomerListConfigurationsResponse,

    -- ** CustomerListCustomersResponse
    CustomerListCustomersResponse (..),
    newCustomerListCustomersResponse,

    -- ** CustomerListDevicesResponse
    CustomerListDevicesResponse (..),
    newCustomerListDevicesResponse,

    -- ** CustomerListDpcsResponse
    CustomerListDpcsResponse (..),
    newCustomerListDpcsResponse,

    -- ** CustomerRemoveConfigurationRequest
    CustomerRemoveConfigurationRequest (..),
    newCustomerRemoveConfigurationRequest,

    -- ** CustomerUnclaimDeviceRequest
    CustomerUnclaimDeviceRequest (..),
    newCustomerUnclaimDeviceRequest,

    -- ** Device
    Device (..),
    newDevice,

    -- ** DeviceClaim
    DeviceClaim (..),
    newDeviceClaim,

    -- ** DeviceClaim_AdditionalService
    DeviceClaim_AdditionalService (..),

    -- ** DeviceClaim_SectionType
    DeviceClaim_SectionType (..),

    -- ** DeviceIdentifier
    DeviceIdentifier (..),
    newDeviceIdentifier,

    -- ** DeviceMetadata
    DeviceMetadata (..),
    newDeviceMetadata,

    -- ** DeviceMetadata_Entries
    DeviceMetadata_Entries (..),
    newDeviceMetadata_Entries,

    -- ** DeviceReference
    DeviceReference (..),
    newDeviceReference,

    -- ** DevicesLongRunningOperationMetadata
    DevicesLongRunningOperationMetadata (..),
    newDevicesLongRunningOperationMetadata,

    -- ** DevicesLongRunningOperationMetadata_ProcessingStatus
    DevicesLongRunningOperationMetadata_ProcessingStatus (..),

    -- ** DevicesLongRunningOperationResponse
    DevicesLongRunningOperationResponse (..),
    newDevicesLongRunningOperationResponse,

    -- ** Dpc
    Dpc (..),
    newDpc,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FindDevicesByDeviceIdentifierRequest
    FindDevicesByDeviceIdentifierRequest (..),
    newFindDevicesByDeviceIdentifierRequest,

    -- ** FindDevicesByDeviceIdentifierResponse
    FindDevicesByDeviceIdentifierResponse (..),
    newFindDevicesByDeviceIdentifierResponse,

    -- ** FindDevicesByOwnerRequest
    FindDevicesByOwnerRequest (..),
    newFindDevicesByOwnerRequest,

    -- ** FindDevicesByOwnerRequest_SectionType
    FindDevicesByOwnerRequest_SectionType (..),

    -- ** FindDevicesByOwnerResponse
    FindDevicesByOwnerResponse (..),
    newFindDevicesByOwnerResponse,

    -- ** ListCustomersResponse
    ListCustomersResponse (..),
    newListCustomersResponse,

    -- ** ListVendorCustomersResponse
    ListVendorCustomersResponse (..),
    newListVendorCustomersResponse,

    -- ** ListVendorsResponse
    ListVendorsResponse (..),
    newListVendorsResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationPerDevice
    OperationPerDevice (..),
    newOperationPerDevice,

    -- ** PartnerClaim
    PartnerClaim (..),
    newPartnerClaim,

    -- ** PartnerClaim_SectionType
    PartnerClaim_SectionType (..),

    -- ** PartnerUnclaim
    PartnerUnclaim (..),
    newPartnerUnclaim,

    -- ** PartnerUnclaim_SectionType
    PartnerUnclaim_SectionType (..),

    -- ** PerDeviceStatusInBatch
    PerDeviceStatusInBatch (..),
    newPerDeviceStatusInBatch,

    -- ** PerDeviceStatusInBatch_Status
    PerDeviceStatusInBatch_Status (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** UnclaimDeviceRequest
    UnclaimDeviceRequest (..),
    newUnclaimDeviceRequest,

    -- ** UnclaimDeviceRequest_SectionType
    UnclaimDeviceRequest_SectionType (..),

    -- ** UnclaimDevicesRequest
    UnclaimDevicesRequest (..),
    newUnclaimDevicesRequest,

    -- ** UpdateDeviceMetadataInBatchRequest
    UpdateDeviceMetadataInBatchRequest (..),
    newUpdateDeviceMetadataInBatchRequest,

    -- ** UpdateDeviceMetadataRequest
    UpdateDeviceMetadataRequest (..),
    newUpdateDeviceMetadataRequest,

    -- ** UpdateMetadataArguments
    UpdateMetadataArguments (..),
    newUpdateMetadataArguments,
  )
where

import Gogol.AndroidDeviceProvisioning.Customers.Configurations.Create
import Gogol.AndroidDeviceProvisioning.Customers.Configurations.Delete
import Gogol.AndroidDeviceProvisioning.Customers.Configurations.Get
import Gogol.AndroidDeviceProvisioning.Customers.Configurations.List
import Gogol.AndroidDeviceProvisioning.Customers.Configurations.Patch
import Gogol.AndroidDeviceProvisioning.Customers.Devices.ApplyConfiguration
import Gogol.AndroidDeviceProvisioning.Customers.Devices.Get
import Gogol.AndroidDeviceProvisioning.Customers.Devices.List
import Gogol.AndroidDeviceProvisioning.Customers.Devices.RemoveConfiguration
import Gogol.AndroidDeviceProvisioning.Customers.Devices.Unclaim
import Gogol.AndroidDeviceProvisioning.Customers.Dpcs.List
import Gogol.AndroidDeviceProvisioning.Customers.List
import Gogol.AndroidDeviceProvisioning.Operations.Get
import Gogol.AndroidDeviceProvisioning.Partners.Customers.Create
import Gogol.AndroidDeviceProvisioning.Partners.Customers.List
import Gogol.AndroidDeviceProvisioning.Partners.Devices.Claim
import Gogol.AndroidDeviceProvisioning.Partners.Devices.ClaimAsync
import Gogol.AndroidDeviceProvisioning.Partners.Devices.FindByIdentifier
import Gogol.AndroidDeviceProvisioning.Partners.Devices.FindByOwner
import Gogol.AndroidDeviceProvisioning.Partners.Devices.Get
import Gogol.AndroidDeviceProvisioning.Partners.Devices.Metadata
import Gogol.AndroidDeviceProvisioning.Partners.Devices.Unclaim
import Gogol.AndroidDeviceProvisioning.Partners.Devices.UnclaimAsync
import Gogol.AndroidDeviceProvisioning.Partners.Devices.UpdateMetadataAsync
import Gogol.AndroidDeviceProvisioning.Partners.Vendors.Customers.List
import Gogol.AndroidDeviceProvisioning.Partners.Vendors.List
import Gogol.AndroidDeviceProvisioning.Types

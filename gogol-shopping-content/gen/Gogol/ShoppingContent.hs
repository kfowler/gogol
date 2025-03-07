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
-- Module      : Gogol.ShoppingContent
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manage your product listings and accounts for Google Shopping
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference>
module Gogol.ShoppingContent
  ( -- * Configuration
    shoppingContentService,

    -- * OAuth Scopes
    contentScope,

    -- * Resources

    -- ** content.accounts.authinfo
    ContentAccountsAuthinfoResource,
    newContentAccountsAuthinfo,
    ContentAccountsAuthinfo,

    -- ** content.accounts.claimwebsite
    ContentAccountsClaimwebsiteResource,
    newContentAccountsClaimwebsite,
    ContentAccountsClaimwebsite,

    -- ** content.accounts.credentials.create
    ContentAccountsCredentialsCreateResource,
    newContentAccountsCredentialsCreate,
    ContentAccountsCredentialsCreate,

    -- ** content.accounts.custombatch
    ContentAccountsCustombatchResource,
    newContentAccountsCustombatch,
    ContentAccountsCustombatch,

    -- ** content.accounts.delete
    ContentAccountsDeleteResource,
    newContentAccountsDelete,
    ContentAccountsDelete,

    -- ** content.accounts.get
    ContentAccountsGetResource,
    newContentAccountsGet,
    ContentAccountsGet,

    -- ** content.accounts.insert
    ContentAccountsInsertResource,
    newContentAccountsInsert,
    ContentAccountsInsert,

    -- ** content.accounts.labels.create
    ContentAccountsLabelsCreateResource,
    newContentAccountsLabelsCreate,
    ContentAccountsLabelsCreate,

    -- ** content.accounts.labels.delete
    ContentAccountsLabelsDeleteResource,
    newContentAccountsLabelsDelete,
    ContentAccountsLabelsDelete,

    -- ** content.accounts.labels.list
    ContentAccountsLabelsListResource,
    newContentAccountsLabelsList,
    ContentAccountsLabelsList,

    -- ** content.accounts.labels.patch
    ContentAccountsLabelsPatchResource,
    newContentAccountsLabelsPatch,
    ContentAccountsLabelsPatch,

    -- ** content.accounts.link
    ContentAccountsLinkResource,
    newContentAccountsLink,
    ContentAccountsLink,

    -- ** content.accounts.list
    ContentAccountsListResource,
    newContentAccountsList,
    ContentAccountsList,

    -- ** content.accounts.listlinks
    ContentAccountsListlinksResource,
    newContentAccountsListlinks,
    ContentAccountsListlinks,

    -- ** content.accounts.requestphoneverification
    ContentAccountsRequestphoneverificationResource,
    newContentAccountsRequestphoneverification,
    ContentAccountsRequestphoneverification,

    -- ** content.accounts.returncarrier.create
    ContentAccountsReturncarrierCreateResource,
    newContentAccountsReturncarrierCreate,
    ContentAccountsReturncarrierCreate,

    -- ** content.accounts.returncarrier.delete
    ContentAccountsReturncarrierDeleteResource,
    newContentAccountsReturncarrierDelete,
    ContentAccountsReturncarrierDelete,

    -- ** content.accounts.returncarrier.list
    ContentAccountsReturncarrierListResource,
    newContentAccountsReturncarrierList,
    ContentAccountsReturncarrierList,

    -- ** content.accounts.returncarrier.patch
    ContentAccountsReturncarrierPatchResource,
    newContentAccountsReturncarrierPatch,
    ContentAccountsReturncarrierPatch,

    -- ** content.accounts.update
    ContentAccountsUpdateResource,
    newContentAccountsUpdate,
    ContentAccountsUpdate,

    -- ** content.accounts.updatelabels
    ContentAccountsUpdatelabelsResource,
    newContentAccountsUpdatelabels,
    ContentAccountsUpdatelabels,

    -- ** content.accounts.verifyphonenumber
    ContentAccountsVerifyphonenumberResource,
    newContentAccountsVerifyphonenumber,
    ContentAccountsVerifyphonenumber,

    -- ** content.accountstatuses.custombatch
    ContentAccountstatusesCustombatchResource,
    newContentAccountstatusesCustombatch,
    ContentAccountstatusesCustombatch,

    -- ** content.accountstatuses.get
    ContentAccountstatusesGetResource,
    newContentAccountstatusesGet,
    ContentAccountstatusesGet,

    -- ** content.accountstatuses.list
    ContentAccountstatusesListResource,
    newContentAccountstatusesList,
    ContentAccountstatusesList,

    -- ** content.accounttax.custombatch
    ContentAccounttaxCustombatchResource,
    newContentAccounttaxCustombatch,
    ContentAccounttaxCustombatch,

    -- ** content.accounttax.get
    ContentAccounttaxGetResource,
    newContentAccounttaxGet,
    ContentAccounttaxGet,

    -- ** content.accounttax.list
    ContentAccounttaxListResource,
    newContentAccounttaxList,
    ContentAccounttaxList,

    -- ** content.accounttax.update
    ContentAccounttaxUpdateResource,
    newContentAccounttaxUpdate,
    ContentAccounttaxUpdate,

    -- ** content.buyongoogleprograms.activate
    ContentBuyongoogleprogramsActivateResource,
    newContentBuyongoogleprogramsActivate,
    ContentBuyongoogleprogramsActivate,

    -- ** content.buyongoogleprograms.get
    ContentBuyongoogleprogramsGetResource,
    newContentBuyongoogleprogramsGet,
    ContentBuyongoogleprogramsGet,

    -- ** content.buyongoogleprograms.onboard
    ContentBuyongoogleprogramsOnboardResource,
    newContentBuyongoogleprogramsOnboard,
    ContentBuyongoogleprogramsOnboard,

    -- ** content.buyongoogleprograms.patch
    ContentBuyongoogleprogramsPatchResource,
    newContentBuyongoogleprogramsPatch,
    ContentBuyongoogleprogramsPatch,

    -- ** content.buyongoogleprograms.pause
    ContentBuyongoogleprogramsPauseResource,
    newContentBuyongoogleprogramsPause,
    ContentBuyongoogleprogramsPause,

    -- ** content.buyongoogleprograms.requestreview
    ContentBuyongoogleprogramsRequestreviewResource,
    newContentBuyongoogleprogramsRequestreview,
    ContentBuyongoogleprogramsRequestreview,

    -- ** content.collections.create
    ContentCollectionsCreateResource,
    newContentCollectionsCreate,
    ContentCollectionsCreate,

    -- ** content.collections.delete
    ContentCollectionsDeleteResource,
    newContentCollectionsDelete,
    ContentCollectionsDelete,

    -- ** content.collections.get
    ContentCollectionsGetResource,
    newContentCollectionsGet,
    ContentCollectionsGet,

    -- ** content.collections.list
    ContentCollectionsListResource,
    newContentCollectionsList,
    ContentCollectionsList,

    -- ** content.collectionstatuses.get
    ContentCollectionstatusesGetResource,
    newContentCollectionstatusesGet,
    ContentCollectionstatusesGet,

    -- ** content.collectionstatuses.list
    ContentCollectionstatusesListResource,
    newContentCollectionstatusesList,
    ContentCollectionstatusesList,

    -- ** content.csses.get
    ContentCssesGetResource,
    newContentCssesGet,
    ContentCssesGet,

    -- ** content.csses.list
    ContentCssesListResource,
    newContentCssesList,
    ContentCssesList,

    -- ** content.csses.updatelabels
    ContentCssesUpdatelabelsResource,
    newContentCssesUpdatelabels,
    ContentCssesUpdatelabels,

    -- ** content.datafeeds.custombatch
    ContentDatafeedsCustombatchResource,
    newContentDatafeedsCustombatch,
    ContentDatafeedsCustombatch,

    -- ** content.datafeeds.delete
    ContentDatafeedsDeleteResource,
    newContentDatafeedsDelete,
    ContentDatafeedsDelete,

    -- ** content.datafeeds.fetchnow
    ContentDatafeedsFetchnowResource,
    newContentDatafeedsFetchnow,
    ContentDatafeedsFetchnow,

    -- ** content.datafeeds.get
    ContentDatafeedsGetResource,
    newContentDatafeedsGet,
    ContentDatafeedsGet,

    -- ** content.datafeeds.insert
    ContentDatafeedsInsertResource,
    newContentDatafeedsInsert,
    ContentDatafeedsInsert,

    -- ** content.datafeeds.list
    ContentDatafeedsListResource,
    newContentDatafeedsList,
    ContentDatafeedsList,

    -- ** content.datafeeds.update
    ContentDatafeedsUpdateResource,
    newContentDatafeedsUpdate,
    ContentDatafeedsUpdate,

    -- ** content.datafeedstatuses.custombatch
    ContentDatafeedstatusesCustombatchResource,
    newContentDatafeedstatusesCustombatch,
    ContentDatafeedstatusesCustombatch,

    -- ** content.datafeedstatuses.get
    ContentDatafeedstatusesGetResource,
    newContentDatafeedstatusesGet,
    ContentDatafeedstatusesGet,

    -- ** content.datafeedstatuses.list
    ContentDatafeedstatusesListResource,
    newContentDatafeedstatusesList,
    ContentDatafeedstatusesList,

    -- ** content.freelistingsprogram.get
    ContentFreelistingsprogramGetResource,
    newContentFreelistingsprogramGet,
    ContentFreelistingsprogramGet,

    -- ** content.freelistingsprogram.requestreview
    ContentFreelistingsprogramRequestreviewResource,
    newContentFreelistingsprogramRequestreview,
    ContentFreelistingsprogramRequestreview,

    -- ** content.liasettings.custombatch
    ContentLiasettingsCustombatchResource,
    newContentLiasettingsCustombatch,
    ContentLiasettingsCustombatch,

    -- ** content.liasettings.get
    ContentLiasettingsGetResource,
    newContentLiasettingsGet,
    ContentLiasettingsGet,

    -- ** content.liasettings.getaccessiblegmbaccounts
    ContentLiasettingsGetaccessiblegmbaccountsResource,
    newContentLiasettingsGetaccessiblegmbaccounts,
    ContentLiasettingsGetaccessiblegmbaccounts,

    -- ** content.liasettings.list
    ContentLiasettingsListResource,
    newContentLiasettingsList,
    ContentLiasettingsList,

    -- ** content.liasettings.listposdataproviders
    ContentLiasettingsListposdataprovidersResource,
    newContentLiasettingsListposdataproviders,
    ContentLiasettingsListposdataproviders,

    -- ** content.liasettings.requestgmbaccess
    ContentLiasettingsRequestgmbaccessResource,
    newContentLiasettingsRequestgmbaccess,
    ContentLiasettingsRequestgmbaccess,

    -- ** content.liasettings.requestinventoryverification
    ContentLiasettingsRequestinventoryverificationResource,
    newContentLiasettingsRequestinventoryverification,
    ContentLiasettingsRequestinventoryverification,

    -- ** content.liasettings.setinventoryverificationcontact
    ContentLiasettingsSetinventoryverificationcontactResource,
    newContentLiasettingsSetinventoryverificationcontact,
    ContentLiasettingsSetinventoryverificationcontact,

    -- ** content.liasettings.setposdataprovider
    ContentLiasettingsSetposdataproviderResource,
    newContentLiasettingsSetposdataprovider,
    ContentLiasettingsSetposdataprovider,

    -- ** content.liasettings.update
    ContentLiasettingsUpdateResource,
    newContentLiasettingsUpdate,
    ContentLiasettingsUpdate,

    -- ** content.localinventory.custombatch
    ContentLocalinventoryCustombatchResource,
    newContentLocalinventoryCustombatch,
    ContentLocalinventoryCustombatch,

    -- ** content.localinventory.insert
    ContentLocalinventoryInsertResource,
    newContentLocalinventoryInsert,
    ContentLocalinventoryInsert,

    -- ** content.orderinvoices.createchargeinvoice
    ContentOrderinvoicesCreatechargeinvoiceResource,
    newContentOrderinvoicesCreatechargeinvoice,
    ContentOrderinvoicesCreatechargeinvoice,

    -- ** content.orderinvoices.createrefundinvoice
    ContentOrderinvoicesCreaterefundinvoiceResource,
    newContentOrderinvoicesCreaterefundinvoice,
    ContentOrderinvoicesCreaterefundinvoice,

    -- ** content.orderreports.listdisbursements
    ContentOrderreportsListdisbursementsResource,
    newContentOrderreportsListdisbursements,
    ContentOrderreportsListdisbursements,

    -- ** content.orderreports.listtransactions
    ContentOrderreportsListtransactionsResource,
    newContentOrderreportsListtransactions,
    ContentOrderreportsListtransactions,

    -- ** content.orderreturns.acknowledge
    ContentOrderreturnsAcknowledgeResource,
    newContentOrderreturnsAcknowledge,
    ContentOrderreturnsAcknowledge,

    -- ** content.orderreturns.createorderreturn
    ContentOrderreturnsCreateorderreturnResource,
    newContentOrderreturnsCreateorderreturn,
    ContentOrderreturnsCreateorderreturn,

    -- ** content.orderreturns.get
    ContentOrderreturnsGetResource,
    newContentOrderreturnsGet,
    ContentOrderreturnsGet,

    -- ** content.orderreturns.labels.create
    ContentOrderreturnsLabelsCreateResource,
    newContentOrderreturnsLabelsCreate,
    ContentOrderreturnsLabelsCreate,

    -- ** content.orderreturns.list
    ContentOrderreturnsListResource,
    newContentOrderreturnsList,
    ContentOrderreturnsList,

    -- ** content.orderreturns.process
    ContentOrderreturnsProcessResource,
    newContentOrderreturnsProcess,
    ContentOrderreturnsProcess,

    -- ** content.orders.acknowledge
    ContentOrdersAcknowledgeResource,
    newContentOrdersAcknowledge,
    ContentOrdersAcknowledge,

    -- ** content.orders.advancetestorder
    ContentOrdersAdvancetestorderResource,
    newContentOrdersAdvancetestorder,
    ContentOrdersAdvancetestorder,

    -- ** content.orders.cancel
    ContentOrdersCancelResource,
    newContentOrdersCancel,
    ContentOrdersCancel,

    -- ** content.orders.cancellineitem
    ContentOrdersCancellineitemResource,
    newContentOrdersCancellineitem,
    ContentOrdersCancellineitem,

    -- ** content.orders.canceltestorderbycustomer
    ContentOrdersCanceltestorderbycustomerResource,
    newContentOrdersCanceltestorderbycustomer,
    ContentOrdersCanceltestorderbycustomer,

    -- ** content.orders.captureOrder
    ContentOrdersCaptureOrderResource,
    newContentOrdersCaptureOrder,
    ContentOrdersCaptureOrder,

    -- ** content.orders.createtestorder
    ContentOrdersCreatetestorderResource,
    newContentOrdersCreatetestorder,
    ContentOrdersCreatetestorder,

    -- ** content.orders.createtestreturn
    ContentOrdersCreatetestreturnResource,
    newContentOrdersCreatetestreturn,
    ContentOrdersCreatetestreturn,

    -- ** content.orders.get
    ContentOrdersGetResource,
    newContentOrdersGet,
    ContentOrdersGet,

    -- ** content.orders.getbymerchantorderid
    ContentOrdersGetbymerchantorderidResource,
    newContentOrdersGetbymerchantorderid,
    ContentOrdersGetbymerchantorderid,

    -- ** content.orders.gettestordertemplate
    ContentOrdersGettestordertemplateResource,
    newContentOrdersGettestordertemplate,
    ContentOrdersGettestordertemplate,

    -- ** content.orders.instorerefundlineitem
    ContentOrdersInstorerefundlineitemResource,
    newContentOrdersInstorerefundlineitem,
    ContentOrdersInstorerefundlineitem,

    -- ** content.orders.list
    ContentOrdersListResource,
    newContentOrdersList,
    ContentOrdersList,

    -- ** content.orders.refunditem
    ContentOrdersRefunditemResource,
    newContentOrdersRefunditem,
    ContentOrdersRefunditem,

    -- ** content.orders.refundorder
    ContentOrdersRefundorderResource,
    newContentOrdersRefundorder,
    ContentOrdersRefundorder,

    -- ** content.orders.rejectreturnlineitem
    ContentOrdersRejectreturnlineitemResource,
    newContentOrdersRejectreturnlineitem,
    ContentOrdersRejectreturnlineitem,

    -- ** content.orders.returnrefundlineitem
    ContentOrdersReturnrefundlineitemResource,
    newContentOrdersReturnrefundlineitem,
    ContentOrdersReturnrefundlineitem,

    -- ** content.orders.setlineitemmetadata
    ContentOrdersSetlineitemmetadataResource,
    newContentOrdersSetlineitemmetadata,
    ContentOrdersSetlineitemmetadata,

    -- ** content.orders.shiplineitems
    ContentOrdersShiplineitemsResource,
    newContentOrdersShiplineitems,
    ContentOrdersShiplineitems,

    -- ** content.orders.updatelineitemshippingdetails
    ContentOrdersUpdatelineitemshippingdetailsResource,
    newContentOrdersUpdatelineitemshippingdetails,
    ContentOrdersUpdatelineitemshippingdetails,

    -- ** content.orders.updatemerchantorderid
    ContentOrdersUpdatemerchantorderidResource,
    newContentOrdersUpdatemerchantorderid,
    ContentOrdersUpdatemerchantorderid,

    -- ** content.orders.updateshipment
    ContentOrdersUpdateshipmentResource,
    newContentOrdersUpdateshipment,
    ContentOrdersUpdateshipment,

    -- ** content.ordertrackingsignals.create
    ContentOrdertrackingsignalsCreateResource,
    newContentOrdertrackingsignalsCreate,
    ContentOrdertrackingsignalsCreate,

    -- ** content.pos.custombatch
    ContentPosCustombatchResource,
    newContentPosCustombatch,
    ContentPosCustombatch,

    -- ** content.pos.delete
    ContentPosDeleteResource,
    newContentPosDelete,
    ContentPosDelete,

    -- ** content.pos.get
    ContentPosGetResource,
    newContentPosGet,
    ContentPosGet,

    -- ** content.pos.insert
    ContentPosInsertResource,
    newContentPosInsert,
    ContentPosInsert,

    -- ** content.pos.inventory
    ContentPosInventoryResource,
    newContentPosInventory,
    ContentPosInventory,

    -- ** content.pos.list
    ContentPosListResource,
    newContentPosList,
    ContentPosList,

    -- ** content.pos.sale
    ContentPosSaleResource,
    newContentPosSale,
    ContentPosSale,

    -- ** content.products.custombatch
    ContentProductsCustombatchResource,
    newContentProductsCustombatch,
    ContentProductsCustombatch,

    -- ** content.products.delete
    ContentProductsDeleteResource,
    newContentProductsDelete,
    ContentProductsDelete,

    -- ** content.products.get
    ContentProductsGetResource,
    newContentProductsGet,
    ContentProductsGet,

    -- ** content.products.insert
    ContentProductsInsertResource,
    newContentProductsInsert,
    ContentProductsInsert,

    -- ** content.products.list
    ContentProductsListResource,
    newContentProductsList,
    ContentProductsList,

    -- ** content.products.update
    ContentProductsUpdateResource,
    newContentProductsUpdate,
    ContentProductsUpdate,

    -- ** content.productstatuses.custombatch
    ContentProductstatusesCustombatchResource,
    newContentProductstatusesCustombatch,
    ContentProductstatusesCustombatch,

    -- ** content.productstatuses.get
    ContentProductstatusesGetResource,
    newContentProductstatusesGet,
    ContentProductstatusesGet,

    -- ** content.productstatuses.list
    ContentProductstatusesListResource,
    newContentProductstatusesList,
    ContentProductstatusesList,

    -- ** content.productstatuses.repricingreports.list
    ContentProductstatusesRepricingreportsListResource,
    newContentProductstatusesRepricingreportsList,
    ContentProductstatusesRepricingreportsList,

    -- ** content.promotions.create
    ContentPromotionsCreateResource,
    newContentPromotionsCreate,
    ContentPromotionsCreate,

    -- ** content.promotions.get
    ContentPromotionsGetResource,
    newContentPromotionsGet,
    ContentPromotionsGet,

    -- ** content.pubsubnotificationsettings.get
    ContentPubsubnotificationsettingsGetResource,
    newContentPubsubnotificationsettingsGet,
    ContentPubsubnotificationsettingsGet,

    -- ** content.pubsubnotificationsettings.update
    ContentPubsubnotificationsettingsUpdateResource,
    newContentPubsubnotificationsettingsUpdate,
    ContentPubsubnotificationsettingsUpdate,

    -- ** content.regionalinventory.custombatch
    ContentRegionalinventoryCustombatchResource,
    newContentRegionalinventoryCustombatch,
    ContentRegionalinventoryCustombatch,

    -- ** content.regionalinventory.insert
    ContentRegionalinventoryInsertResource,
    newContentRegionalinventoryInsert,
    ContentRegionalinventoryInsert,

    -- ** content.regions.create
    ContentRegionsCreateResource,
    newContentRegionsCreate,
    ContentRegionsCreate,

    -- ** content.regions.delete
    ContentRegionsDeleteResource,
    newContentRegionsDelete,
    ContentRegionsDelete,

    -- ** content.regions.get
    ContentRegionsGetResource,
    newContentRegionsGet,
    ContentRegionsGet,

    -- ** content.regions.list
    ContentRegionsListResource,
    newContentRegionsList,
    ContentRegionsList,

    -- ** content.regions.patch
    ContentRegionsPatchResource,
    newContentRegionsPatch,
    ContentRegionsPatch,

    -- ** content.reports.search
    ContentReportsSearchResource,
    newContentReportsSearch,
    ContentReportsSearch,

    -- ** content.repricingrules.create
    ContentRepricingrulesCreateResource,
    newContentRepricingrulesCreate,
    ContentRepricingrulesCreate,

    -- ** content.repricingrules.delete
    ContentRepricingrulesDeleteResource,
    newContentRepricingrulesDelete,
    ContentRepricingrulesDelete,

    -- ** content.repricingrules.get
    ContentRepricingrulesGetResource,
    newContentRepricingrulesGet,
    ContentRepricingrulesGet,

    -- ** content.repricingrules.list
    ContentRepricingrulesListResource,
    newContentRepricingrulesList,
    ContentRepricingrulesList,

    -- ** content.repricingrules.patch
    ContentRepricingrulesPatchResource,
    newContentRepricingrulesPatch,
    ContentRepricingrulesPatch,

    -- ** content.repricingrules.repricingreports.list
    ContentRepricingrulesRepricingreportsListResource,
    newContentRepricingrulesRepricingreportsList,
    ContentRepricingrulesRepricingreportsList,

    -- ** content.returnaddress.custombatch
    ContentReturnaddressCustombatchResource,
    newContentReturnaddressCustombatch,
    ContentReturnaddressCustombatch,

    -- ** content.returnaddress.delete
    ContentReturnaddressDeleteResource,
    newContentReturnaddressDelete,
    ContentReturnaddressDelete,

    -- ** content.returnaddress.get
    ContentReturnaddressGetResource,
    newContentReturnaddressGet,
    ContentReturnaddressGet,

    -- ** content.returnaddress.insert
    ContentReturnaddressInsertResource,
    newContentReturnaddressInsert,
    ContentReturnaddressInsert,

    -- ** content.returnaddress.list
    ContentReturnaddressListResource,
    newContentReturnaddressList,
    ContentReturnaddressList,

    -- ** content.returnpolicy.custombatch
    ContentReturnpolicyCustombatchResource,
    newContentReturnpolicyCustombatch,
    ContentReturnpolicyCustombatch,

    -- ** content.returnpolicy.delete
    ContentReturnpolicyDeleteResource,
    newContentReturnpolicyDelete,
    ContentReturnpolicyDelete,

    -- ** content.returnpolicy.get
    ContentReturnpolicyGetResource,
    newContentReturnpolicyGet,
    ContentReturnpolicyGet,

    -- ** content.returnpolicy.insert
    ContentReturnpolicyInsertResource,
    newContentReturnpolicyInsert,
    ContentReturnpolicyInsert,

    -- ** content.returnpolicy.list
    ContentReturnpolicyListResource,
    newContentReturnpolicyList,
    ContentReturnpolicyList,

    -- ** content.returnpolicyonline.create
    ContentReturnpolicyonlineCreateResource,
    newContentReturnpolicyonlineCreate,
    ContentReturnpolicyonlineCreate,

    -- ** content.returnpolicyonline.delete
    ContentReturnpolicyonlineDeleteResource,
    newContentReturnpolicyonlineDelete,
    ContentReturnpolicyonlineDelete,

    -- ** content.returnpolicyonline.get
    ContentReturnpolicyonlineGetResource,
    newContentReturnpolicyonlineGet,
    ContentReturnpolicyonlineGet,

    -- ** content.returnpolicyonline.list
    ContentReturnpolicyonlineListResource,
    newContentReturnpolicyonlineList,
    ContentReturnpolicyonlineList,

    -- ** content.returnpolicyonline.patch
    ContentReturnpolicyonlinePatchResource,
    newContentReturnpolicyonlinePatch,
    ContentReturnpolicyonlinePatch,

    -- ** content.settlementreports.get
    ContentSettlementreportsGetResource,
    newContentSettlementreportsGet,
    ContentSettlementreportsGet,

    -- ** content.settlementreports.list
    ContentSettlementreportsListResource,
    newContentSettlementreportsList,
    ContentSettlementreportsList,

    -- ** content.settlementtransactions.list
    ContentSettlementtransactionsListResource,
    newContentSettlementtransactionsList,
    ContentSettlementtransactionsList,

    -- ** content.shippingsettings.custombatch
    ContentShippingsettingsCustombatchResource,
    newContentShippingsettingsCustombatch,
    ContentShippingsettingsCustombatch,

    -- ** content.shippingsettings.get
    ContentShippingsettingsGetResource,
    newContentShippingsettingsGet,
    ContentShippingsettingsGet,

    -- ** content.shippingsettings.getsupportedcarriers
    ContentShippingsettingsGetsupportedcarriersResource,
    newContentShippingsettingsGetsupportedcarriers,
    ContentShippingsettingsGetsupportedcarriers,

    -- ** content.shippingsettings.getsupportedholidays
    ContentShippingsettingsGetsupportedholidaysResource,
    newContentShippingsettingsGetsupportedholidays,
    ContentShippingsettingsGetsupportedholidays,

    -- ** content.shippingsettings.getsupportedpickupservices
    ContentShippingsettingsGetsupportedpickupservicesResource,
    newContentShippingsettingsGetsupportedpickupservices,
    ContentShippingsettingsGetsupportedpickupservices,

    -- ** content.shippingsettings.list
    ContentShippingsettingsListResource,
    newContentShippingsettingsList,
    ContentShippingsettingsList,

    -- ** content.shippingsettings.update
    ContentShippingsettingsUpdateResource,
    newContentShippingsettingsUpdate,
    ContentShippingsettingsUpdate,

    -- ** content.shoppingadsprogram.get
    ContentShoppingadsprogramGetResource,
    newContentShoppingadsprogramGet,
    ContentShoppingadsprogramGet,

    -- ** content.shoppingadsprogram.requestreview
    ContentShoppingadsprogramRequestreviewResource,
    newContentShoppingadsprogramRequestreview,
    ContentShoppingadsprogramRequestreview,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Account
    Account (..),
    newAccount,

    -- ** AccountAddress
    AccountAddress (..),
    newAccountAddress,

    -- ** AccountAdsLink
    AccountAdsLink (..),
    newAccountAdsLink,

    -- ** AccountAutomaticImprovements
    AccountAutomaticImprovements (..),
    newAccountAutomaticImprovements,

    -- ** AccountBusinessInformation
    AccountBusinessInformation (..),
    newAccountBusinessInformation,

    -- ** AccountCredentials
    AccountCredentials (..),
    newAccountCredentials,

    -- ** AccountCredentials_Purpose
    AccountCredentials_Purpose (..),

    -- ** AccountCustomerService
    AccountCustomerService (..),
    newAccountCustomerService,

    -- ** AccountGoogleMyBusinessLink
    AccountGoogleMyBusinessLink (..),
    newAccountGoogleMyBusinessLink,

    -- ** AccountIdentifier
    AccountIdentifier (..),
    newAccountIdentifier,

    -- ** AccountImageImprovements
    AccountImageImprovements (..),
    newAccountImageImprovements,

    -- ** AccountImageImprovementsSettings
    AccountImageImprovementsSettings (..),
    newAccountImageImprovementsSettings,

    -- ** AccountItemUpdates
    AccountItemUpdates (..),
    newAccountItemUpdates,

    -- ** AccountItemUpdatesSettings
    AccountItemUpdatesSettings (..),
    newAccountItemUpdatesSettings,

    -- ** AccountLabel
    AccountLabel (..),
    newAccountLabel,

    -- ** AccountLabel_LabelType
    AccountLabel_LabelType (..),

    -- ** AccountReturnCarrier
    AccountReturnCarrier (..),
    newAccountReturnCarrier,

    -- ** AccountReturnCarrier_CarrierCode
    AccountReturnCarrier_CarrierCode (..),

    -- ** AccountShippingImprovements
    AccountShippingImprovements (..),
    newAccountShippingImprovements,

    -- ** AccountStatus
    AccountStatus (..),
    newAccountStatus,

    -- ** AccountStatusAccountLevelIssue
    AccountStatusAccountLevelIssue (..),
    newAccountStatusAccountLevelIssue,

    -- ** AccountStatusItemLevelIssue
    AccountStatusItemLevelIssue (..),
    newAccountStatusItemLevelIssue,

    -- ** AccountStatusProducts
    AccountStatusProducts (..),
    newAccountStatusProducts,

    -- ** AccountStatusStatistics
    AccountStatusStatistics (..),
    newAccountStatusStatistics,

    -- ** AccountTax
    AccountTax (..),
    newAccountTax,

    -- ** AccountTaxTaxRule
    AccountTaxTaxRule (..),
    newAccountTaxTaxRule,

    -- ** AccountUser
    AccountUser (..),
    newAccountUser,

    -- ** AccountYouTubeChannelLink
    AccountYouTubeChannelLink (..),
    newAccountYouTubeChannelLink,

    -- ** AccountsAuthInfoResponse
    AccountsAuthInfoResponse (..),
    newAccountsAuthInfoResponse,

    -- ** AccountsClaimWebsiteResponse
    AccountsClaimWebsiteResponse (..),
    newAccountsClaimWebsiteResponse,

    -- ** AccountsCustomBatchRequest
    AccountsCustomBatchRequest (..),
    newAccountsCustomBatchRequest,

    -- ** AccountsCustomBatchRequestEntry
    AccountsCustomBatchRequestEntry (..),
    newAccountsCustomBatchRequestEntry,

    -- ** AccountsCustomBatchRequestEntryLinkRequest
    AccountsCustomBatchRequestEntryLinkRequest (..),
    newAccountsCustomBatchRequestEntryLinkRequest,

    -- ** AccountsCustomBatchResponse
    AccountsCustomBatchResponse (..),
    newAccountsCustomBatchResponse,

    -- ** AccountsCustomBatchResponseEntry
    AccountsCustomBatchResponseEntry (..),
    newAccountsCustomBatchResponseEntry,

    -- ** AccountsLinkRequest
    AccountsLinkRequest (..),
    newAccountsLinkRequest,

    -- ** AccountsLinkResponse
    AccountsLinkResponse (..),
    newAccountsLinkResponse,

    -- ** AccountsListLinksResponse
    AccountsListLinksResponse (..),
    newAccountsListLinksResponse,

    -- ** AccountsListResponse
    AccountsListResponse (..),
    newAccountsListResponse,

    -- ** AccountsUpdateLabelsRequest
    AccountsUpdateLabelsRequest (..),
    newAccountsUpdateLabelsRequest,

    -- ** AccountsUpdateLabelsResponse
    AccountsUpdateLabelsResponse (..),
    newAccountsUpdateLabelsResponse,

    -- ** AccountstatusesCustomBatchRequest
    AccountstatusesCustomBatchRequest (..),
    newAccountstatusesCustomBatchRequest,

    -- ** AccountstatusesCustomBatchRequestEntry
    AccountstatusesCustomBatchRequestEntry (..),
    newAccountstatusesCustomBatchRequestEntry,

    -- ** AccountstatusesCustomBatchResponse
    AccountstatusesCustomBatchResponse (..),
    newAccountstatusesCustomBatchResponse,

    -- ** AccountstatusesCustomBatchResponseEntry
    AccountstatusesCustomBatchResponseEntry (..),
    newAccountstatusesCustomBatchResponseEntry,

    -- ** AccountstatusesListResponse
    AccountstatusesListResponse (..),
    newAccountstatusesListResponse,

    -- ** AccounttaxCustomBatchRequest
    AccounttaxCustomBatchRequest (..),
    newAccounttaxCustomBatchRequest,

    -- ** AccounttaxCustomBatchRequestEntry
    AccounttaxCustomBatchRequestEntry (..),
    newAccounttaxCustomBatchRequestEntry,

    -- ** AccounttaxCustomBatchResponse
    AccounttaxCustomBatchResponse (..),
    newAccounttaxCustomBatchResponse,

    -- ** AccounttaxCustomBatchResponseEntry
    AccounttaxCustomBatchResponseEntry (..),
    newAccounttaxCustomBatchResponseEntry,

    -- ** AccounttaxListResponse
    AccounttaxListResponse (..),
    newAccounttaxListResponse,

    -- ** ActivateBuyOnGoogleProgramRequest
    ActivateBuyOnGoogleProgramRequest (..),
    newActivateBuyOnGoogleProgramRequest,

    -- ** Address
    Address (..),
    newAddress,

    -- ** Amount
    Amount (..),
    newAmount,

    -- ** BusinessDayConfig
    BusinessDayConfig (..),
    newBusinessDayConfig,

    -- ** BuyOnGoogleProgramStatus
    BuyOnGoogleProgramStatus (..),
    newBuyOnGoogleProgramStatus,

    -- ** BuyOnGoogleProgramStatus_BusinessModelItem
    BuyOnGoogleProgramStatus_BusinessModelItem (..),

    -- ** BuyOnGoogleProgramStatus_OnlineSalesChannel
    BuyOnGoogleProgramStatus_OnlineSalesChannel (..),

    -- ** BuyOnGoogleProgramStatus_ParticipationStage
    BuyOnGoogleProgramStatus_ParticipationStage (..),

    -- ** CaptureOrderRequest
    CaptureOrderRequest (..),
    newCaptureOrderRequest,

    -- ** CaptureOrderResponse
    CaptureOrderResponse (..),
    newCaptureOrderResponse,

    -- ** CaptureOrderResponse_ExecutionStatus
    CaptureOrderResponse_ExecutionStatus (..),

    -- ** CarrierRate
    CarrierRate (..),
    newCarrierRate,

    -- ** CarriersCarrier
    CarriersCarrier (..),
    newCarriersCarrier,

    -- ** Collection
    Collection (..),
    newCollection,

    -- ** CollectionFeaturedProduct
    CollectionFeaturedProduct (..),
    newCollectionFeaturedProduct,

    -- ** CollectionStatus
    CollectionStatus (..),
    newCollectionStatus,

    -- ** CollectionStatusDestinationStatus
    CollectionStatusDestinationStatus (..),
    newCollectionStatusDestinationStatus,

    -- ** CollectionStatusItemLevelIssue
    CollectionStatusItemLevelIssue (..),
    newCollectionStatusItemLevelIssue,

    -- ** Css
    Css (..),
    newCss,

    -- ** CustomAttribute
    CustomAttribute (..),
    newCustomAttribute,

    -- ** CustomerReturnReason
    CustomerReturnReason (..),
    newCustomerReturnReason,

    -- ** CutoffTime
    CutoffTime (..),
    newCutoffTime,

    -- ** Datafeed
    Datafeed (..),
    newDatafeed,

    -- ** DatafeedFetchSchedule
    DatafeedFetchSchedule (..),
    newDatafeedFetchSchedule,

    -- ** DatafeedFormat
    DatafeedFormat (..),
    newDatafeedFormat,

    -- ** DatafeedStatus
    DatafeedStatus (..),
    newDatafeedStatus,

    -- ** DatafeedStatusError
    DatafeedStatusError (..),
    newDatafeedStatusError,

    -- ** DatafeedStatusExample
    DatafeedStatusExample (..),
    newDatafeedStatusExample,

    -- ** DatafeedTarget
    DatafeedTarget (..),
    newDatafeedTarget,

    -- ** DatafeedsCustomBatchRequest
    DatafeedsCustomBatchRequest (..),
    newDatafeedsCustomBatchRequest,

    -- ** DatafeedsCustomBatchRequestEntry
    DatafeedsCustomBatchRequestEntry (..),
    newDatafeedsCustomBatchRequestEntry,

    -- ** DatafeedsCustomBatchResponse
    DatafeedsCustomBatchResponse (..),
    newDatafeedsCustomBatchResponse,

    -- ** DatafeedsCustomBatchResponseEntry
    DatafeedsCustomBatchResponseEntry (..),
    newDatafeedsCustomBatchResponseEntry,

    -- ** DatafeedsFetchNowResponse
    DatafeedsFetchNowResponse (..),
    newDatafeedsFetchNowResponse,

    -- ** DatafeedsListResponse
    DatafeedsListResponse (..),
    newDatafeedsListResponse,

    -- ** DatafeedstatusesCustomBatchRequest
    DatafeedstatusesCustomBatchRequest (..),
    newDatafeedstatusesCustomBatchRequest,

    -- ** DatafeedstatusesCustomBatchRequestEntry
    DatafeedstatusesCustomBatchRequestEntry (..),
    newDatafeedstatusesCustomBatchRequestEntry,

    -- ** DatafeedstatusesCustomBatchResponse
    DatafeedstatusesCustomBatchResponse (..),
    newDatafeedstatusesCustomBatchResponse,

    -- ** DatafeedstatusesCustomBatchResponseEntry
    DatafeedstatusesCustomBatchResponseEntry (..),
    newDatafeedstatusesCustomBatchResponseEntry,

    -- ** DatafeedstatusesListResponse
    DatafeedstatusesListResponse (..),
    newDatafeedstatusesListResponse,

    -- ** Date
    Date (..),
    newDate,

    -- ** DateTime'
    DateTime' (..),
    newDateTime,

    -- ** DeliveryTime
    DeliveryTime (..),
    newDeliveryTime,

    -- ** ECommercePlatformLinkInfo
    ECommercePlatformLinkInfo (..),
    newECommercePlatformLinkInfo,

    -- ** Error'
    Error' (..),
    newError,

    -- ** Errors
    Errors (..),
    newErrors,

    -- ** FreeListingsProgramStatus
    FreeListingsProgramStatus (..),
    newFreeListingsProgramStatus,

    -- ** FreeListingsProgramStatus_GlobalState
    FreeListingsProgramStatus_GlobalState (..),

    -- ** FreeListingsProgramStatusRegionStatus
    FreeListingsProgramStatusRegionStatus (..),
    newFreeListingsProgramStatusRegionStatus,

    -- ** FreeListingsProgramStatusRegionStatus_EligibilityStatus
    FreeListingsProgramStatusRegionStatus_EligibilityStatus (..),

    -- ** FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
    FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus (..),

    -- ** FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
    FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason (..),

    -- ** FreeListingsProgramStatusReviewIneligibilityReasonDetails
    FreeListingsProgramStatusReviewIneligibilityReasonDetails (..),
    newFreeListingsProgramStatusReviewIneligibilityReasonDetails,

    -- ** GmbAccounts
    GmbAccounts (..),
    newGmbAccounts,

    -- ** GmbAccountsGmbAccount
    GmbAccountsGmbAccount (..),
    newGmbAccountsGmbAccount,

    -- ** Headers
    Headers (..),
    newHeaders,

    -- ** HolidayCutoff
    HolidayCutoff (..),
    newHolidayCutoff,

    -- ** HolidaysHoliday
    HolidaysHoliday (..),
    newHolidaysHoliday,

    -- ** InapplicabilityDetails
    InapplicabilityDetails (..),
    newInapplicabilityDetails,

    -- ** InapplicabilityDetails_InapplicableReason
    InapplicabilityDetails_InapplicableReason (..),

    -- ** Installment
    Installment (..),
    newInstallment,

    -- ** InvoiceSummary
    InvoiceSummary (..),
    newInvoiceSummary,

    -- ** InvoiceSummaryAdditionalChargeSummary
    InvoiceSummaryAdditionalChargeSummary (..),
    newInvoiceSummaryAdditionalChargeSummary,

    -- ** LabelIds
    LabelIds (..),
    newLabelIds,

    -- ** LiaAboutPageSettings
    LiaAboutPageSettings (..),
    newLiaAboutPageSettings,

    -- ** LiaCountrySettings
    LiaCountrySettings (..),
    newLiaCountrySettings,

    -- ** LiaInventorySettings
    LiaInventorySettings (..),
    newLiaInventorySettings,

    -- ** LiaOnDisplayToOrderSettings
    LiaOnDisplayToOrderSettings (..),
    newLiaOnDisplayToOrderSettings,

    -- ** LiaPosDataProvider
    LiaPosDataProvider (..),
    newLiaPosDataProvider,

    -- ** LiaSettings
    LiaSettings (..),
    newLiaSettings,

    -- ** LiasettingsCustomBatchRequest
    LiasettingsCustomBatchRequest (..),
    newLiasettingsCustomBatchRequest,

    -- ** LiasettingsCustomBatchRequestEntry
    LiasettingsCustomBatchRequestEntry (..),
    newLiasettingsCustomBatchRequestEntry,

    -- ** LiasettingsCustomBatchResponse
    LiasettingsCustomBatchResponse (..),
    newLiasettingsCustomBatchResponse,

    -- ** LiasettingsCustomBatchResponseEntry
    LiasettingsCustomBatchResponseEntry (..),
    newLiasettingsCustomBatchResponseEntry,

    -- ** LiasettingsGetAccessibleGmbAccountsResponse
    LiasettingsGetAccessibleGmbAccountsResponse (..),
    newLiasettingsGetAccessibleGmbAccountsResponse,

    -- ** LiasettingsListPosDataProvidersResponse
    LiasettingsListPosDataProvidersResponse (..),
    newLiasettingsListPosDataProvidersResponse,

    -- ** LiasettingsListResponse
    LiasettingsListResponse (..),
    newLiasettingsListResponse,

    -- ** LiasettingsRequestGmbAccessResponse
    LiasettingsRequestGmbAccessResponse (..),
    newLiasettingsRequestGmbAccessResponse,

    -- ** LiasettingsRequestInventoryVerificationResponse
    LiasettingsRequestInventoryVerificationResponse (..),
    newLiasettingsRequestInventoryVerificationResponse,

    -- ** LiasettingsSetInventoryVerificationContactResponse
    LiasettingsSetInventoryVerificationContactResponse (..),
    newLiasettingsSetInventoryVerificationContactResponse,

    -- ** LiasettingsSetPosDataProviderResponse
    LiasettingsSetPosDataProviderResponse (..),
    newLiasettingsSetPosDataProviderResponse,

    -- ** LinkService
    LinkService (..),
    newLinkService,

    -- ** LinkedAccount
    LinkedAccount (..),
    newLinkedAccount,

    -- ** ListAccountLabelsResponse
    ListAccountLabelsResponse (..),
    newListAccountLabelsResponse,

    -- ** ListAccountReturnCarrierResponse
    ListAccountReturnCarrierResponse (..),
    newListAccountReturnCarrierResponse,

    -- ** ListCollectionStatusesResponse
    ListCollectionStatusesResponse (..),
    newListCollectionStatusesResponse,

    -- ** ListCollectionsResponse
    ListCollectionsResponse (..),
    newListCollectionsResponse,

    -- ** ListCssesResponse
    ListCssesResponse (..),
    newListCssesResponse,

    -- ** ListRegionsResponse
    ListRegionsResponse (..),
    newListRegionsResponse,

    -- ** ListRepricingProductReportsResponse
    ListRepricingProductReportsResponse (..),
    newListRepricingProductReportsResponse,

    -- ** ListRepricingRuleReportsResponse
    ListRepricingRuleReportsResponse (..),
    newListRepricingRuleReportsResponse,

    -- ** ListRepricingRulesResponse
    ListRepricingRulesResponse (..),
    newListRepricingRulesResponse,

    -- ** ListReturnPolicyOnlineResponse
    ListReturnPolicyOnlineResponse (..),
    newListReturnPolicyOnlineResponse,

    -- ** LocalInventory
    LocalInventory (..),
    newLocalInventory,

    -- ** LocalinventoryCustomBatchRequest
    LocalinventoryCustomBatchRequest (..),
    newLocalinventoryCustomBatchRequest,

    -- ** LocalinventoryCustomBatchRequestEntry
    LocalinventoryCustomBatchRequestEntry (..),
    newLocalinventoryCustomBatchRequestEntry,

    -- ** LocalinventoryCustomBatchResponse
    LocalinventoryCustomBatchResponse (..),
    newLocalinventoryCustomBatchResponse,

    -- ** LocalinventoryCustomBatchResponseEntry
    LocalinventoryCustomBatchResponseEntry (..),
    newLocalinventoryCustomBatchResponseEntry,

    -- ** LocationIdSet
    LocationIdSet (..),
    newLocationIdSet,

    -- ** LoyaltyPoints
    LoyaltyPoints (..),
    newLoyaltyPoints,

    -- ** MerchantOrderReturn
    MerchantOrderReturn (..),
    newMerchantOrderReturn,

    -- ** MerchantOrderReturnItem
    MerchantOrderReturnItem (..),
    newMerchantOrderReturnItem,

    -- ** MerchantRejectionReason
    MerchantRejectionReason (..),
    newMerchantRejectionReason,

    -- ** Metrics
    Metrics (..),
    newMetrics,

    -- ** MinimumOrderValueTable
    MinimumOrderValueTable (..),
    newMinimumOrderValueTable,

    -- ** MinimumOrderValueTableStoreCodeSetWithMov
    MinimumOrderValueTableStoreCodeSetWithMov (..),
    newMinimumOrderValueTableStoreCodeSetWithMov,

    -- ** MonetaryAmount
    MonetaryAmount (..),
    newMonetaryAmount,

    -- ** OnboardBuyOnGoogleProgramRequest
    OnboardBuyOnGoogleProgramRequest (..),
    newOnboardBuyOnGoogleProgramRequest,

    -- ** Order
    Order (..),
    newOrder,

    -- ** OrderAddress
    OrderAddress (..),
    newOrderAddress,

    -- ** OrderCancellation
    OrderCancellation (..),
    newOrderCancellation,

    -- ** OrderCustomer
    OrderCustomer (..),
    newOrderCustomer,

    -- ** OrderCustomerLoyaltyInfo
    OrderCustomerLoyaltyInfo (..),
    newOrderCustomerLoyaltyInfo,

    -- ** OrderCustomerMarketingRightsInfo
    OrderCustomerMarketingRightsInfo (..),
    newOrderCustomerMarketingRightsInfo,

    -- ** OrderDeliveryDetails
    OrderDeliveryDetails (..),
    newOrderDeliveryDetails,

    -- ** OrderLineItem
    OrderLineItem (..),
    newOrderLineItem,

    -- ** OrderLineItemAdjustment
    OrderLineItemAdjustment (..),
    newOrderLineItemAdjustment,

    -- ** OrderLineItemProduct
    OrderLineItemProduct (..),
    newOrderLineItemProduct,

    -- ** OrderLineItemProductFee
    OrderLineItemProductFee (..),
    newOrderLineItemProductFee,

    -- ** OrderLineItemProductVariantAttribute
    OrderLineItemProductVariantAttribute (..),
    newOrderLineItemProductVariantAttribute,

    -- ** OrderLineItemReturnInfo
    OrderLineItemReturnInfo (..),
    newOrderLineItemReturnInfo,

    -- ** OrderLineItemShippingDetails
    OrderLineItemShippingDetails (..),
    newOrderLineItemShippingDetails,

    -- ** OrderLineItemShippingDetailsMethod
    OrderLineItemShippingDetailsMethod (..),
    newOrderLineItemShippingDetailsMethod,

    -- ** OrderMerchantProvidedAnnotation
    OrderMerchantProvidedAnnotation (..),
    newOrderMerchantProvidedAnnotation,

    -- ** OrderOrderAnnotation
    OrderOrderAnnotation (..),
    newOrderOrderAnnotation,

    -- ** OrderPickupDetails
    OrderPickupDetails (..),
    newOrderPickupDetails,

    -- ** OrderPickupDetailsCollector
    OrderPickupDetailsCollector (..),
    newOrderPickupDetailsCollector,

    -- ** OrderPromotion
    OrderPromotion (..),
    newOrderPromotion,

    -- ** OrderPromotionItem
    OrderPromotionItem (..),
    newOrderPromotionItem,

    -- ** OrderRefund
    OrderRefund (..),
    newOrderRefund,

    -- ** OrderReportDisbursement
    OrderReportDisbursement (..),
    newOrderReportDisbursement,

    -- ** OrderReportTransaction
    OrderReportTransaction (..),
    newOrderReportTransaction,

    -- ** OrderReturn
    OrderReturn (..),
    newOrderReturn,

    -- ** OrderShipment
    OrderShipment (..),
    newOrderShipment,

    -- ** OrderShipmentLineItemShipment
    OrderShipmentLineItemShipment (..),
    newOrderShipmentLineItemShipment,

    -- ** OrderShipmentScheduledDeliveryDetails
    OrderShipmentScheduledDeliveryDetails (..),
    newOrderShipmentScheduledDeliveryDetails,

    -- ** OrderTrackingSignal
    OrderTrackingSignal (..),
    newOrderTrackingSignal,

    -- ** OrderTrackingSignalLineItemDetails
    OrderTrackingSignalLineItemDetails (..),
    newOrderTrackingSignalLineItemDetails,

    -- ** OrderTrackingSignalShipmentLineItemMapping
    OrderTrackingSignalShipmentLineItemMapping (..),
    newOrderTrackingSignalShipmentLineItemMapping,

    -- ** OrderTrackingSignalShippingInfo
    OrderTrackingSignalShippingInfo (..),
    newOrderTrackingSignalShippingInfo,

    -- ** OrderTrackingSignalShippingInfo_ShippingStatus
    OrderTrackingSignalShippingInfo_ShippingStatus (..),

    -- ** OrderinvoicesCreateChargeInvoiceRequest
    OrderinvoicesCreateChargeInvoiceRequest (..),
    newOrderinvoicesCreateChargeInvoiceRequest,

    -- ** OrderinvoicesCreateChargeInvoiceResponse
    OrderinvoicesCreateChargeInvoiceResponse (..),
    newOrderinvoicesCreateChargeInvoiceResponse,

    -- ** OrderinvoicesCreateRefundInvoiceRequest
    OrderinvoicesCreateRefundInvoiceRequest (..),
    newOrderinvoicesCreateRefundInvoiceRequest,

    -- ** OrderinvoicesCreateRefundInvoiceResponse
    OrderinvoicesCreateRefundInvoiceResponse (..),
    newOrderinvoicesCreateRefundInvoiceResponse,

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption (..),
    newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption,

    -- ** OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption (..),
    newOrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption,

    -- ** OrderreportsListDisbursementsResponse
    OrderreportsListDisbursementsResponse (..),
    newOrderreportsListDisbursementsResponse,

    -- ** OrderreportsListTransactionsResponse
    OrderreportsListTransactionsResponse (..),
    newOrderreportsListTransactionsResponse,

    -- ** OrderreturnsAcknowledgeRequest
    OrderreturnsAcknowledgeRequest (..),
    newOrderreturnsAcknowledgeRequest,

    -- ** OrderreturnsAcknowledgeResponse
    OrderreturnsAcknowledgeResponse (..),
    newOrderreturnsAcknowledgeResponse,

    -- ** OrderreturnsCreateOrderReturnRequest
    OrderreturnsCreateOrderReturnRequest (..),
    newOrderreturnsCreateOrderReturnRequest,

    -- ** OrderreturnsCreateOrderReturnResponse
    OrderreturnsCreateOrderReturnResponse (..),
    newOrderreturnsCreateOrderReturnResponse,

    -- ** OrderreturnsLineItem
    OrderreturnsLineItem (..),
    newOrderreturnsLineItem,

    -- ** OrderreturnsListResponse
    OrderreturnsListResponse (..),
    newOrderreturnsListResponse,

    -- ** OrderreturnsPartialRefund
    OrderreturnsPartialRefund (..),
    newOrderreturnsPartialRefund,

    -- ** OrderreturnsProcessRequest
    OrderreturnsProcessRequest (..),
    newOrderreturnsProcessRequest,

    -- ** OrderreturnsProcessResponse
    OrderreturnsProcessResponse (..),
    newOrderreturnsProcessResponse,

    -- ** OrderreturnsRefundOperation
    OrderreturnsRefundOperation (..),
    newOrderreturnsRefundOperation,

    -- ** OrderreturnsRejectOperation
    OrderreturnsRejectOperation (..),
    newOrderreturnsRejectOperation,

    -- ** OrderreturnsReturnItem
    OrderreturnsReturnItem (..),
    newOrderreturnsReturnItem,

    -- ** OrdersAcknowledgeRequest
    OrdersAcknowledgeRequest (..),
    newOrdersAcknowledgeRequest,

    -- ** OrdersAcknowledgeResponse
    OrdersAcknowledgeResponse (..),
    newOrdersAcknowledgeResponse,

    -- ** OrdersAdvanceTestOrderResponse
    OrdersAdvanceTestOrderResponse (..),
    newOrdersAdvanceTestOrderResponse,

    -- ** OrdersCancelLineItemRequest
    OrdersCancelLineItemRequest (..),
    newOrdersCancelLineItemRequest,

    -- ** OrdersCancelLineItemResponse
    OrdersCancelLineItemResponse (..),
    newOrdersCancelLineItemResponse,

    -- ** OrdersCancelRequest
    OrdersCancelRequest (..),
    newOrdersCancelRequest,

    -- ** OrdersCancelResponse
    OrdersCancelResponse (..),
    newOrdersCancelResponse,

    -- ** OrdersCancelTestOrderByCustomerRequest
    OrdersCancelTestOrderByCustomerRequest (..),
    newOrdersCancelTestOrderByCustomerRequest,

    -- ** OrdersCancelTestOrderByCustomerResponse
    OrdersCancelTestOrderByCustomerResponse (..),
    newOrdersCancelTestOrderByCustomerResponse,

    -- ** OrdersCreateTestOrderRequest
    OrdersCreateTestOrderRequest (..),
    newOrdersCreateTestOrderRequest,

    -- ** OrdersCreateTestOrderResponse
    OrdersCreateTestOrderResponse (..),
    newOrdersCreateTestOrderResponse,

    -- ** OrdersCreateTestReturnRequest
    OrdersCreateTestReturnRequest (..),
    newOrdersCreateTestReturnRequest,

    -- ** OrdersCreateTestReturnResponse
    OrdersCreateTestReturnResponse (..),
    newOrdersCreateTestReturnResponse,

    -- ** OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
    OrdersCustomBatchRequestEntryCreateTestReturnReturnItem (..),
    newOrdersCustomBatchRequestEntryCreateTestReturnReturnItem,

    -- ** OrdersCustomBatchRequestEntryRefundItemItem
    OrdersCustomBatchRequestEntryRefundItemItem (..),
    newOrdersCustomBatchRequestEntryRefundItemItem,

    -- ** OrdersCustomBatchRequestEntryRefundItemShipping
    OrdersCustomBatchRequestEntryRefundItemShipping (..),
    newOrdersCustomBatchRequestEntryRefundItemShipping,

    -- ** OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
    OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (..),
    newOrdersCustomBatchRequestEntryShipLineItemsShipmentInfo,

    -- ** OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails (..),
    newOrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails,

    -- ** OrdersGetByMerchantOrderIdResponse
    OrdersGetByMerchantOrderIdResponse (..),
    newOrdersGetByMerchantOrderIdResponse,

    -- ** OrdersGetTestOrderTemplateResponse
    OrdersGetTestOrderTemplateResponse (..),
    newOrdersGetTestOrderTemplateResponse,

    -- ** OrdersInStoreRefundLineItemRequest
    OrdersInStoreRefundLineItemRequest (..),
    newOrdersInStoreRefundLineItemRequest,

    -- ** OrdersInStoreRefundLineItemResponse
    OrdersInStoreRefundLineItemResponse (..),
    newOrdersInStoreRefundLineItemResponse,

    -- ** OrdersListResponse
    OrdersListResponse (..),
    newOrdersListResponse,

    -- ** OrdersRefundItemRequest
    OrdersRefundItemRequest (..),
    newOrdersRefundItemRequest,

    -- ** OrdersRefundItemResponse
    OrdersRefundItemResponse (..),
    newOrdersRefundItemResponse,

    -- ** OrdersRefundOrderRequest
    OrdersRefundOrderRequest (..),
    newOrdersRefundOrderRequest,

    -- ** OrdersRefundOrderResponse
    OrdersRefundOrderResponse (..),
    newOrdersRefundOrderResponse,

    -- ** OrdersRejectReturnLineItemRequest
    OrdersRejectReturnLineItemRequest (..),
    newOrdersRejectReturnLineItemRequest,

    -- ** OrdersRejectReturnLineItemResponse
    OrdersRejectReturnLineItemResponse (..),
    newOrdersRejectReturnLineItemResponse,

    -- ** OrdersReturnRefundLineItemRequest
    OrdersReturnRefundLineItemRequest (..),
    newOrdersReturnRefundLineItemRequest,

    -- ** OrdersReturnRefundLineItemResponse
    OrdersReturnRefundLineItemResponse (..),
    newOrdersReturnRefundLineItemResponse,

    -- ** OrdersSetLineItemMetadataRequest
    OrdersSetLineItemMetadataRequest (..),
    newOrdersSetLineItemMetadataRequest,

    -- ** OrdersSetLineItemMetadataResponse
    OrdersSetLineItemMetadataResponse (..),
    newOrdersSetLineItemMetadataResponse,

    -- ** OrdersShipLineItemsRequest
    OrdersShipLineItemsRequest (..),
    newOrdersShipLineItemsRequest,

    -- ** OrdersShipLineItemsResponse
    OrdersShipLineItemsResponse (..),
    newOrdersShipLineItemsResponse,

    -- ** OrdersUpdateLineItemShippingDetailsRequest
    OrdersUpdateLineItemShippingDetailsRequest (..),
    newOrdersUpdateLineItemShippingDetailsRequest,

    -- ** OrdersUpdateLineItemShippingDetailsResponse
    OrdersUpdateLineItemShippingDetailsResponse (..),
    newOrdersUpdateLineItemShippingDetailsResponse,

    -- ** OrdersUpdateMerchantOrderIdRequest
    OrdersUpdateMerchantOrderIdRequest (..),
    newOrdersUpdateMerchantOrderIdRequest,

    -- ** OrdersUpdateMerchantOrderIdResponse
    OrdersUpdateMerchantOrderIdResponse (..),
    newOrdersUpdateMerchantOrderIdResponse,

    -- ** OrdersUpdateShipmentRequest
    OrdersUpdateShipmentRequest (..),
    newOrdersUpdateShipmentRequest,

    -- ** OrdersUpdateShipmentResponse
    OrdersUpdateShipmentResponse (..),
    newOrdersUpdateShipmentResponse,

    -- ** PauseBuyOnGoogleProgramRequest
    PauseBuyOnGoogleProgramRequest (..),
    newPauseBuyOnGoogleProgramRequest,

    -- ** PaymentServiceProviderLinkInfo
    PaymentServiceProviderLinkInfo (..),
    newPaymentServiceProviderLinkInfo,

    -- ** PickupCarrierService
    PickupCarrierService (..),
    newPickupCarrierService,

    -- ** PickupServicesPickupService
    PickupServicesPickupService (..),
    newPickupServicesPickupService,

    -- ** PosCustomBatchRequest
    PosCustomBatchRequest (..),
    newPosCustomBatchRequest,

    -- ** PosCustomBatchRequestEntry
    PosCustomBatchRequestEntry (..),
    newPosCustomBatchRequestEntry,

    -- ** PosCustomBatchResponse
    PosCustomBatchResponse (..),
    newPosCustomBatchResponse,

    -- ** PosCustomBatchResponseEntry
    PosCustomBatchResponseEntry (..),
    newPosCustomBatchResponseEntry,

    -- ** PosDataProviders
    PosDataProviders (..),
    newPosDataProviders,

    -- ** PosDataProvidersPosDataProvider
    PosDataProvidersPosDataProvider (..),
    newPosDataProvidersPosDataProvider,

    -- ** PosInventory
    PosInventory (..),
    newPosInventory,

    -- ** PosInventoryRequest
    PosInventoryRequest (..),
    newPosInventoryRequest,

    -- ** PosInventoryResponse
    PosInventoryResponse (..),
    newPosInventoryResponse,

    -- ** PosListResponse
    PosListResponse (..),
    newPosListResponse,

    -- ** PosSale
    PosSale (..),
    newPosSale,

    -- ** PosSaleRequest
    PosSaleRequest (..),
    newPosSaleRequest,

    -- ** PosSaleResponse
    PosSaleResponse (..),
    newPosSaleResponse,

    -- ** PosStore
    PosStore (..),
    newPosStore,

    -- ** PostalCodeGroup
    PostalCodeGroup (..),
    newPostalCodeGroup,

    -- ** PostalCodeRange
    PostalCodeRange (..),
    newPostalCodeRange,

    -- ** Price
    Price (..),
    newPrice,

    -- ** PriceAmount
    PriceAmount (..),
    newPriceAmount,

    -- ** Product
    Product (..),
    newProduct,

    -- ** ProductAmount
    ProductAmount (..),
    newProductAmount,

    -- ** ProductDimension
    ProductDimension (..),
    newProductDimension,

    -- ** ProductProductDetail
    ProductProductDetail (..),
    newProductProductDetail,

    -- ** ProductShipping
    ProductShipping (..),
    newProductShipping,

    -- ** ProductShippingDimension
    ProductShippingDimension (..),
    newProductShippingDimension,

    -- ** ProductShippingWeight
    ProductShippingWeight (..),
    newProductShippingWeight,

    -- ** ProductStatus
    ProductStatus (..),
    newProductStatus,

    -- ** ProductStatusDestinationStatus
    ProductStatusDestinationStatus (..),
    newProductStatusDestinationStatus,

    -- ** ProductStatusItemLevelIssue
    ProductStatusItemLevelIssue (..),
    newProductStatusItemLevelIssue,

    -- ** ProductSubscriptionCost
    ProductSubscriptionCost (..),
    newProductSubscriptionCost,

    -- ** ProductTax
    ProductTax (..),
    newProductTax,

    -- ** ProductUnitPricingBaseMeasure
    ProductUnitPricingBaseMeasure (..),
    newProductUnitPricingBaseMeasure,

    -- ** ProductUnitPricingMeasure
    ProductUnitPricingMeasure (..),
    newProductUnitPricingMeasure,

    -- ** ProductWeight
    ProductWeight (..),
    newProductWeight,

    -- ** ProductsCustomBatchRequest
    ProductsCustomBatchRequest (..),
    newProductsCustomBatchRequest,

    -- ** ProductsCustomBatchRequestEntry
    ProductsCustomBatchRequestEntry (..),
    newProductsCustomBatchRequestEntry,

    -- ** ProductsCustomBatchResponse
    ProductsCustomBatchResponse (..),
    newProductsCustomBatchResponse,

    -- ** ProductsCustomBatchResponseEntry
    ProductsCustomBatchResponseEntry (..),
    newProductsCustomBatchResponseEntry,

    -- ** ProductsListResponse
    ProductsListResponse (..),
    newProductsListResponse,

    -- ** ProductstatusesCustomBatchRequest
    ProductstatusesCustomBatchRequest (..),
    newProductstatusesCustomBatchRequest,

    -- ** ProductstatusesCustomBatchRequestEntry
    ProductstatusesCustomBatchRequestEntry (..),
    newProductstatusesCustomBatchRequestEntry,

    -- ** ProductstatusesCustomBatchResponse
    ProductstatusesCustomBatchResponse (..),
    newProductstatusesCustomBatchResponse,

    -- ** ProductstatusesCustomBatchResponseEntry
    ProductstatusesCustomBatchResponseEntry (..),
    newProductstatusesCustomBatchResponseEntry,

    -- ** ProductstatusesListResponse
    ProductstatusesListResponse (..),
    newProductstatusesListResponse,

    -- ** Promotion
    Promotion (..),
    newPromotion,

    -- ** Promotion_CouponValueType
    Promotion_CouponValueType (..),

    -- ** Promotion_OfferType
    Promotion_OfferType (..),

    -- ** Promotion_ProductApplicability
    Promotion_ProductApplicability (..),

    -- ** Promotion_RedemptionChannelItem
    Promotion_RedemptionChannelItem (..),

    -- ** PubsubNotificationSettings
    PubsubNotificationSettings (..),
    newPubsubNotificationSettings,

    -- ** RateGroup
    RateGroup (..),
    newRateGroup,

    -- ** RefundReason
    RefundReason (..),
    newRefundReason,

    -- ** Region
    Region (..),
    newRegion,

    -- ** RegionGeoTargetArea
    RegionGeoTargetArea (..),
    newRegionGeoTargetArea,

    -- ** RegionPostalCodeArea
    RegionPostalCodeArea (..),
    newRegionPostalCodeArea,

    -- ** RegionPostalCodeAreaPostalCodeRange
    RegionPostalCodeAreaPostalCodeRange (..),
    newRegionPostalCodeAreaPostalCodeRange,

    -- ** RegionalInventory
    RegionalInventory (..),
    newRegionalInventory,

    -- ** RegionalinventoryCustomBatchRequest
    RegionalinventoryCustomBatchRequest (..),
    newRegionalinventoryCustomBatchRequest,

    -- ** RegionalinventoryCustomBatchRequestEntry
    RegionalinventoryCustomBatchRequestEntry (..),
    newRegionalinventoryCustomBatchRequestEntry,

    -- ** RegionalinventoryCustomBatchResponse
    RegionalinventoryCustomBatchResponse (..),
    newRegionalinventoryCustomBatchResponse,

    -- ** RegionalinventoryCustomBatchResponseEntry
    RegionalinventoryCustomBatchResponseEntry (..),
    newRegionalinventoryCustomBatchResponseEntry,

    -- ** ReportRow
    ReportRow (..),
    newReportRow,

    -- ** RepricingProductReport
    RepricingProductReport (..),
    newRepricingProductReport,

    -- ** RepricingProductReport_Type
    RepricingProductReport_Type (..),

    -- ** RepricingProductReportBuyboxWinningProductStats
    RepricingProductReportBuyboxWinningProductStats (..),
    newRepricingProductReportBuyboxWinningProductStats,

    -- ** RepricingRule
    RepricingRule (..),
    newRepricingRule,

    -- ** RepricingRule_Type
    RepricingRule_Type (..),

    -- ** RepricingRuleCostOfGoodsSaleRule
    RepricingRuleCostOfGoodsSaleRule (..),
    newRepricingRuleCostOfGoodsSaleRule,

    -- ** RepricingRuleEffectiveTime
    RepricingRuleEffectiveTime (..),
    newRepricingRuleEffectiveTime,

    -- ** RepricingRuleEffectiveTimeFixedTimePeriod
    RepricingRuleEffectiveTimeFixedTimePeriod (..),
    newRepricingRuleEffectiveTimeFixedTimePeriod,

    -- ** RepricingRuleEligibleOfferMatcher
    RepricingRuleEligibleOfferMatcher (..),
    newRepricingRuleEligibleOfferMatcher,

    -- ** RepricingRuleEligibleOfferMatcher_MatcherOption
    RepricingRuleEligibleOfferMatcher_MatcherOption (..),

    -- ** RepricingRuleEligibleOfferMatcherStringMatcher
    RepricingRuleEligibleOfferMatcherStringMatcher (..),
    newRepricingRuleEligibleOfferMatcherStringMatcher,

    -- ** RepricingRuleReport
    RepricingRuleReport (..),
    newRepricingRuleReport,

    -- ** RepricingRuleReport_Type
    RepricingRuleReport_Type (..),

    -- ** RepricingRuleReportBuyboxWinningRuleStats
    RepricingRuleReportBuyboxWinningRuleStats (..),
    newRepricingRuleReportBuyboxWinningRuleStats,

    -- ** RepricingRuleRestriction
    RepricingRuleRestriction (..),
    newRepricingRuleRestriction,

    -- ** RepricingRuleRestrictionBoundary
    RepricingRuleRestrictionBoundary (..),
    newRepricingRuleRestrictionBoundary,

    -- ** RepricingRuleStatsBasedRule
    RepricingRuleStatsBasedRule (..),
    newRepricingRuleStatsBasedRule,

    -- ** RequestPhoneVerificationRequest
    RequestPhoneVerificationRequest (..),
    newRequestPhoneVerificationRequest,

    -- ** RequestPhoneVerificationRequest_PhoneVerificationMethod
    RequestPhoneVerificationRequest_PhoneVerificationMethod (..),

    -- ** RequestPhoneVerificationResponse
    RequestPhoneVerificationResponse (..),
    newRequestPhoneVerificationResponse,

    -- ** RequestReviewBuyOnGoogleProgramRequest
    RequestReviewBuyOnGoogleProgramRequest (..),
    newRequestReviewBuyOnGoogleProgramRequest,

    -- ** RequestReviewFreeListingsRequest
    RequestReviewFreeListingsRequest (..),
    newRequestReviewFreeListingsRequest,

    -- ** RequestReviewShoppingAdsRequest
    RequestReviewShoppingAdsRequest (..),
    newRequestReviewShoppingAdsRequest,

    -- ** ReturnAddress
    ReturnAddress (..),
    newReturnAddress,

    -- ** ReturnAddressAddress
    ReturnAddressAddress (..),
    newReturnAddressAddress,

    -- ** ReturnPolicy
    ReturnPolicy (..),
    newReturnPolicy,

    -- ** ReturnPolicyOnline
    ReturnPolicyOnline (..),
    newReturnPolicyOnline,

    -- ** ReturnPolicyOnline_ItemConditionsItem
    ReturnPolicyOnline_ItemConditionsItem (..),

    -- ** ReturnPolicyOnline_ReturnMethodsItem
    ReturnPolicyOnline_ReturnMethodsItem (..),

    -- ** ReturnPolicyOnlinePolicy
    ReturnPolicyOnlinePolicy (..),
    newReturnPolicyOnlinePolicy,

    -- ** ReturnPolicyOnlinePolicy_Type
    ReturnPolicyOnlinePolicy_Type (..),

    -- ** ReturnPolicyOnlineRestockingFee
    ReturnPolicyOnlineRestockingFee (..),
    newReturnPolicyOnlineRestockingFee,

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfo
    ReturnPolicyOnlineReturnReasonCategoryInfo (..),
    newReturnPolicyOnlineReturnReasonCategoryInfo,

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
    ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource (..),

    -- ** ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
    ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory (..),

    -- ** ReturnPolicyOnlineReturnShippingFee
    ReturnPolicyOnlineReturnShippingFee (..),
    newReturnPolicyOnlineReturnShippingFee,

    -- ** ReturnPolicyOnlineReturnShippingFee_Type
    ReturnPolicyOnlineReturnShippingFee_Type (..),

    -- ** ReturnPolicyPolicy
    ReturnPolicyPolicy (..),
    newReturnPolicyPolicy,

    -- ** ReturnPolicySeasonalOverride
    ReturnPolicySeasonalOverride (..),
    newReturnPolicySeasonalOverride,

    -- ** ReturnPricingInfo
    ReturnPricingInfo (..),
    newReturnPricingInfo,

    -- ** ReturnShipment
    ReturnShipment (..),
    newReturnShipment,

    -- ** ReturnShippingLabel
    ReturnShippingLabel (..),
    newReturnShippingLabel,

    -- ** ReturnaddressCustomBatchRequest
    ReturnaddressCustomBatchRequest (..),
    newReturnaddressCustomBatchRequest,

    -- ** ReturnaddressCustomBatchRequestEntry
    ReturnaddressCustomBatchRequestEntry (..),
    newReturnaddressCustomBatchRequestEntry,

    -- ** ReturnaddressCustomBatchResponse
    ReturnaddressCustomBatchResponse (..),
    newReturnaddressCustomBatchResponse,

    -- ** ReturnaddressCustomBatchResponseEntry
    ReturnaddressCustomBatchResponseEntry (..),
    newReturnaddressCustomBatchResponseEntry,

    -- ** ReturnaddressListResponse
    ReturnaddressListResponse (..),
    newReturnaddressListResponse,

    -- ** ReturnpolicyCustomBatchRequest
    ReturnpolicyCustomBatchRequest (..),
    newReturnpolicyCustomBatchRequest,

    -- ** ReturnpolicyCustomBatchRequestEntry
    ReturnpolicyCustomBatchRequestEntry (..),
    newReturnpolicyCustomBatchRequestEntry,

    -- ** ReturnpolicyCustomBatchResponse
    ReturnpolicyCustomBatchResponse (..),
    newReturnpolicyCustomBatchResponse,

    -- ** ReturnpolicyCustomBatchResponseEntry
    ReturnpolicyCustomBatchResponseEntry (..),
    newReturnpolicyCustomBatchResponseEntry,

    -- ** ReturnpolicyListResponse
    ReturnpolicyListResponse (..),
    newReturnpolicyListResponse,

    -- ** Row
    Row (..),
    newRow,

    -- ** SearchRequest
    SearchRequest (..),
    newSearchRequest,

    -- ** SearchResponse
    SearchResponse (..),
    newSearchResponse,

    -- ** Segments
    Segments (..),
    newSegments,

    -- ** Segments_Program
    Segments_Program (..),

    -- ** Service
    Service (..),
    newService,

    -- ** SettlementReport
    SettlementReport (..),
    newSettlementReport,

    -- ** SettlementTransaction
    SettlementTransaction (..),
    newSettlementTransaction,

    -- ** SettlementTransactionAmount
    SettlementTransactionAmount (..),
    newSettlementTransactionAmount,

    -- ** SettlementTransactionAmountCommission
    SettlementTransactionAmountCommission (..),
    newSettlementTransactionAmountCommission,

    -- ** SettlementTransactionIdentifiers
    SettlementTransactionIdentifiers (..),
    newSettlementTransactionIdentifiers,

    -- ** SettlementTransactionTransaction
    SettlementTransactionTransaction (..),
    newSettlementTransactionTransaction,

    -- ** SettlementreportsListResponse
    SettlementreportsListResponse (..),
    newSettlementreportsListResponse,

    -- ** SettlementtransactionsListResponse
    SettlementtransactionsListResponse (..),
    newSettlementtransactionsListResponse,

    -- ** ShipmentInvoice
    ShipmentInvoice (..),
    newShipmentInvoice,

    -- ** ShipmentInvoiceLineItemInvoice
    ShipmentInvoiceLineItemInvoice (..),
    newShipmentInvoiceLineItemInvoice,

    -- ** ShipmentTrackingInfo
    ShipmentTrackingInfo (..),
    newShipmentTrackingInfo,

    -- ** ShippingSettings
    ShippingSettings (..),
    newShippingSettings,

    -- ** ShippingsettingsCustomBatchRequest
    ShippingsettingsCustomBatchRequest (..),
    newShippingsettingsCustomBatchRequest,

    -- ** ShippingsettingsCustomBatchRequestEntry
    ShippingsettingsCustomBatchRequestEntry (..),
    newShippingsettingsCustomBatchRequestEntry,

    -- ** ShippingsettingsCustomBatchResponse
    ShippingsettingsCustomBatchResponse (..),
    newShippingsettingsCustomBatchResponse,

    -- ** ShippingsettingsCustomBatchResponseEntry
    ShippingsettingsCustomBatchResponseEntry (..),
    newShippingsettingsCustomBatchResponseEntry,

    -- ** ShippingsettingsGetSupportedCarriersResponse
    ShippingsettingsGetSupportedCarriersResponse (..),
    newShippingsettingsGetSupportedCarriersResponse,

    -- ** ShippingsettingsGetSupportedHolidaysResponse
    ShippingsettingsGetSupportedHolidaysResponse (..),
    newShippingsettingsGetSupportedHolidaysResponse,

    -- ** ShippingsettingsGetSupportedPickupServicesResponse
    ShippingsettingsGetSupportedPickupServicesResponse (..),
    newShippingsettingsGetSupportedPickupServicesResponse,

    -- ** ShippingsettingsListResponse
    ShippingsettingsListResponse (..),
    newShippingsettingsListResponse,

    -- ** ShoppingAdsProgramStatus
    ShoppingAdsProgramStatus (..),
    newShoppingAdsProgramStatus,

    -- ** ShoppingAdsProgramStatus_GlobalState
    ShoppingAdsProgramStatus_GlobalState (..),

    -- ** ShoppingAdsProgramStatusRegionStatus
    ShoppingAdsProgramStatusRegionStatus (..),
    newShoppingAdsProgramStatusRegionStatus,

    -- ** ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
    ShoppingAdsProgramStatusRegionStatus_EligibilityStatus (..),

    -- ** ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
    ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus (..),

    -- ** ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
    ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason (..),

    -- ** ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
    ShoppingAdsProgramStatusReviewIneligibilityReasonDetails (..),
    newShoppingAdsProgramStatusReviewIneligibilityReasonDetails,

    -- ** Table
    Table (..),
    newTable,

    -- ** TestOrder
    TestOrder (..),
    newTestOrder,

    -- ** TestOrderAddress
    TestOrderAddress (..),
    newTestOrderAddress,

    -- ** TestOrderDeliveryDetails
    TestOrderDeliveryDetails (..),
    newTestOrderDeliveryDetails,

    -- ** TestOrderLineItem
    TestOrderLineItem (..),
    newTestOrderLineItem,

    -- ** TestOrderLineItemProduct
    TestOrderLineItemProduct (..),
    newTestOrderLineItemProduct,

    -- ** TestOrderPickupDetails
    TestOrderPickupDetails (..),
    newTestOrderPickupDetails,

    -- ** TestOrderPickupDetailsPickupPerson
    TestOrderPickupDetailsPickupPerson (..),
    newTestOrderPickupDetailsPickupPerson,

    -- ** TimePeriod
    TimePeriod (..),
    newTimePeriod,

    -- ** TimeZone
    TimeZone (..),
    newTimeZone,

    -- ** TransitTable
    TransitTable (..),
    newTransitTable,

    -- ** TransitTableTransitTimeRow
    TransitTableTransitTimeRow (..),
    newTransitTableTransitTimeRow,

    -- ** TransitTableTransitTimeRowTransitTimeValue
    TransitTableTransitTimeRowTransitTimeValue (..),
    newTransitTableTransitTimeRowTransitTimeValue,

    -- ** UnitInvoice
    UnitInvoice (..),
    newUnitInvoice,

    -- ** UnitInvoiceAdditionalCharge
    UnitInvoiceAdditionalCharge (..),
    newUnitInvoiceAdditionalCharge,

    -- ** UnitInvoiceTaxLine
    UnitInvoiceTaxLine (..),
    newUnitInvoiceTaxLine,

    -- ** Value
    Value (..),
    newValue,

    -- ** VerifyPhoneNumberRequest
    VerifyPhoneNumberRequest (..),
    newVerifyPhoneNumberRequest,

    -- ** VerifyPhoneNumberRequest_PhoneVerificationMethod
    VerifyPhoneNumberRequest_PhoneVerificationMethod (..),

    -- ** VerifyPhoneNumberResponse
    VerifyPhoneNumberResponse (..),
    newVerifyPhoneNumberResponse,

    -- ** Warehouse
    Warehouse (..),
    newWarehouse,

    -- ** WarehouseBasedDeliveryTime
    WarehouseBasedDeliveryTime (..),
    newWarehouseBasedDeliveryTime,

    -- ** WarehouseCutoffTime
    WarehouseCutoffTime (..),
    newWarehouseCutoffTime,

    -- ** Weight
    Weight (..),
    newWeight,

    -- ** AccountsGetView
    AccountsGetView (..),

    -- ** AccountsListView
    AccountsListView (..),

    -- ** OrderreturnsListOrderBy
    OrderreturnsListOrderBy (..),

    -- ** OrderreturnsListShipmentStates
    OrderreturnsListShipmentStates (..),

    -- ** OrderreturnsListShipmentStatus
    OrderreturnsListShipmentStatus (..),

    -- ** OrderreturnsListShipmentTypes
    OrderreturnsListShipmentTypes (..),

    -- ** OrdersGettestordertemplateTemplateName
    OrdersGettestordertemplateTemplateName (..),

    -- ** OrdersListStatuses
    OrdersListStatuses (..),
  )
where

import Gogol.ShoppingContent.Content.Accounts.Authinfo
import Gogol.ShoppingContent.Content.Accounts.Claimwebsite
import Gogol.ShoppingContent.Content.Accounts.Credentials.Create
import Gogol.ShoppingContent.Content.Accounts.Custombatch
import Gogol.ShoppingContent.Content.Accounts.Delete
import Gogol.ShoppingContent.Content.Accounts.Get
import Gogol.ShoppingContent.Content.Accounts.Insert
import Gogol.ShoppingContent.Content.Accounts.Labels.Create
import Gogol.ShoppingContent.Content.Accounts.Labels.Delete
import Gogol.ShoppingContent.Content.Accounts.Labels.List
import Gogol.ShoppingContent.Content.Accounts.Labels.Patch
import Gogol.ShoppingContent.Content.Accounts.Link
import Gogol.ShoppingContent.Content.Accounts.List
import Gogol.ShoppingContent.Content.Accounts.Listlinks
import Gogol.ShoppingContent.Content.Accounts.Requestphoneverification
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.Create
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.Delete
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.List
import Gogol.ShoppingContent.Content.Accounts.Returncarrier.Patch
import Gogol.ShoppingContent.Content.Accounts.Update
import Gogol.ShoppingContent.Content.Accounts.Updatelabels
import Gogol.ShoppingContent.Content.Accounts.Verifyphonenumber
import Gogol.ShoppingContent.Content.Accountstatuses.Custombatch
import Gogol.ShoppingContent.Content.Accountstatuses.Get
import Gogol.ShoppingContent.Content.Accountstatuses.List
import Gogol.ShoppingContent.Content.Accounttax.Custombatch
import Gogol.ShoppingContent.Content.Accounttax.Get
import Gogol.ShoppingContent.Content.Accounttax.List
import Gogol.ShoppingContent.Content.Accounttax.Update
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Activate
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Get
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Onboard
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Patch
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Pause
import Gogol.ShoppingContent.Content.Buyongoogleprograms.Requestreview
import Gogol.ShoppingContent.Content.Collections.Create
import Gogol.ShoppingContent.Content.Collections.Delete
import Gogol.ShoppingContent.Content.Collections.Get
import Gogol.ShoppingContent.Content.Collections.List
import Gogol.ShoppingContent.Content.Collectionstatuses.Get
import Gogol.ShoppingContent.Content.Collectionstatuses.List
import Gogol.ShoppingContent.Content.Csses.Get
import Gogol.ShoppingContent.Content.Csses.List
import Gogol.ShoppingContent.Content.Csses.Updatelabels
import Gogol.ShoppingContent.Content.Datafeeds.Custombatch
import Gogol.ShoppingContent.Content.Datafeeds.Delete
import Gogol.ShoppingContent.Content.Datafeeds.Fetchnow
import Gogol.ShoppingContent.Content.Datafeeds.Get
import Gogol.ShoppingContent.Content.Datafeeds.Insert
import Gogol.ShoppingContent.Content.Datafeeds.List
import Gogol.ShoppingContent.Content.Datafeeds.Update
import Gogol.ShoppingContent.Content.Datafeedstatuses.Custombatch
import Gogol.ShoppingContent.Content.Datafeedstatuses.Get
import Gogol.ShoppingContent.Content.Datafeedstatuses.List
import Gogol.ShoppingContent.Content.Freelistingsprogram.Get
import Gogol.ShoppingContent.Content.Freelistingsprogram.Requestreview
import Gogol.ShoppingContent.Content.Liasettings.Custombatch
import Gogol.ShoppingContent.Content.Liasettings.Get
import Gogol.ShoppingContent.Content.Liasettings.Getaccessiblegmbaccounts
import Gogol.ShoppingContent.Content.Liasettings.List
import Gogol.ShoppingContent.Content.Liasettings.Listposdataproviders
import Gogol.ShoppingContent.Content.Liasettings.Requestgmbaccess
import Gogol.ShoppingContent.Content.Liasettings.Requestinventoryverification
import Gogol.ShoppingContent.Content.Liasettings.Setinventoryverificationcontact
import Gogol.ShoppingContent.Content.Liasettings.Setposdataprovider
import Gogol.ShoppingContent.Content.Liasettings.Update
import Gogol.ShoppingContent.Content.Localinventory.Custombatch
import Gogol.ShoppingContent.Content.Localinventory.Insert
import Gogol.ShoppingContent.Content.Orderinvoices.Createchargeinvoice
import Gogol.ShoppingContent.Content.Orderinvoices.Createrefundinvoice
import Gogol.ShoppingContent.Content.Orderreports.Listdisbursements
import Gogol.ShoppingContent.Content.Orderreports.Listtransactions
import Gogol.ShoppingContent.Content.Orderreturns.Acknowledge
import Gogol.ShoppingContent.Content.Orderreturns.Createorderreturn
import Gogol.ShoppingContent.Content.Orderreturns.Get
import Gogol.ShoppingContent.Content.Orderreturns.Labels.Create
import Gogol.ShoppingContent.Content.Orderreturns.List
import Gogol.ShoppingContent.Content.Orderreturns.Process
import Gogol.ShoppingContent.Content.Orders.Acknowledge
import Gogol.ShoppingContent.Content.Orders.Advancetestorder
import Gogol.ShoppingContent.Content.Orders.Cancel
import Gogol.ShoppingContent.Content.Orders.Cancellineitem
import Gogol.ShoppingContent.Content.Orders.Canceltestorderbycustomer
import Gogol.ShoppingContent.Content.Orders.CaptureOrder
import Gogol.ShoppingContent.Content.Orders.Createtestorder
import Gogol.ShoppingContent.Content.Orders.Createtestreturn
import Gogol.ShoppingContent.Content.Orders.Get
import Gogol.ShoppingContent.Content.Orders.Getbymerchantorderid
import Gogol.ShoppingContent.Content.Orders.Gettestordertemplate
import Gogol.ShoppingContent.Content.Orders.Instorerefundlineitem
import Gogol.ShoppingContent.Content.Orders.List
import Gogol.ShoppingContent.Content.Orders.Refunditem
import Gogol.ShoppingContent.Content.Orders.Refundorder
import Gogol.ShoppingContent.Content.Orders.Rejectreturnlineitem
import Gogol.ShoppingContent.Content.Orders.Returnrefundlineitem
import Gogol.ShoppingContent.Content.Orders.Setlineitemmetadata
import Gogol.ShoppingContent.Content.Orders.Shiplineitems
import Gogol.ShoppingContent.Content.Orders.Updatelineitemshippingdetails
import Gogol.ShoppingContent.Content.Orders.Updatemerchantorderid
import Gogol.ShoppingContent.Content.Orders.Updateshipment
import Gogol.ShoppingContent.Content.Ordertrackingsignals.Create
import Gogol.ShoppingContent.Content.Pos.Custombatch
import Gogol.ShoppingContent.Content.Pos.Delete
import Gogol.ShoppingContent.Content.Pos.Get
import Gogol.ShoppingContent.Content.Pos.Insert
import Gogol.ShoppingContent.Content.Pos.Inventory
import Gogol.ShoppingContent.Content.Pos.List
import Gogol.ShoppingContent.Content.Pos.Sale
import Gogol.ShoppingContent.Content.Products.Custombatch
import Gogol.ShoppingContent.Content.Products.Delete
import Gogol.ShoppingContent.Content.Products.Get
import Gogol.ShoppingContent.Content.Products.Insert
import Gogol.ShoppingContent.Content.Products.List
import Gogol.ShoppingContent.Content.Products.Update
import Gogol.ShoppingContent.Content.Productstatuses.Custombatch
import Gogol.ShoppingContent.Content.Productstatuses.Get
import Gogol.ShoppingContent.Content.Productstatuses.List
import Gogol.ShoppingContent.Content.Productstatuses.Repricingreports.List
import Gogol.ShoppingContent.Content.Promotions.Create
import Gogol.ShoppingContent.Content.Promotions.Get
import Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Get
import Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Update
import Gogol.ShoppingContent.Content.Regionalinventory.Custombatch
import Gogol.ShoppingContent.Content.Regionalinventory.Insert
import Gogol.ShoppingContent.Content.Regions.Create
import Gogol.ShoppingContent.Content.Regions.Delete
import Gogol.ShoppingContent.Content.Regions.Get
import Gogol.ShoppingContent.Content.Regions.List
import Gogol.ShoppingContent.Content.Regions.Patch
import Gogol.ShoppingContent.Content.Reports.Search
import Gogol.ShoppingContent.Content.Repricingrules.Create
import Gogol.ShoppingContent.Content.Repricingrules.Delete
import Gogol.ShoppingContent.Content.Repricingrules.Get
import Gogol.ShoppingContent.Content.Repricingrules.List
import Gogol.ShoppingContent.Content.Repricingrules.Patch
import Gogol.ShoppingContent.Content.Repricingrules.Repricingreports.List
import Gogol.ShoppingContent.Content.Returnaddress.Custombatch
import Gogol.ShoppingContent.Content.Returnaddress.Delete
import Gogol.ShoppingContent.Content.Returnaddress.Get
import Gogol.ShoppingContent.Content.Returnaddress.Insert
import Gogol.ShoppingContent.Content.Returnaddress.List
import Gogol.ShoppingContent.Content.Returnpolicy.Custombatch
import Gogol.ShoppingContent.Content.Returnpolicy.Delete
import Gogol.ShoppingContent.Content.Returnpolicy.Get
import Gogol.ShoppingContent.Content.Returnpolicy.Insert
import Gogol.ShoppingContent.Content.Returnpolicy.List
import Gogol.ShoppingContent.Content.Returnpolicyonline.Create
import Gogol.ShoppingContent.Content.Returnpolicyonline.Delete
import Gogol.ShoppingContent.Content.Returnpolicyonline.Get
import Gogol.ShoppingContent.Content.Returnpolicyonline.List
import Gogol.ShoppingContent.Content.Returnpolicyonline.Patch
import Gogol.ShoppingContent.Content.Settlementreports.Get
import Gogol.ShoppingContent.Content.Settlementreports.List
import Gogol.ShoppingContent.Content.Settlementtransactions.List
import Gogol.ShoppingContent.Content.Shippingsettings.Custombatch
import Gogol.ShoppingContent.Content.Shippingsettings.Get
import Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedcarriers
import Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedholidays
import Gogol.ShoppingContent.Content.Shippingsettings.Getsupportedpickupservices
import Gogol.ShoppingContent.Content.Shippingsettings.List
import Gogol.ShoppingContent.Content.Shippingsettings.Update
import Gogol.ShoppingContent.Content.Shoppingadsprogram.Get
import Gogol.ShoppingContent.Content.Shoppingadsprogram.Requestreview
import Gogol.ShoppingContent.Types

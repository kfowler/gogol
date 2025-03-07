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
-- Module      : Gogol.CivicInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides polling places, early vote locations, contest data, election officials, and government representatives for U.S. residential addresses.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference>
module Gogol.CivicInfo
  ( -- * Configuration
    civicInfoService,

    -- * Resources

    -- ** civicinfo.divisions.search
    CivicInfoDivisionsSearchResource,
    newCivicInfoDivisionsSearch,
    CivicInfoDivisionsSearch,

    -- ** civicinfo.elections.electionQuery
    CivicInfoElectionsElectionQueryResource,
    newCivicInfoElectionsElectionQuery,
    CivicInfoElectionsElectionQuery,

    -- ** civicinfo.elections.voterInfoQuery
    CivicInfoElectionsVoterInfoQueryResource,
    newCivicInfoElectionsVoterInfoQuery,
    CivicInfoElectionsVoterInfoQuery,

    -- ** civicinfo.representatives.representativeInfoByAddress
    CivicInfoRepresentativesRepresentativeInfoByAddressResource,
    newCivicInfoRepresentativesRepresentativeInfoByAddress,
    CivicInfoRepresentativesRepresentativeInfoByAddress,

    -- ** civicinfo.representatives.representativeInfoByDivision
    CivicInfoRepresentativesRepresentativeInfoByDivisionResource,
    newCivicInfoRepresentativesRepresentativeInfoByDivision,
    CivicInfoRepresentativesRepresentativeInfoByDivision,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AdministrationRegion
    AdministrationRegion (..),
    newAdministrationRegion,

    -- ** AdministrativeBody
    AdministrativeBody (..),
    newAdministrativeBody,

    -- ** Candidate
    Candidate (..),
    newCandidate,

    -- ** Channel
    Channel (..),
    newChannel,

    -- ** Contest
    Contest (..),
    newContest,

    -- ** Contest_LevelItem
    Contest_LevelItem (..),

    -- ** Contest_RolesItem
    Contest_RolesItem (..),

    -- ** DivisionSearchResponse
    DivisionSearchResponse (..),
    newDivisionSearchResponse,

    -- ** DivisionSearchResult
    DivisionSearchResult (..),
    newDivisionSearchResult,

    -- ** Election
    Election (..),
    newElection,

    -- ** ElectionOfficial
    ElectionOfficial (..),
    newElectionOfficial,

    -- ** ElectionsQueryResponse
    ElectionsQueryResponse (..),
    newElectionsQueryResponse,

    -- ** ElectoralDistrict
    ElectoralDistrict (..),
    newElectoralDistrict,

    -- ** ElectoralDistrict_Scope
    ElectoralDistrict_Scope (..),

    -- ** FeatureIdProto
    FeatureIdProto (..),
    newFeatureIdProto,

    -- ** GeocodingSummary
    GeocodingSummary (..),
    newGeocodingSummary,

    -- ** GeocodingSummary_FeatureType
    GeocodingSummary_FeatureType (..),

    -- ** GeographicDivision
    GeographicDivision (..),
    newGeographicDivision,

    -- ** MessageSet
    MessageSet (..),
    newMessageSet,

    -- ** Office
    Office (..),
    newOffice,

    -- ** Office_LevelsItem
    Office_LevelsItem (..),

    -- ** Office_RolesItem
    Office_RolesItem (..),

    -- ** Official
    Official (..),
    newOfficial,

    -- ** PollingLocation
    PollingLocation (..),
    newPollingLocation,

    -- ** RepresentativeInfoData
    RepresentativeInfoData (..),
    newRepresentativeInfoData,

    -- ** RepresentativeInfoData_Divisions
    RepresentativeInfoData_Divisions (..),
    newRepresentativeInfoData_Divisions,

    -- ** RepresentativeInfoResponse
    RepresentativeInfoResponse (..),
    newRepresentativeInfoResponse,

    -- ** RepresentativeInfoResponse_Divisions
    RepresentativeInfoResponse_Divisions (..),
    newRepresentativeInfoResponse_Divisions,

    -- ** SimpleAddressType
    SimpleAddressType (..),
    newSimpleAddressType,

    -- ** Source
    Source (..),
    newSource,

    -- ** VoterInfoResponse
    VoterInfoResponse (..),
    newVoterInfoResponse,

    -- ** RepresentativesRepresentativeInfoByAddressLevels
    RepresentativesRepresentativeInfoByAddressLevels (..),

    -- ** RepresentativesRepresentativeInfoByAddressRoles
    RepresentativesRepresentativeInfoByAddressRoles (..),

    -- ** RepresentativesRepresentativeInfoByDivisionLevels
    RepresentativesRepresentativeInfoByDivisionLevels (..),

    -- ** RepresentativesRepresentativeInfoByDivisionRoles
    RepresentativesRepresentativeInfoByDivisionRoles (..),
  )
where

import Gogol.CivicInfo.Divisions.Search
import Gogol.CivicInfo.Elections.ElectionQuery
import Gogol.CivicInfo.Elections.VoterInfoQuery
import Gogol.CivicInfo.Representatives.RepresentativeInfoByAddress
import Gogol.CivicInfo.Representatives.RepresentativeInfoByDivision
import Gogol.CivicInfo.Types

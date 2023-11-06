# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/maps/fleetengine/v1/trip_api.proto for package 'maps.fleetengine.v1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/maps/fleetengine/v1/trip_api_pb'

module Maps
  module Fleetengine
    module V1
      module TripService
        # Trip management service.
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'maps.fleetengine.v1.TripService'

          # Creates a trip in the Fleet Engine and returns the new trip.
          rpc :CreateTrip, ::Maps::Fleetengine::V1::CreateTripRequest, ::Maps::Fleetengine::V1::Trip
          # Get information about a single trip.
          rpc :GetTrip, ::Maps::Fleetengine::V1::GetTripRequest, ::Maps::Fleetengine::V1::Trip
          # Report billable trip usage.
          rpc :ReportBillableTrip, ::Maps::Fleetengine::V1::ReportBillableTripRequest, ::Google::Protobuf::Empty
          # Get all the trips for a specific vehicle.
          rpc :SearchTrips, ::Maps::Fleetengine::V1::SearchTripsRequest, ::Maps::Fleetengine::V1::SearchTripsResponse
          # Updates trip data.
          rpc :UpdateTrip, ::Maps::Fleetengine::V1::UpdateTripRequest, ::Maps::Fleetengine::V1::Trip
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/maps/fleetengine/v1/trip_api_pb"
require "google/maps/fleetengine/v1/trip_api_services_pb"
require "maps/fleetengine/v1/trip_service"

class ::Maps::Fleetengine::V1::TripService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_trip
    # Create GRPC objects.
    grpc_response = ::Maps::Fleetengine::V1::Trip.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    trip_id = "hello world"
    trip = {}

    create_trip_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_trip, name
      assert_kind_of ::Maps::Fleetengine::V1::CreateTripRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Maps::Fleetengine::V1::RequestHeader), request["header"]
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["trip_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Maps::Fleetengine::V1::Trip), request["trip"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_trip_client_stub do
      # Create client
      client = ::Maps::Fleetengine::V1::TripService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_trip({ header: header, parent: parent, trip_id: trip_id, trip: trip }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_trip header: header, parent: parent, trip_id: trip_id, trip: trip do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_trip ::Maps::Fleetengine::V1::CreateTripRequest.new(header: header, parent: parent, trip_id: trip_id, trip: trip) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_trip({ header: header, parent: parent, trip_id: trip_id, trip: trip }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_trip(::Maps::Fleetengine::V1::CreateTripRequest.new(header: header, parent: parent, trip_id: trip_id, trip: trip), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_trip_client_stub.call_rpc_count
    end
  end

  def test_get_trip
    # Create GRPC objects.
    grpc_response = ::Maps::Fleetengine::V1::Trip.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"
    view = :TRIP_VIEW_UNSPECIFIED
    current_route_segment_version = {}
    remaining_waypoints_version = {}
    route_format_type = :UNKNOWN_FORMAT_TYPE
    current_route_segment_traffic_version = {}
    remaining_waypoints_route_version = {}

    get_trip_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_trip, name
      assert_kind_of ::Maps::Fleetengine::V1::GetTripRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Maps::Fleetengine::V1::RequestHeader), request["header"]
      assert_equal "hello world", request["name"]
      assert_equal :TRIP_VIEW_UNSPECIFIED, request["view"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["current_route_segment_version"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["remaining_waypoints_version"]
      assert_equal :UNKNOWN_FORMAT_TYPE, request["route_format_type"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["current_route_segment_traffic_version"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["remaining_waypoints_route_version"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_trip_client_stub do
      # Create client
      client = ::Maps::Fleetengine::V1::TripService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_trip({ header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_trip header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_trip ::Maps::Fleetengine::V1::GetTripRequest.new(header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_trip({ header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_trip(::Maps::Fleetengine::V1::GetTripRequest.new(header: header, name: name, view: view, current_route_segment_version: current_route_segment_version, remaining_waypoints_version: remaining_waypoints_version, route_format_type: route_format_type, current_route_segment_traffic_version: current_route_segment_traffic_version, remaining_waypoints_route_version: remaining_waypoints_route_version), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_trip_client_stub.call_rpc_count
    end
  end

  def test_report_billable_trip
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    country_code = "hello world"
    platform = :BILLING_PLATFORM_IDENTIFIER_UNSPECIFIED
    related_ids = ["hello world"]
    solution_type = :SOLUTION_TYPE_UNSPECIFIED

    report_billable_trip_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :report_billable_trip, name
      assert_kind_of ::Maps::Fleetengine::V1::ReportBillableTripRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["country_code"]
      assert_equal :BILLING_PLATFORM_IDENTIFIER_UNSPECIFIED, request["platform"]
      assert_equal ["hello world"], request["related_ids"]
      assert_equal :SOLUTION_TYPE_UNSPECIFIED, request["solution_type"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, report_billable_trip_client_stub do
      # Create client
      client = ::Maps::Fleetengine::V1::TripService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.report_billable_trip({ name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.report_billable_trip name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.report_billable_trip ::Maps::Fleetengine::V1::ReportBillableTripRequest.new(name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.report_billable_trip({ name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.report_billable_trip(::Maps::Fleetengine::V1::ReportBillableTripRequest.new(name: name, country_code: country_code, platform: platform, related_ids: related_ids, solution_type: solution_type), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, report_billable_trip_client_stub.call_rpc_count
    end
  end

  def test_search_trips
    # Create GRPC objects.
    grpc_response = ::Maps::Fleetengine::V1::SearchTripsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    parent = "hello world"
    vehicle_id = "hello world"
    active_trips_only = true
    page_size = 42
    page_token = "hello world"
    minimum_staleness = {}

    search_trips_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :search_trips, name
      assert_kind_of ::Maps::Fleetengine::V1::SearchTripsRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Maps::Fleetengine::V1::RequestHeader), request["header"]
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["vehicle_id"]
      assert_equal true, request["active_trips_only"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Duration), request["minimum_staleness"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, search_trips_client_stub do
      # Create client
      client = ::Maps::Fleetengine::V1::TripService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.search_trips({ header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.search_trips header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.search_trips ::Maps::Fleetengine::V1::SearchTripsRequest.new(header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.search_trips({ header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.search_trips(::Maps::Fleetengine::V1::SearchTripsRequest.new(header: header, parent: parent, vehicle_id: vehicle_id, active_trips_only: active_trips_only, page_size: page_size, page_token: page_token, minimum_staleness: minimum_staleness), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, search_trips_client_stub.call_rpc_count
    end
  end

  def test_update_trip
    # Create GRPC objects.
    grpc_response = ::Maps::Fleetengine::V1::Trip.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    header = {}
    name = "hello world"
    trip = {}
    update_mask = {}

    update_trip_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_trip, name
      assert_kind_of ::Maps::Fleetengine::V1::UpdateTripRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Maps::Fleetengine::V1::RequestHeader), request["header"]
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Maps::Fleetengine::V1::Trip), request["trip"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_trip_client_stub do
      # Create client
      client = ::Maps::Fleetengine::V1::TripService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_trip({ header: header, name: name, trip: trip, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_trip header: header, name: name, trip: trip, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_trip ::Maps::Fleetengine::V1::UpdateTripRequest.new(header: header, name: name, trip: trip, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_trip({ header: header, name: name, trip: trip, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_trip(::Maps::Fleetengine::V1::UpdateTripRequest.new(header: header, name: name, trip: trip, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_trip_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Maps::Fleetengine::V1::TripService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Maps::Fleetengine::V1::TripService::Client::Configuration, config
  end
end
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

require "google/maps/fleetengine/v1/trip_api_pb"

module Maps
  module Fleetengine
    module V1
      module TripService
        module Rest
          ##
          # REST service stub for the TripService service.
          # Service stub contains baseline method implementations
          # including transcoding, making the REST call, and deserialing the response.
          #
          class ServiceStub
            def initialize endpoint:, credentials:
              # These require statements are intentionally placed here to initialize
              # the REST modules only when it's required.
              require "gapic/rest"

              @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                           numeric_enums: true,
                                                           raise_faraday_errors: false
            end

            ##
            # Baseline implementation for the create_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::CreateTripRequest]
            #   A request object representing the call parameters. Required.
            # @param options [::Gapic::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Maps::Fleetengine::V1::Trip]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Maps::Fleetengine::V1::Trip]
            #   A result object deserialized from the server's reply
            def create_trip request_pb, options = nil
              raise ::ArgumentError, "request must be provided" if request_pb.nil?

              verb, uri, query_string_params, body = ServiceStub.transcode_create_trip_request request_pb
              query_string_params = if query_string_params.any?
                                      query_string_params.to_h { |p| p.split "=", 2 }
                                    else
                                      {}
                                    end

              response = @client_stub.make_http_request(
                verb,
                uri:     uri,
                body:    body || "",
                params:  query_string_params,
                options: options
              )
              operation = ::Gapic::Rest::TransportOperation.new response
              result = ::Maps::Fleetengine::V1::Trip.decode_json response.body, ignore_unknown_fields: true

              yield result, operation if block_given?
              result
            end

            ##
            # Baseline implementation for the get_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::GetTripRequest]
            #   A request object representing the call parameters. Required.
            # @param options [::Gapic::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Maps::Fleetengine::V1::Trip]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Maps::Fleetengine::V1::Trip]
            #   A result object deserialized from the server's reply
            def get_trip request_pb, options = nil
              raise ::ArgumentError, "request must be provided" if request_pb.nil?

              verb, uri, query_string_params, body = ServiceStub.transcode_get_trip_request request_pb
              query_string_params = if query_string_params.any?
                                      query_string_params.to_h { |p| p.split "=", 2 }
                                    else
                                      {}
                                    end

              response = @client_stub.make_http_request(
                verb,
                uri:     uri,
                body:    body || "",
                params:  query_string_params,
                options: options
              )
              operation = ::Gapic::Rest::TransportOperation.new response
              result = ::Maps::Fleetengine::V1::Trip.decode_json response.body, ignore_unknown_fields: true

              yield result, operation if block_given?
              result
            end

            ##
            # Baseline implementation for the report_billable_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::ReportBillableTripRequest]
            #   A request object representing the call parameters. Required.
            # @param options [::Gapic::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Google::Protobuf::Empty]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Google::Protobuf::Empty]
            #   A result object deserialized from the server's reply
            def report_billable_trip request_pb, options = nil
              raise ::ArgumentError, "request must be provided" if request_pb.nil?

              verb, uri, query_string_params, body = ServiceStub.transcode_report_billable_trip_request request_pb
              query_string_params = if query_string_params.any?
                                      query_string_params.to_h { |p| p.split "=", 2 }
                                    else
                                      {}
                                    end

              response = @client_stub.make_http_request(
                verb,
                uri:     uri,
                body:    body || "",
                params:  query_string_params,
                options: options
              )
              operation = ::Gapic::Rest::TransportOperation.new response
              result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true

              yield result, operation if block_given?
              result
            end

            ##
            # Baseline implementation for the search_trips REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::SearchTripsRequest]
            #   A request object representing the call parameters. Required.
            # @param options [::Gapic::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Maps::Fleetengine::V1::SearchTripsResponse]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Maps::Fleetengine::V1::SearchTripsResponse]
            #   A result object deserialized from the server's reply
            def search_trips request_pb, options = nil
              raise ::ArgumentError, "request must be provided" if request_pb.nil?

              verb, uri, query_string_params, body = ServiceStub.transcode_search_trips_request request_pb
              query_string_params = if query_string_params.any?
                                      query_string_params.to_h { |p| p.split "=", 2 }
                                    else
                                      {}
                                    end

              response = @client_stub.make_http_request(
                verb,
                uri:     uri,
                body:    body || "",
                params:  query_string_params,
                options: options
              )
              operation = ::Gapic::Rest::TransportOperation.new response
              result = ::Maps::Fleetengine::V1::SearchTripsResponse.decode_json response.body, ignore_unknown_fields: true

              yield result, operation if block_given?
              result
            end

            ##
            # Baseline implementation for the update_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::UpdateTripRequest]
            #   A request object representing the call parameters. Required.
            # @param options [::Gapic::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
            #
            # @yield [result, operation] Access the result along with the TransportOperation object
            # @yieldparam result [::Maps::Fleetengine::V1::Trip]
            # @yieldparam operation [::Gapic::Rest::TransportOperation]
            #
            # @return [::Maps::Fleetengine::V1::Trip]
            #   A result object deserialized from the server's reply
            def update_trip request_pb, options = nil
              raise ::ArgumentError, "request must be provided" if request_pb.nil?

              verb, uri, query_string_params, body = ServiceStub.transcode_update_trip_request request_pb
              query_string_params = if query_string_params.any?
                                      query_string_params.to_h { |p| p.split "=", 2 }
                                    else
                                      {}
                                    end

              response = @client_stub.make_http_request(
                verb,
                uri:     uri,
                body:    body || "",
                params:  query_string_params,
                options: options
              )
              operation = ::Gapic::Rest::TransportOperation.new response
              result = ::Maps::Fleetengine::V1::Trip.decode_json response.body, ignore_unknown_fields: true

              yield result, operation if block_given?
              result
            end

            ##
            # @private
            #
            # GRPC transcoding helper method for the create_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::CreateTripRequest]
            #   A request object representing the call parameters. Required.
            # @return [Array(String, [String, nil], Hash{String => String})]
            #   Uri, Body, Query string parameters
            def self.transcode_create_trip_request request_pb
              transcoder = Gapic::Rest::GrpcTranscoder.new
                                                      .with_bindings(
                                                        uri_method: :post,
                                                        uri_template: "/v1/{parent}/trips",
                                                        body: "trip",
                                                        matches: [
                                                          ["parent", %r{^providers/[^/]+/?$}, false]
                                                        ]
                                                      )
              transcoder.transcode request_pb
            end

            ##
            # @private
            #
            # GRPC transcoding helper method for the get_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::GetTripRequest]
            #   A request object representing the call parameters. Required.
            # @return [Array(String, [String, nil], Hash{String => String})]
            #   Uri, Body, Query string parameters
            def self.transcode_get_trip_request request_pb
              transcoder = Gapic::Rest::GrpcTranscoder.new
                                                      .with_bindings(
                                                        uri_method: :get,
                                                        uri_template: "/v1/{name}",
                                                        matches: [
                                                          ["name", %r{^providers/[^/]+/trips/[^/]+/?$}, false]
                                                        ]
                                                      )
              transcoder.transcode request_pb
            end

            ##
            # @private
            #
            # GRPC transcoding helper method for the report_billable_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::ReportBillableTripRequest]
            #   A request object representing the call parameters. Required.
            # @return [Array(String, [String, nil], Hash{String => String})]
            #   Uri, Body, Query string parameters
            def self.transcode_report_billable_trip_request request_pb
              transcoder = Gapic::Rest::GrpcTranscoder.new
                                                      .with_bindings(
                                                        uri_method: :post,
                                                        uri_template: "/v1/{name}:report",
                                                        body: "*",
                                                        matches: [
                                                          ["name", %r{^providers/[^/]+/billableTrips/[^/]+/?$}, false]
                                                        ]
                                                      )
              transcoder.transcode request_pb
            end

            ##
            # @private
            #
            # GRPC transcoding helper method for the search_trips REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::SearchTripsRequest]
            #   A request object representing the call parameters. Required.
            # @return [Array(String, [String, nil], Hash{String => String})]
            #   Uri, Body, Query string parameters
            def self.transcode_search_trips_request request_pb
              transcoder = Gapic::Rest::GrpcTranscoder.new
                                                      .with_bindings(
                                                        uri_method: :post,
                                                        uri_template: "/v1/{parent}/trips:search",
                                                        body: "*",
                                                        matches: [
                                                          ["parent", %r{^providers/[^/]+/?$}, false]
                                                        ]
                                                      )
              transcoder.transcode request_pb
            end

            ##
            # @private
            #
            # GRPC transcoding helper method for the update_trip REST call
            #
            # @param request_pb [::Maps::Fleetengine::V1::UpdateTripRequest]
            #   A request object representing the call parameters. Required.
            # @return [Array(String, [String, nil], Hash{String => String})]
            #   Uri, Body, Query string parameters
            def self.transcode_update_trip_request request_pb
              transcoder = Gapic::Rest::GrpcTranscoder.new
                                                      .with_bindings(
                                                        uri_method: :put,
                                                        uri_template: "/v1/{name}",
                                                        body: "trip",
                                                        matches: [
                                                          ["name", %r{^providers/[^/]+/trips/[^/]+/?$}, false]
                                                        ]
                                                      )
              transcoder.transcode request_pb
            end
          end
        end
      end
    end
  end
end

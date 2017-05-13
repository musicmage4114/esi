=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::RoutesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RoutesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::RoutesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RoutesApi' do
    it 'should create an instact of RoutesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::RoutesApi)
    end
  end

  # unit tests for set_route
  # Get route
  # Get the systems between origin and destination  ---  Alternate route: &#x60;/latest/route/{origin}/{destination}/&#x60;  Alternate route: &#x60;/legacy/route/{origin}/{destination}/&#x60;  Alternate route: &#x60;/v1/route/{origin}/{destination}/&#x60;   ---  This route is cached for up to 86400 seconds
  # @param destination destination solar system ID
  # @param origin origin solar system ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :avoid avoid solar system ID(s)
  # @option opts [Array<Array<Integer>>] :connections connected solar system pairs
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :flag route security preference
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<Integer>]
  describe 'set_route test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

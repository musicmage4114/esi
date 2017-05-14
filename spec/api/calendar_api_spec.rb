=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CalendarApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CalendarApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CalendarApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CalendarApi' do
    it 'should create an instact of CalendarApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CalendarApi)
    end
  end

  # unit tests for get_calendar
  # List calendar event summaries
  # Get 50 event summaries from the calendar. If no event ID is given, the resource will return the next 50 chronological event summaries from now. If an event ID is specified, it will return the next 50 chronological event summaries from after that event.   ---  Alternate route: &#x60;/v1/characters/{character_id}/calendar/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/calendar/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/calendar/&#x60;   ---  This route is cached for up to 5 seconds
  # @param character_id The character to retrieve events from
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Integer] :from_event The event ID to retrieve events from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<EventSummary>]
  describe 'get_calendar test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_event_by_id
  # Get an event
  # Get all the information for a specific event  ---  Alternate route: &#x60;/v3/characters/{character_id}/calendar/{event_id}/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/calendar/{event_id}/&#x60;   ---  This route is cached for up to 5 seconds
  # @param character_id The character id requesting the event
  # @param event_id The id of the event requested
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Event]
  describe 'get_event_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for respond_to_event
  # Respond to an event
  # Set your response status to an event  ---  Alternate route: &#x60;/v3/characters/{character_id}/calendar/{event_id}/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/calendar/{event_id}/&#x60; 
  # @param character_id The character ID requesting the event
  # @param event_id The ID of the event requested
  # @param response The response value to set, overriding current value.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'respond_to_event test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

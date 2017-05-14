=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::HomeStation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'HomeStation' do
  before do
    # run before each test
    @instance = SwaggerClient::HomeStation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HomeStation' do
    it 'should create an instact of HomeStation' do
      expect(@instance).to be_instance_of(SwaggerClient::HomeStation)
    end
  end
  describe 'test attribute "location_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "location_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["station", "structure"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.location_type = value }.not_to raise_error
       #end
    end
  end

end


=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::ChatChannelAllow
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChatChannelAllow' do
  before do
    # run before each test
    @instance = Esi::ChatChannelAllow.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChatChannelAllow' do
    it 'should create an instance of ChatChannelAllow' do
      expect(@instance).to be_instance_of(Esi::ChatChannelAllow)
    end
  end
  describe 'test attribute "accessor_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "accessor_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["character", "corporation", "alliance"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.accessor_type = value }.not_to raise_error
       #end
    end
  end

end


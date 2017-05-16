=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::IdSummary
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IdSummary' do
  before do
    # run before each test
    @instance = Esi::IdSummary.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdSummary' do
    it 'should create an instact of IdSummary' do
      expect(@instance).to be_instance_of(Esi::IdSummary)
    end
  end
  describe 'test attribute "category"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["alliance", "character", "constellation", "corporation", "inventory_type", "region", "solar_system", "station"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.category = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


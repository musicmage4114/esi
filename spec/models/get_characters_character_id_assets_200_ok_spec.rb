=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::CharacterAsset
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CharacterAsset' do
  before do
    # run before each test
    @instance = SwaggerClient::CharacterAsset.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CharacterAsset' do
    it 'should create an instact of CharacterAsset' do
      expect(@instance).to be_instance_of(SwaggerClient::CharacterAsset)
    end
  end
  describe 'test attribute "is_singleton"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "item_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "location_flag"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AutoFit", "Cargo", "CorpseBay", "DroneBay", "FleetHangar", "Deliveries", "HiddenModifiers", "Hangar", "HangarAll", "LoSlot0", "LoSlot1", "LoSlot2", "LoSlot3", "LoSlot4", "LoSlot5", "LoSlot6", "LoSlot7", "MedSlot0", "MedSlot1", "MedSlot2", "MedSlot3", "MedSlot4", "MedSlot5", "MedSlot6", "MedSlot7", "HiSlot0", "HiSlot1", "HiSlot2", "HiSlot3", "HiSlot4", "HiSlot5", "HiSlot6", "HiSlot7", "AssetSafety", "Locked", "Unlocked", "Implant", "QuafeBay", "RigSlot0", "RigSlot1", "RigSlot2", "RigSlot3", "RigSlot4", "RigSlot5", "RigSlot6", "RigSlot7", "ShipHangar", "SpecializedFuelBay", "SpecializedOreHold", "SpecializedGasHold", "SpecializedMineralHold", "SpecializedSalvageHold", "SpecializedShipHold", "SpecializedSmallShipHold", "SpecializedMediumShipHold", "SpecializedLargeShipHold", "SpecializedIndustrialShipHold", "SpecializedAmmoHold", "SpecializedCommandCenterHold", "SpecializedPlanetaryCommoditiesHold", "SpecializedMaterialBay", "SubSystemSlot0", "SubSystemSlot1", "SubSystemSlot2", "SubSystemSlot3", "SubSystemSlot4", "SubSystemSlot5", "SubSystemSlot6", "SubSystemSlot7", "FighterBay", "FighterTube0", "FighterTube1", "FighterTube2", "FighterTube3", "FighterTube4", "Module", "Wardrobe"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.location_flag = value }.not_to raise_error
       #end
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
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["station", "solar_system", "other"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.location_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "quantity"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


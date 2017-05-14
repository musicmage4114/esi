=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::CharacterChatChannelsMuted
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CharacterChatChannelsMuted' do
  before do
    # run before each test
    @instance = SwaggerClient::CharacterChatChannelsMuted.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CharacterChatChannelsMuted' do
    it 'should create an instact of CharacterChatChannelsMuted' do
      expect(@instance).to be_instance_of(SwaggerClient::CharacterChatChannelsMuted)
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

  describe 'test attribute "end_at"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


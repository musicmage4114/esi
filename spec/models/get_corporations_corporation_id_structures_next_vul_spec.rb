=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::NextVulnerability
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NextVulnerability' do
  before do
    # run before each test
    @instance = Esi::NextVulnerability.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NextVulnerability' do
    it 'should create an instact of NextVulnerability' do
      expect(@instance).to be_instance_of(Esi::NextVulnerability)
    end
  end
  describe 'test attribute "day"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "hour"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


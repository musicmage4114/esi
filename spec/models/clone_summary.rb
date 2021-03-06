=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::CloneSummary
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CloneSummary' do
  before do
    # run before each test
    @instance = Esi::CloneSummary.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CloneSummary' do
    it 'should create an instance of CloneSummary' do
      expect(@instance).to be_instance_of(Esi::CloneSummary)
    end
  end
  describe 'test attribute "home_location"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "jump_clones"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "last_jump_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


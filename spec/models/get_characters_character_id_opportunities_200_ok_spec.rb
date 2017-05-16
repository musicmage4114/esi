=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::CompletedOpportunity
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CompletedOpportunity' do
  before do
    # run before each test
    @instance = Esi::CompletedOpportunity.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompletedOpportunity' do
    it 'should create an instact of CompletedOpportunity' do
      expect(@instance).to be_instance_of(Esi::CompletedOpportunity)
    end
  end
  describe 'test attribute "completed_at"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "task_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


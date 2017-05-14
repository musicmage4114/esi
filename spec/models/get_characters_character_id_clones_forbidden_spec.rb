=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::GetClonesForbidden
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetClonesForbidden' do
  before do
    # run before each test
    @instance = SwaggerClient::GetClonesForbidden.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetClonesForbidden' do
    it 'should create an instact of GetClonesForbidden' do
      expect(@instance).to be_instance_of(SwaggerClient::GetClonesForbidden)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


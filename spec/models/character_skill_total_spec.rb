=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Esi::CharacterSkillTotal
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CharacterSkillTotal' do
  before do
    # run before each test
    @instance = Esi::CharacterSkillTotal.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CharacterSkillTotal' do
    it 'should create an instance of CharacterSkillTotal' do
      expect(@instance).to be_instance_of(Esi::CharacterSkillTotal)
    end
  end
  describe 'test attribute "skills"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_sp"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


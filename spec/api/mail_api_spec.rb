=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for Esi::MailApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MailApi' do
  before do
    # run before each test
    @instance = Esi::MailApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MailApi' do
    it 'should create an instance of MailApi' do
      expect(@instance).to be_instance_of(Esi::MailApi)
    end
  end

  # unit tests for delete_mail_label
  # Delete a mail label
  # Delete a mail label  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/labels/{label_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/labels/{label_id}/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/labels/{label_id}/&#x60; 
  # @param character_id An EVE character ID
  # @param label_id An EVE label id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_mail_label test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_mail
  # Delete a mail
  # Delete a mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/{mail_id}/&#x60; 
  # @param character_id An EVE character ID
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'delete_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_mail
  # Return mail headers
  # Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/&#x60;   ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [Array<Integer>] :labels Fetch only mails that match one or more of the given labels
  # @option opts [Integer] :last_mail_id List only mail with an ID lower than the given ID, if present
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<EvemailHeader>]
  describe 'get_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_mail_labels
  # Get mail labels and unread counts
  # Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  Alternate route: &#x60;/v3/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/labels/&#x60;   ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [MailLabel]
  describe 'get_mail_labels test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_mailing_lists
  # Return mailing list subscriptions
  # Return all mailing lists that the character is subscribed to   ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/lists/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/lists/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/lists/&#x60;   ---  This route is cached for up to 120 seconds
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Array<MailingList>]
  describe 'get_mailing_lists test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read_mail
  # Return a mail
  # Return the contents of an EVE mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/{mail_id}/&#x60;   ---  This route is cached for up to 30 seconds
  # @param character_id An EVE character ID
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Evemail]
  describe 'read_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_mail
  # Send a new mail
  # Create and send a new mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/&#x60; 
  # @param character_id The sender&#39;s character ID
  # @param mail The mail to send
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Integer]
  describe 'send_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_mail_label
  # Create a mail label
  # Create a mail label  ---  Alternate route: &#x60;/v2/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/labels/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/labels/&#x60; 
  # @param character_id An EVE character ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [NewMailLabel] :label Label to create
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [Integer]
  describe 'add_mail_label test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_mail
  # Update metadata about a mail
  # Update metadata about a mail  ---  Alternate route: &#x60;/v1/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/legacy/characters/{character_id}/mail/{mail_id}/&#x60;  Alternate route: &#x60;/latest/characters/{character_id}/mail/{mail_id}/&#x60; 
  # @param character_id An EVE character ID
  # @param contents Data used to update the mail
  # @param mail_id An EVE mail ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :datasource The server name you would like data from
  # @option opts [String] :token Access token to use, if preferred over a header
  # @option opts [String] :user_agent Client identifier, takes precedence over headers
  # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
  # @return [nil]
  describe 'update_mail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

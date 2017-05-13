=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.4.5

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class DogmaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get attributes
    # Get a list of dogma attribute ids  ---  Alternate route: `/v1/dogma/attributes/`  Alternate route: `/legacy/dogma/attributes/`  Alternate route: `/latest/dogma/attributes/`   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_dogma_attributes(opts = {})
      data, _status_code, _headers = get_dogma_attributes_with_http_info(opts)
      return data
    end

    # Get attributes
    # Get a list of dogma attribute ids  ---  Alternate route: &#x60;/v1/dogma/attributes/&#x60;  Alternate route: &#x60;/legacy/dogma/attributes/&#x60;  Alternate route: &#x60;/latest/dogma/attributes/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_dogma_attributes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_attributes ..."
      end
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/dogma/attributes/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get attribute information
    # Get information on a dogma attribute  ---  Alternate route: `/v1/dogma/attributes/{attribute_id}/`  Alternate route: `/legacy/dogma/attributes/{attribute_id}/`  Alternate route: `/latest/dogma/attributes/{attribute_id}/`   ---  This route is cached for up to 3600 seconds
    # @param attribute_id A dogma attribute ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetDogmaAttributesAttributeIdOk]
    def get_dogma_attribute_by_id(attribute_id, opts = {})
      data, _status_code, _headers = get_dogma_attribute_by_id_with_http_info(attribute_id, opts)
      return data
    end

    # Get attribute information
    # Get information on a dogma attribute  ---  Alternate route: &#x60;/v1/dogma/attributes/{attribute_id}/&#x60;  Alternate route: &#x60;/legacy/dogma/attributes/{attribute_id}/&#x60;  Alternate route: &#x60;/latest/dogma/attributes/{attribute_id}/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param attribute_id A dogma attribute ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetDogmaAttributesAttributeIdOk, Fixnum, Hash)>] GetDogmaAttributesAttributeIdOk data, response status code and response headers
    def get_dogma_attribute_by_id_with_http_info(attribute_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_attribute_by_id ..."
      end
      # verify the required parameter 'attribute_id' is set
      fail ArgumentError, "Missing the required parameter 'attribute_id' when calling DogmaApi.get_dogma_attribute_by_id" if attribute_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/dogma/attributes/{attribute_id}/".sub('{format}','json').sub('{' + 'attribute_id' + '}', attribute_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetDogmaAttributesAttributeIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_attribute_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get effects
    # Get a list of dogma effect ids  ---  Alternate route: `/v1/dogma/effects/`  Alternate route: `/legacy/dogma/effects/`  Alternate route: `/latest/dogma/effects/`   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<Integer>]
    def get_dogma_effects(opts = {})
      data, _status_code, _headers = get_dogma_effects_with_http_info(opts)
      return data
    end

    # Get effects
    # Get a list of dogma effect ids  ---  Alternate route: &#x60;/v1/dogma/effects/&#x60;  Alternate route: &#x60;/legacy/dogma/effects/&#x60;  Alternate route: &#x60;/latest/dogma/effects/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(Array<Integer>, Fixnum, Hash)>] Array<Integer> data, response status code and response headers
    def get_dogma_effects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_effects ..."
      end
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/dogma/effects/".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Integer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_effects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get effect information
    # Get information on a dogma effect  ---  Alternate route: `/v1/dogma/effects/{effect_id}/`  Alternate route: `/legacy/dogma/effects/{effect_id}/`  Alternate route: `/latest/dogma/effects/{effect_id}/`   ---  This route is cached for up to 3600 seconds
    # @param effect_id A dogma effect ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from (default to tranquility)
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [GetDogmaEffectsEffectIdOk]
    def get_dogma_effect_by_id(effect_id, opts = {})
      data, _status_code, _headers = get_dogma_effect_by_id_with_http_info(effect_id, opts)
      return data
    end

    # Get effect information
    # Get information on a dogma effect  ---  Alternate route: &#x60;/v1/dogma/effects/{effect_id}/&#x60;  Alternate route: &#x60;/legacy/dogma/effects/{effect_id}/&#x60;  Alternate route: &#x60;/latest/dogma/effects/{effect_id}/&#x60;   ---  This route is cached for up to 3600 seconds
    # @param effect_id A dogma effect ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :datasource The server name you would like data from
    # @option opts [String] :user_agent Client identifier, takes precedence over headers
    # @option opts [String] :x_user_agent Client identifier, takes precedence over User-Agent
    # @return [Array<(GetDogmaEffectsEffectIdOk, Fixnum, Hash)>] GetDogmaEffectsEffectIdOk data, response status code and response headers
    def get_dogma_effect_by_id_with_http_info(effect_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DogmaApi.get_dogma_effect_by_id ..."
      end
      # verify the required parameter 'effect_id' is set
      fail ArgumentError, "Missing the required parameter 'effect_id' when calling DogmaApi.get_dogma_effect_by_id" if effect_id.nil?
      if opts[:'datasource'] && !['tranquility', 'singularity'].include?(opts[:'datasource'])
        fail ArgumentError, 'invalid value for "datasource", must be one of tranquility, singularity'
      end
      # resource path
      local_var_path = "/dogma/effects/{effect_id}/".sub('{format}','json').sub('{' + 'effect_id' + '}', effect_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'datasource'] = opts[:'datasource'] if !opts[:'datasource'].nil?
      query_params[:'user_agent'] = opts[:'user_agent'] if !opts[:'user_agent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-User-Agent'] = opts[:'x_user_agent'] if !opts[:'x_user_agent'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetDogmaEffectsEffectIdOk')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DogmaApi#get_dogma_effect_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

# frozen_string_literal: true

module Allegro
  module WebApi
    module Search
      def search_query(search_string, options = {})
        message = { session_handle: @web_api_client.session_handle, search_query: { search_string: search_string }.merge(options) }
        @web_api_client.call(:do_search, message: message).body
      end
    end
  end
end

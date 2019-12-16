# frozen_string_literal: true

module Allegro
  module WebApi
    module Account
      def do_get_favourite_categories
        message = { session_handle: @web_api_client.session_handle }
        @web_api_client
          .call(:do_get_favourite_categories, message: message)
          .body[:do_get_favourite_categories_response][:s_favourite_categories_list]
      end

      def do_get_favourite_sellers
        message = { session_handle: @web_api_client.session_handle }
        @web_api_client
          .call(:do_get_favourite_sellers, message: message)
          .body[:do_get_favourite_sellers_response][:s_favourite_sellers_list]
      end

      def do_get_my_bid_items(sort_type = 0, sort_order = 0, search_value = '', category_id = 0, item_ids = [], page_size = 0, page_number = 0)
        message = {
          session_id: @web_api_client.session_handle,
          sort_options: { sort_type: sort_type, sort_order: sort_order },
          search_value: search_value,
          category_id: category_id,
          item_ids: item_ids,
          page_size: page_size,
          page_number: page_number
        }

        @web_api_client
          .call(:do_get_my_bid_items, message: message)
          .body[:do_get_my_bid_items_response]
        # .body[:do_get_my_bid_items_response][:bid_items_counter]
        # .body[:do_get_my_bid_items_response][:bid_items_list]
      end

      def do_get_my_future_items(sort_type = 0, sort_order = 0, filter_format = 0, category_id = 0, item_ids = [], page_size = 0, page_number = 0)
        message = {
          session_id: @web_api_client.session_handle,
          sort_options: { sort_type: sort_type, sort_order: sort_order },
          filterOptions: { filter_format: filter_format },
          category_id: category_id,
          item_ids: item_ids,
          page_size: page_size,
          page_number: page_number
        }

        @web_api_client
          .call(:do_get_my_future_items, message: message)
          .body[:do_get_my_future_items_response]
        # .body[:do_get_my_future_items_response][:future_items_counter]
        # .body[:do_get_my_future_items_response][:future_items_list]
      end

      def do_get_my_not_sold_items(sort_type = 0, sort_order = 0, filter_format = 0, filter_from_end = 0, filter_auto_listing = 0, filter_price_from = 0, filter_price_to = 0, _search_value = '', category_id = 0, item_ids = [], page_size = 0, page_number = 0)
        message = {
          session_id: @web_api_client.session_handle,
          sort_options: { sort_type: sort_type, sort_order: sort_order },
          filterOptions: {
            filter_format: filter_format,
            filter_from_end: filter_from_end,
            filter_auto_listing: filter_auto_listing,
            filter_price: {
              filter_price_from: filter_price_from,
              filter_price_to: filter_price_to
            }
          },
          category_id: category_id,
          item_ids: item_ids,
          page_size: page_size,
          page_number: page_number
        }

        @web_api_client
          .call(:do_get_my_not_sold_items, message: message)
          .body[:do_get_my_not_sold_items_response]
        # .body[:do_get_my_not_sold_items_response][:not_sold_items_counter]
        # .body[:do_get_my_not_sold_items_response][:not_sold_items_list]
      end
    end
  end
end

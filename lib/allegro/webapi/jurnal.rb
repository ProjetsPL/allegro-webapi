# frozen_string_literal: true

module Allegro
  module WebApi
    module Jurnal
      def do_get_site_journal(starting_point = 0, info_type = 0)
        message = { session_handle: @api_client.session_handle, starting_point: starting_point, info_type: info_type }
        @api_client
          .call(:do_get_site_journal, message: message)
          .body[:do_get_site_journal_response][:site_journal_array]
      end

      def do_get_site_journal_deals(journal_start = 0)
        message = { session_id: @api_client.session_handle, journal_start: journal_start }
        @api_client
          .call(:do_get_site_journal_deals, message: message)
          .body[:do_get_site_journal_deals_response][:site_journal_deals]
      end

      def do_get_site_journal_deals_info(journal_start = 0)
        message = { session_id: @api_client.session_handle, journal_start: journal_start }
        @api_client
          .call(:do_get_site_journal_deals_info, message: message)
          .body[:do_get_site_journal_deals_info_response][:site_journal_deals_info]
      end

      def do_get_site_journal_info(starting_point = 0, info_type = 0)
        message = { session_handle: @api_client.session_handle, starting_point: starting_point, info_type: info_type }
        @api_client
          .call(:do_get_site_journal_info, message: message)
          .body[:do_get_site_journal_info_response][:site_journal_info]
      end
    end
  end
end

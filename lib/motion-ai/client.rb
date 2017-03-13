require 'faraday'
require 'faraday_middleware'
require 'uri'
require 'pp'

module MotionAI
  class Client
    API_ENDPOINT = 'https://api.motion.ai/1.0'
    MESSAGE_BOT_API_PATH = '/messageBot'

    def initialize(api_key, bot_id)
      @api_key = api_key
      @bot_id = bot_id
      @http = Faraday.new(url: API_ENDPOINT) do |conn|
        conn.response :json, content_type: /\bjson$/
        conn.adapter Faraday.default_adapter
      end
    end

    def message_bot(params = {})
      params[:key] = @api_key
      params[:bot] = @bot_id

      required = [:bot, :msg, :session, :key]
      required.each do |param|
        unless params.key? param
          raise "Required param #{param} not present"
        end
      end

      @http.get URI.join(API_ENDPOINT, MESSAGE_BOT_API_PATH), params
    end
  end
end

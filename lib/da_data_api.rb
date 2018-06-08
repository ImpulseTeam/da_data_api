class DaDataAPI
    require 'rest-client'
    
    def initialize(options = {})
      @base_url = 'https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/address'
      @token = options[:token]
    end
  
    CONTENT_TYPES = [
      :region, # Регион
      :area, # Район
      :city, # Город
      :settlement, # Населенный пункт
      :street, # Улица
      :house, # Дом
    ]
  
    def find(query, params = {})
      payload = {
        query: query,
        from_bound: {
          value: params[:from_bound]
        },
        to_bound: {
          value: params[:to_bound]
        }
      }
  
      response = ::RestClient.post(
        @base_url,
        payload.to_json,
        {
          content_type: :json,
          accept: :json,
          authorization: "Token #{@token}"
        }
      )
      parse_results(response.body)
    end
  
    def search_context
      @search_context
    end
  
    def result
      @result
    end
  
    private
  
    def parse_results(body)
      body_content = JSON.parse(body)
      @result = body_content['suggestions']&.map do |entry|
        ::DaDataAPI::Result.new(entry)
      end || []
    end
  end
  
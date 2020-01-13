require 'faraday'
class DarkskyService
  def initialize(lat_long)
    @lat_long = lat_long
  end

  def get_forcast
    get_json
  end

  private

    def connection
      Faraday.new("https://api.darksky.net/forecast/#{ENV['DARKSKY_KEY']}") do |faraday|
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json
      response = connection.get(@lat_long)
      JSON.parse(response.body, symbolize_names: true)
    end
end

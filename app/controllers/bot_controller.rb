class BotController < ApplicationController
  def index
    response = Faraday.get("https://poloniex.com/public?command=returnTicker")
    raw_data = JSON.parse(response.body, symbolize_names: true)
    @data = raw_data.map do |raw|
      Finance.new(raw)
    end
  end
end

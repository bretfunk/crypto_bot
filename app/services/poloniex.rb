class Poloniex

  def self.return_ticker
    new.return_ticker
  end

  def return_ticker
    url = "https://poloniex.com/public?command=returnTicker"
    faraday(url)
  end

  def faraday(url)
    parse(Faraday.get(url))
  end

  def parse(response)
  JSON.parse(response.body, symbolize_names: true)
  end
end

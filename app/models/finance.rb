class Finance
  attr_reader :currency, :id, :last, :lowest_ask, :highest_bid, :percent_change,
    :base_volume, :quote_volume, :is_frozen, :high_24_hr, :low_24_hr
  def initialize(attrs)
    @currency = attrs.first
    @id = attrs.last[:id]
    @last = attrs.last[:last]
    @lowest_ask = attrs.last[:lowestAsk]
    @highest_bid = attrs.last[:highestBid]
    @percent_change = attrs.last[:percentChange]
    @base_volume = attrs.last[:baseVolume]
    @quote_volume = attrs.last[:quoteVolume]
    @is_frozen = attrs.last[:isFrozen]
    @high_24_hr = attrs.last[:high24hr]
    @low_24_hr = attrs.last[:low24hr]

  end
end

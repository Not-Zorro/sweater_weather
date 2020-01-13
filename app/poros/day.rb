class Day
  def self.info(day_info)
    {
      summary: day_info[:summary],
      precipitation_prob: day_info[:precipProbability],
      precipitation_type: day_info[:precipType],
      high: day_info[:temperatureHigh],
      low: day_info[:temperatureLow],
      day: Time.at(day_info[:time]).strftime('%A')
    }
  end
end

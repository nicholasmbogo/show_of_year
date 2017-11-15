class AwardShow

  attr_reader :year, :nominees

  def initialize(year)
    @year = year
    @nominees = []
  end

  def add_nominee(nominee)
    @nominees << nominee
  end

  def nominated_movie
    @nominees.map do |nominee|
      nominee.movie
    end
  end

  def nominees_total_net_worth
    @nominees.reduce(0) do |sum, nominee|
      sum += nominee.actor.net_worth
    end
  end

  def nominees_alphabetical_last_names
    @nominee.map do |nominee|
      nominee.actor.name.split[-1]
    end.sort
  end
end

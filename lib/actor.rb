class Actor

  attr_reader :name, :birth_year, :net_worth

  def initialize(name, birth_year, net_worth)
    @name = name
    @birth_year = birth_year
    @net_worth = net_worth.to_i
  end
end

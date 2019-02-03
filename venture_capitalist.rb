class VentureCapitalist

  attr_accessor :name, :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |venture_capitalist|
      venture_capitalist.total_worth > 1000000000
    end
  end

  def offer_contract(startup, investment_type, investment)
    FundingRound.new(startup, self, investment_type, investment)
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.venture_capitalist == self
    end
  end

  def portfolio
    self.funding_rounds.map do |funding_round|
      funding_round.startup
    end.uniq
  end

  def biggest_investment
    biggest_inv = 0
    self.funding_rounds.each do |funding_round|
      biggest_inv = funding_round.investment if biggest_inv < funding_round.investment
    end
    biggest_inv
  end

  def invested(domain)
    total = 0
    list = Startup.all.select do |start_up|
      start_up.domain == domain
    end
    self.funding_rounds.each do |funding_round|
      total += funding_round.investment if list.include?(funding_round.startup)
    end
    total
  end

end

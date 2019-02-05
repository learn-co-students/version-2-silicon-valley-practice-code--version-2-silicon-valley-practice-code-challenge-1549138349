class VentureCapitalist

  attr_accessor :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth

    @@all << self
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def funding_rounds
    FundingRound.all.select do |round|
      round.venture_capitalist == self
    end
  end

  def portfolio
    self.funding_rounds.map do |round|
        round.startup
    end
  end

  def biggest_investment
    self.funding_rounds.sort_by do |round|
      round.investment
    end[-1]
  end

  def invested(domain)
    total = 0
    self.funding_rounds.each do |round|
      if round.startup.domain == domain
        total += round.investment
      end
    end
    total
  end

  #########Class Methods############

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select do |vc|
      vc.total_worth > 1000000000
    end
  end
end

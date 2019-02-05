class Startup

  attr_accessor :name
  attr_reader :founder, :domain

  @@all = []

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(name)
    @domain = name
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  def funding_rounds
    count = 0
    FundingRound.all.each do |round|
      if round.startup == self
        count += 1
      end
    end
    count
  end

  def total_funds
    total = 0
    FundingRound.all.each do |round|
      if round.startup == self
        total += round.investment
      end
    end
    total
  end

  def investors
    array = FundingRound.all.map do |round|
      if round.startup == self
        round.venture_capitalist
      end
    end
    array.uniq.compact
  end

  def big_investors
    self.investors.select do |investor|
      VentureCapitalist.tres_commas_club.include?(investor)
    end
  end


#########Class Methods############

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    @@all.find do |startup|
      startup.founder == founder_name
    end
  end

  def self.domains
    self.all.map do |startup|
      startup.domain
    end
  end

end

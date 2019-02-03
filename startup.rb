class Startup

  attr_reader :founders_name, :domain
  attr_accessor :name

  @@all = []

  def initialize(name, founders_name, domain)
    @name = name
    @founders_name = founders_name
    @domain = domain
    @@all << self
  end

  def pivot(domain, name)
    startup_domain_list = @@all.select do |startup|
      startup.domain == domain
    end
    startup_domain_list.map do |list|
      list.name = name
    end
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founders_name)
    self.all.find do |startup|
      startup.founders_name == founders_name
    end
  end

  def self.domains
    self.all.map do |startup|
      startup.domain
    end
  end

  def sign_contract(venture_capitalist, investment_type, investment)
    FundingRound.new(self, venture_capitalist, investment_type, investment)
  end

  def funding_rounds
    FundingRound.all.select do |funding_round|
      funding_round.startup == self
    end
  end

  def num_funding_rounds
    funding_rounds.size
  end

  def total_funds
    total = 0
    self.funding_rounds.each do |funding_round|
      total += funding_round.investment
    end
    total
  end

  def investors
    self.funding_rounds.map do |funding_round|
      funding_round.venture_capitalist
    end.uniq
  end

  def big_investors
    big_investors_array = []
    self.funding_rounds.each do |funding_round|
      big_investors_array << funding_round.venture_capitalist if VentureCapitalist.tres_commas_club.include?(funding_round.venture_capitalist)
    end
    big_investors_array
  end


end

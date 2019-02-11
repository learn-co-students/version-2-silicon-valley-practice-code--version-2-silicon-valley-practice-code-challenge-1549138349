class Startup < ActiveRecord::Base
  has_many :funding_rounds
  has_many :venture_capitalist, through: :funding_rounds
end

# class Startup
#
#   @@all = []
#
#   attr_reader :name, :founder, :domain
#
#   def initialize(name, founder, domain)
#     @name = name
#     @founder = founder
#     @domain = domain
#     @@all << self
#
#   end
#
#   def pivot(domain, name)
#     @domain = domain
#     @name = name
#   end
#
#   def self.all
#     @@all
#   end
#
#   def self.find_by_founder(founder)
#     @@all.find do |startup|
#       startup.founder == founder
#     end
#   end
#
#   def self.domains
#     @@all.map do |startup|
#       startup.domain
#     end
#   end
#
#   def sign_contract(venture_capitalist, type, investment)
#     FundingRound.new(self, venture_capitalist, type, investment)
#   end
#
#   def num_funding_rounds
#     FundingRound.all.select do |rounds|
#       rounds.startup == self
#     end.length
#   end
#
#   def total_funds
#     total = 0
#     FundingRound.all.select do |rounds|
#       if rounds.startup == self
#         total += rounds.investment
#       end
#     end
#     total
#   end
#
#   def investors
#     FundingRound.all.map do |rounds|
#       if rounds.startup == self
#         rounds.venture_capitalist
#       end
#     end.compact.uniq
#   end
#
#   def big_investors
#     FundingRound.all.map do |rounds|
#       if rounds.startup == self && rounds.venture_capitalist.total_worth > 1000000000
#         rounds.venture_capitalist
#       end
#     end.compact.uniq
#   end
# end

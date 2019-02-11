class VentureCapitalist < ActiveRecord::Base
  has_many :funding_rounds
  has_many :startups, through: :funding_rounds
end

# class VentureCapitalist
#
#   @@all = []
#
#   attr_accessor :name, :total_worth
#
#   def initialize(name, total_worth)
#     @name = name
#     @total_worth = total_worth
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def self.tres_commas_club
#     @@all.select do |vcap|
#       if vcap.total_worth > 1000000000
#         vcap
#       end
#     end
#   end
#
#   def offer_contract(startup, type, investment)
#     FundingRound.new(startup, self, type, investment)
#   end
#
#   def funding_rounds
#     FundingRound.all.select do |rounds|
#       rounds.venture_capitalist == self
#     end.length
#   end
#
#   def portfolio
#     FundingRound.all.map do |rounds|
#       if rounds.venture_capitalist == self
#         rounds.startup
#       end
#     end.compact.uniq
#   end
#
#   def biggest_investment
#     largest_round = 0
#     return_round = nil
#     FundingRound.all.map do |rounds|
#       if rounds.venture_capitalist == self && rounds.investment > largest_round
#         largest_round = rounds.investment
#         return_round = rounds
#       end
#     end
#     return_round
#   end
#
#   def invested(domain)
#     total = 0
#     FundingRound.all.select do |round|
#       round.venture_capitalist == self
#     end.select do |round|
#     #  binding.pry
#       round.startup.domain == domain
#     end.each do |round|
#       total += round.investment
#     end
#     total
#   end
# end

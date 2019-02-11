class FundingRound < ActiveRecord::Base
  belongs_to :venture_capitalists
  belongs_to :startups
end

# class FundingRound
#
#   @@all = []
#
#   attr_accessor :type, :investment
#   attr_reader :startup, :venture_capitalist
#
#   def initialize(startup, venture_capitalist, type, investment)
#     @startup = startup
#     @venture_capitalist = venture_capitalist
#     @type = type
#     @investment = investment
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
# end

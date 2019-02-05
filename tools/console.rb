require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###startup###

startup1 = Startup.new("good stuff", "jay", "fashion")
startup2 = Startup.new("bad stuff", "ray", "fashion")
startup3 = Startup.new("hightech stuff", "kay", "tech")
startup4 = Startup.new("weird stuff", "zay", "entertainment")
startup5 = Startup.new("average stuff", "shay", "teeth")
startup6 = Startup.new("great stuff", "larry", "food")
startup7 = Startup.new("boring stuff", "claudette", "knitting")
startup8 = Startup.new("wet stuff", "roy", "surfing")
startup9 = Startup.new("hot stuff", "harry", "spicy food")

###VCapitalist###
vc1 = VentureCapitalist.new("matt", 5000000000)
vc2 = VentureCapitalist.new("mike", 10000000)
vc3 = VentureCapitalist.new("ethan", 200000)
vc4 = VentureCapitalist.new("farhan", 5000000000)
vc5 = VentureCapitalist.new("nate", 9000000)
vc6 = VentureCapitalist.new("brianna", 300000000)
vc7 = VentureCapitalist.new("dana", 15000000000)
vc8 = VentureCapitalist.new("cynthia", 1000000)
vc9 = VentureCapitalist.new("robert", 5555555)
vc10 = VentureCapitalist.new("josh", 8000000)

###FR###
fr1 = FundingRound.new(startup1, vc9, "Angel", 1000000.00)
fr2 = FundingRound.new(startup3, vc1, "Series A", 3000000.00)
fr3 = FundingRound.new(startup5, vc10, "Pre-Seed", 1500000.00)
fr4 = FundingRound.new(startup6, vc2, "Series A", 1000000.00)
fr5 = FundingRound.new(startup2, vc6, "Series C", 1000000.00)
fr6 = FundingRound.new(startup1, vc5, "Angel", 2000000.00)
fr7 = FundingRound.new(startup4, vc3, "Series B", 1000000.00)
fr8 = FundingRound.new(startup9, vc1, "Angel", 500000.00)
fr9 = FundingRound.new(startup8, vc7, "Series B", 1550000.00)
fr10 = FundingRound.new(startup8, vc6, "Series B", 1550000.00)
fr11 = FundingRound.new(startup8, vc7, "Series B", 1550000.00)
fr12 = FundingRound.new(startup8, vc3, "Series B", 1550000.00)
fr13 = FundingRound.new(startup3, vc1, "Series A", 3000000.00)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line

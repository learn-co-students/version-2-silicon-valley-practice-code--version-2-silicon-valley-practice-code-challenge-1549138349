require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Startup
spacex = Startup.new("spacex", "elon", "private space exploration")
tesla = Startup.new("tesla", "elon", "electric car")
apple = Startup.new("apple", "jobs", "consumer tech")
microsoft = Startup.new("microsoft", "bill", "pc")
samsung = Startup.new("samsung", "idk", "smartphones")
flatiron = Startup.new("flatiron", "avi", "learning")

#VentureCapitalist
vc1 = VentureCapitalist.new("bob", 1000000)
vc2 = VentureCapitalist.new("stark", 100000000000000000)
vc3 = VentureCapitalist.new("pat", 100000000)
vc4 = VentureCapitalist.new("matt", 100000000000)
vc5 = VentureCapitalist.new("tim", 100000)
vc6 = VentureCapitalist.new("john", 1000000000)

#FundingRound
fr1 = FundingRound.new(spacex, vc2, "Angel", 100000000)
fr2 = FundingRound.new(microsoft, vc1, "Pre-Seed", 1000000)
fr3 = FundingRound.new(apple, vc2, "Angel", 977777770000)
fr4 = FundingRound.new(samsung, vc4, "Series C", 100000)
fr5 = FundingRound.new(flatiron, vc5, "Angel", 100)
fr6 = FundingRound.new(tesla, vc3, "Seed", 1000000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

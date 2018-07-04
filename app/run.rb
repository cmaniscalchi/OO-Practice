require_relative './models/gym.rb'
require_relative './models/lifter.rb'
require_relative './models/membership.rb'
require 'pry'

golds = Gym.new("Gold's")
harbor_fitness = Gym.new("Harbor Fitness")
crunch = Gym.new("Crunch")

louise = Lifter.new("Louise", 10)
tina = Lifter.new("Tina", 20)
gene = Lifter.new("Gene", 15)

Membership.new(50, louise, harbor_fitness)
Membership.new(55, gene, golds)
Membership.new(60, gene, crunch)
Membership.new(70, tina, harbor_fitness)
Membership.new(75, tina, golds)
Membership.new(65, tina, crunch)

binding.pry
true

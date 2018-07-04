require "pry"

class Membership

  @@all = []

  attr_accessor :lifter, :gym
  attr_reader :cost

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end

end

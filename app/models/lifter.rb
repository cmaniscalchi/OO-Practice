require "pry"

class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships_of_a_lifter
    Membership.all.select do |member_info|
      member_info.lifter == self
    end
  end

  def all_gyms_a_lifter_belongs_to
    all_memberships_of_a_lifter.map do |member_info|
      member_info.gym
    end
  end

  def one_lifters_membership_costs
    total = 0
    all_memberships_of_a_lifter.map do |member_info|
      total += member_info.cost
    end
    total
  end

  def average_lift_total
    total_lifted = 0
    @@all.map do |lifter_info|
      total_lifted += lifter_info.lift_total
    end
    average_lift = total_lifted / Lifter.all.length
    average_lift
  end

  def sign_up_a_lifter
    bob = Lifter.new("Bob", 25)
    new_membership = Membership.new(75, bob, harbor_fitness)
    new_membership
  end
end

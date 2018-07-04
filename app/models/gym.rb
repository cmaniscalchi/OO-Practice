require "pry"

class Gym

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_gym_memberships
    Membership.all.select do |member_info|
      member_info.gym == self
    end
  end

  def lifters_with_gym_memberships
    all_gym_memberships.map do |member_info|
      member_info.lifter
    end
  end

  def name_of_all_lifters_with_gym_memberships
    lifters_with_gym_memberships.map do |member_info|
      member_info.name
    end
  end

  def combined_lift_total_of_a_gyms_membership
    total_lifted = 0
    lifters_with_gym_memberships.map do |lifter_info|
      total_lifted += lifter_info.lift_total
    end
    total_lifted
  end

end

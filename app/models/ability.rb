# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.patient?
      can :read, Patient
      can :index, Patient
      can :update,Patient
    end

    if user.doctor?
      can :read,Doctor do |doctor|
        doctor.user == user
      end

      can :update, Doctor do |doctor|
        doctor.user == user
      end
    end
  end
end

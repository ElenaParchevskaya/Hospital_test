# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.patient?
      can :read, Patient do |patient|
        patient.user == user
      end
      
      can :update, Patient do |patient|
        patient.user == user
      end
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

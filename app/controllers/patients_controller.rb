class PatientsController < ApplicationController
  before_action :set_patient, only: %i[  profile]

  def create
    @patient = Patient.new(user_id: current_user)
  end

  def profile
    unless @patient.patient?
      redirect_to root_path
    end
  end

  def set_patient
    @patient = User.find(current_user.id)
  end

  def patient_params; end

end

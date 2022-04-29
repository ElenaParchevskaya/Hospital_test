class PatientsController < ApplicationController
  before_action :set_patient, only: %i[profile]

  def create; end

  def profile
    authorize! :read, @patient
  end

  def set_patient
    @patient = Patient.find_by(user_id:current_user.id)
  end
end

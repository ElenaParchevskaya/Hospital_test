class PatientsController < ApplicationController
  before_action :set_patient, only: %i[profile]

  def create; end

  def profile
    authorize! :read, @patient
  end

  def set_patient
    @user = current_user
    @patient = Patient.joins(:user).where(patients:{user_id:@user.id})[0]
  end
end

class PatientsController < ApplicationController
  before_action :set_patient, only: %i[  profile]

  def create; end

  def profile
    @appointment = Appointment.new
    authorize! :read, @patient
  end

  def set_patient
    @patient = Patient.find_by(user_id:current_user.id)
  end

  def appointment_params
    params.require(:appointment).permit(:doctor_id)
  end
end

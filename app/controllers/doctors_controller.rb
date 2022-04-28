class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[profile]

  def index; end

  def profile
    @appointments = @doctor.appointments
    authorize! :read, @doctor
  end

  def create
    @doctor = Doctor.new(:current_user)
  end

  def set_doctor
    @doctor = Doctor.find_by(user_id: current_user.id)
  end
end

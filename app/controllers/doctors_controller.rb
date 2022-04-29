class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[profile]

  def profile
    authorize! :read, @doctor
    @appointments = User.joins(:patient).where(users:{patients:@doctor.patient_ids})
  end

  def set_doctor
    @user = current_user
    @doctor = Doctor.joins(:user).where(doctors:{user_id:@user.id})[0]
  end
end

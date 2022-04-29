class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[profile]

  def profile
    @appointments = User.joins(:patient).where(users:{patients:@doctor.patients.ids})
    authorize! :read, @doctor
  end

  def set_doctor
    @user = current_user
    @doctor = Doctor.joins(:user).where(doctors:{user_id:@user.id})[0]
  end
end

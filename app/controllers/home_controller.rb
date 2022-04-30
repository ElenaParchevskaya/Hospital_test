class HomeController < ApplicationController
  before_action :set_user, only: %i[index]

  def index; end

  def create; end

  def set_user
    @user = current_user
    if @user
      @patient = Patient.joins(:user).where(patients: { user_id: @user.id })[0]
      @doctor = Doctor.joins(:user).where(doctors: { user_id: @user.id })[0]
    end
  end
end

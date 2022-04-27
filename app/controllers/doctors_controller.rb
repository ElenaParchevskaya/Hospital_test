class DoctorsController < ApplicationController
  def create
    @doctor = Doctor.new(:current_user)
  end

  def index; end

  def profile; end

end

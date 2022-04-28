class AppointmentsController < ApplicationController
  def create
    puts(params)
    Appointment.create!(patient_id:Patient.find_by(user_id:current_user.id).id,doctor_id:params[:doctor_id])
  end
end 

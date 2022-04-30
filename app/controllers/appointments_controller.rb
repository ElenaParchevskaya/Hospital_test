class AppointmentsController < ApplicationController
  def create
    @messages = ''
    @appointment = []

    @doctor_id = params[:doctor_id]
    patient = current_user.patient_id

    found_appointment = Appointment.exists?(patient_id: patient, doctor_id: @doctor_id)

    if Doctor.find(@doctor_id).appointments.count < 10 && !found_appointment

      @messages = "You have successfully registered"
      @appointment = Appointment.create!(patient_id: patient, doctor_id: @doctor_id)

    elsif found_appointment
      @messages = "You are already registered"
    else
      @messages = "Sorry, the doctor has no appointment today"
    end
    respond_to do |format|
      format.js { render partial: 'layouts/messages' }
    end
  end
end

class AppointmentsController < ApplicationController
  def create
    @messages = ''
    @doctor_id = params[:doctor_id]
    @appointment = []
    patient = current_user.patient_id
    found_appointment = Appointment.exists?(patient_id: patient, doctor_id: @doctor_id)

    if  Doctor.find(@doctor_id).appointments.count < 10 && !found_appointment
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

  def new
    @appointment = Appointment.new
  end

  def set_recommendation
    appa = Appointment.joins(:patient,:doctor).where(appointments:{patient_id:params[:patient_id],doctor_id:params[:doctor_id]}).update(recommendation:params[:recommendation],status:'off')[0]
  end
end

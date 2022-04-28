class AppointmentsController < ApplicationController
  def create
    patient = Patient.find_by(user_id: current_user.id).id
    if Doctor.find(params[:doctor_id]).appointments.count < 10
      Appointment.create!(patient_id: patient, doctor_id: params[:doctor_id])
    else
      print("no more than 10")
    end

    def new
      @appointment = Appointment.new
    end
  end
end

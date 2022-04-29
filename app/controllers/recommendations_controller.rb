class RecommendationsController < ApplicationController

  def create
    Patient.find(params[:patient_id]).recommendations.create!(recommendation:params[:recommendation],doctor_id:params[:doctor_id])
  end
end

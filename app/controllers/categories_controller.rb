class CategoriesController < ApplicationController
  def create
    @doctors_by_category = Doctor.left_joins(:categories).where(doctors: {category_id:params[:id]})
    respond_to do |format|
      format.js { render partial: 'layouts/doc' }
    end
  end
end

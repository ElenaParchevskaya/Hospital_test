class AddDoctorToRecommendation < ActiveRecord::Migration[7.0]
  def change
    add_reference :recommendations, :doctor,foreign_key: {to_table: :doctors}
  end
end

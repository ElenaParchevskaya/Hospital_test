class AddPatientToRecommendation < ActiveRecord::Migration[7.0]
  def change
    add_reference :recommendations,:patient, foreign_key: {to_table: :patients}
  end
end

class AddRecommendationToPatient < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :recommendation,foreign_key: {to_table: :recommendations}
  end
end

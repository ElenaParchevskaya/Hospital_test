class AddDoctorToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :doctor,foreign_key: {to_table: :doctors}
  end
end

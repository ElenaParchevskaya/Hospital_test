class AddPatientAndDoctorToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users,:patient,foreign_key: {to_table: :patients}
    add_reference :users,:doctor,foreign_key: {to_table: :doctors}
  end
end

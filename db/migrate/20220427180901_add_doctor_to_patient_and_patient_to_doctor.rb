class AddDoctorToPatientAndPatientToDoctor < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors,:patient,foreign_key: {to_table: :patients}
    add_reference :patients,:doctor,foreign_key: {to_table: :doctors}
  end
end

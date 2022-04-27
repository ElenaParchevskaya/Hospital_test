class AddPatientAndDoctorToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments,:patient,foreign_key: {to_table: :patients}
    add_reference :appointments,:doctor,foreign_key: {to_table: :doctors}
  end
end

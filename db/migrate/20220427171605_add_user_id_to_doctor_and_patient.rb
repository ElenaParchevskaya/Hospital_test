class AddUserIdToDoctorAndPatient < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :user, foreign_key: { to_table: :users }
    add_reference :patients, :user, foreign_key: { to_table: :users }
  end
end

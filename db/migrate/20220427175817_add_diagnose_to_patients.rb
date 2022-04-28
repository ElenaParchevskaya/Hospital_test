class AddDiagnoseToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :diagnose, :string
  end
end

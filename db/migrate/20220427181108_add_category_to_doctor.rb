class AddCategoryToDoctor < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :category, foreign_key: { to_table: :categories }
  end
end

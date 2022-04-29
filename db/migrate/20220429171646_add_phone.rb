class AddPhone < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :phone_number,:string
  end
end

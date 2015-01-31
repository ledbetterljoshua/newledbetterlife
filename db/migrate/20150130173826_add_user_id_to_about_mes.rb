class AddUserIdToAboutMes < ActiveRecord::Migration
  def change
    add_column :about_mes, :user_id, :integer
    add_index :about_mes, :user_id
  end
end

class AddOfficialToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :official, :boolean
  end
end

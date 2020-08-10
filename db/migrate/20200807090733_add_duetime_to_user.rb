class AddDuetimeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :duetime, :numeric
  end
end

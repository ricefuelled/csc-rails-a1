class AddStarttimeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :starttime, :numeric
  end
end

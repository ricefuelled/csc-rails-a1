class ChangeDataTypeForStarttime < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :starttime, :integer
  end
end

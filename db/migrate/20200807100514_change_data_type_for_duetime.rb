class ChangeDataTypeForDuetime < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :duetime, :integer
  end
end

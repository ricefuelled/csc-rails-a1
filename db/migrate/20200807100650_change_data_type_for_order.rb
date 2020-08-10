class ChangeDataTypeForOrder < ActiveRecord::Migration[6.0]
  def change    
    change_column :jobs, :order, :integer
  end
end

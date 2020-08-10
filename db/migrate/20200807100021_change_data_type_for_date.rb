class ChangeDataTypeForDate < ActiveRecord::Migration[6.0]
  def change    
    change_column :jobs, :date, :integer
  end
end

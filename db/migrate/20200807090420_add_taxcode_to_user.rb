class AddTaxcodeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :taxcode, :string
  end
end

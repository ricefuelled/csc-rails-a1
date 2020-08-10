class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.numeric :order
      t.string :staff
      t.numeric :date
      t.numeric :income
      t.string :description

      t.timestamps
    end
  end
end

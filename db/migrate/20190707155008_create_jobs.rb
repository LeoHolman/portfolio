class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :employer
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

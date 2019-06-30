class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :source
      t.date :completed_on
      t.integer :skill_id

      t.timestamps
    end
  end
end

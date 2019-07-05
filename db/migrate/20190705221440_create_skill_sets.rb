class CreateSkillSets < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_sets do |t|
      t.string :name

      t.timestamps
    end
  end
end

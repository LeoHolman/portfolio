class CreateSkillSetsSkillsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :skill_sets, :skills
  end
end

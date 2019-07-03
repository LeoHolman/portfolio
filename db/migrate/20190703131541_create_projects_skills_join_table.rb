class CreateProjectsSkillsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :projects, :skills
  end
end

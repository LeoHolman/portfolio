class AddLinkToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :project_link, :string
  end
end

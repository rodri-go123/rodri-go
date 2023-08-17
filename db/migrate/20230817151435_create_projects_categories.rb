class CreateProjectsCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_categories, id: false do |t|
      t.belongs_to :project
      t.belongs_to :category
    end
  end
end

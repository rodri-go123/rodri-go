class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :subtitle
      t.string :info
      t.text :picture
      t.text :body
      t.string :size

      t.timestamps
    end
  end
end

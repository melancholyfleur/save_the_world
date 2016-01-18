class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :passion_id
      t.string :name
      t.string :url
      t.text :summary

      t.timestamps null: false
    end
  end
end

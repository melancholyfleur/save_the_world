class CreatePassionResources < ActiveRecord::Migration
  def change
    create_table :passion_resources do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end

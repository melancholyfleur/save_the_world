class CreatePassions < ActiveRecord::Migration
  def change
    create_table :passions do |t|
      t.string :name
      t.text :summary

      t.timestamps null: false
    end
  end
end

class CreateLettersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |table|
      table.string :title
      table.text :content
      table.integer :pirate_id
    end
  end
end

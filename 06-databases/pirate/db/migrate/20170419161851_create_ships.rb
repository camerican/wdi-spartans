class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |table|
      table.string :name
    end

    create_table :pirate_ships do |table|
      table.integer :pirate_id
      table.integer :ship_id
    end
  end
end

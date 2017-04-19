class CreatePiratesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :pirates do |table|
      table.string :name
    end
  end
end

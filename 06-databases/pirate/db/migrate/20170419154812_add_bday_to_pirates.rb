class AddBdayToPirates < ActiveRecord::Migration[5.0]
  def change
    add_column :pirates, :bday, :string
  end
end

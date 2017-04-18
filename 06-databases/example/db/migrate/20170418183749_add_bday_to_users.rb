class AddBdayToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bday, :datetime
  end
end

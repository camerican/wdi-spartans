class CreateUsersTable < ActiveRecord::Migration[5.0]
  def change
    # changes to db
    # creates new user table
    create_table :users do |table|
      table.string :fname
      table.string :lname
    end
  end
end

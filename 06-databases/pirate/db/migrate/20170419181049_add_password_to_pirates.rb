class AddPasswordToPirates < ActiveRecord::Migration[5.0]
  def change
    add_column :pirates, :password, :string
  end
end

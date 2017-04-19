class ChangeBdayToDatetime < ActiveRecord::Migration[5.0]
  def change
    change_column :pirates, :bday, :datetime
  end
end

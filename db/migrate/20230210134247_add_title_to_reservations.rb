class AddTitleToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :title, :string
    add_column :reservations, :content, :text
    add_column :reservations, :start_time, :datetime
  end
end

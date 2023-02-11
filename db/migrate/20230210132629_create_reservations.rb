class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.integer :number
      t.integer :table
      t.date :date
      t.time :time
      t.string :tel
      t.text :description

      t.timestamps
    end
  end
end

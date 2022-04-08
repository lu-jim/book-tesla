class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :car, index: true, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end

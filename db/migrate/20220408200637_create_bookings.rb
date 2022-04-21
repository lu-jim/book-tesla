class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :car, index: true, foreign_key: { to_table: 'cars' }
      t.references :user, index: true, foreign_key: { to_table: 'users' }
      t.string :location
      t.datetime :date
    end
  end
end

class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_join_table :cars, :users, table_name: :bookings do |t|
      t.index %i[car_id user_id]
      t.index %i[user_id car_id]
      t.string :location
      t.datetime :date
    end
  end
end

class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :city
      t.text :image_link
      t.boolean :deleted

      t.timestamps
    end
  end
end

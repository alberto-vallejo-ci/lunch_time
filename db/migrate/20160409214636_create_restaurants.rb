class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address
      t.string :telephone
      t.decimal :average_rate, null: false, defautl: 0, precision: 18, scale: 6
      t.decimal :average_cost, null: false, defautl: 0, precision: 18, scale: 6
      t.text :comments
      t.timestamps
    end
  end
end

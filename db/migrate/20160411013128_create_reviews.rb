class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.decimal :cost, null: false
      t.decimal :rate, null: false
      t.text :comments
      t.string :name
      t.references :restaurant

      t.timestamps
    end
  end
end

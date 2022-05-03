class CreateCaronas < ActiveRecord::Migration[6.1]
  def change
    create_table :caronas do |t|
      t.references :users, null: false, foreign_keys: true
      t.string :departure
      t.string :arrival
      t.integer :price
      t.integer :passengers
      t.datetime :date
      t.string :comments

      t.timestamps
    end
  end
end

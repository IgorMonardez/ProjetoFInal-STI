class CreateCaronas < ActiveRecord::Migration[6.1]
  def change
    create_table :caronas do |t|
      t.string :departure
      t.string :arrival
      t.integer :price
      t.integer :passengers
      t.date :date
      t.datetime :hour
      t.string :comments

      t.timestamps
    end
  end
end

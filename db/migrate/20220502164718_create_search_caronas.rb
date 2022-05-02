class CreateSearchCaronas < ActiveRecord::Migration[6.1]
  def change
    create_table :search_caronas do |t|
      t.string :departure
      t.string :arrival

      t.timestamps
    end
  end
end

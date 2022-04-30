class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :login
      t.boolean :active, default: true

      t.timestamps
    end
  end
end

class CreateAlunos < ActiveRecord::Migration[6.1]
  def change
    create_table :admin do |t|
      t.string :nome
      t.integer :iduff
      t.boolean :active, default: true

      t.timestamps
    end
  end
end

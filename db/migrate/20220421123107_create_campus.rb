class CreateCampus < ActiveRecord::Migration[6.1]
  def change
    create_table :campus do |t|
      t.string :nome
      t.string :endereco
      t.integer :numero
      t.string :bairro
      t.integer :cep

      t.timestamps
    end
  end
end

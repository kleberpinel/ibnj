class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :nascimento
      t.integer :sexo
      t.integer :numero
      t.string :complemento
      t.string :telefone

      t.references :rua

      t.timestamps
    end
  end
end

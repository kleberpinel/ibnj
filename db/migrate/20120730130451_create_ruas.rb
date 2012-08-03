class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome
      t.string :cep
      t.string :bairro
      t.string :ponto_de_referencia

      t.timestamps
    end
  end
end

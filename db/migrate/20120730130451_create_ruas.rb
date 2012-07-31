class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome
      t.string :ponto_de_referencia

      t.references :bairro

      t.timestamps
    end
  end
end

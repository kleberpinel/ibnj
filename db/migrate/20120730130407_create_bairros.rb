class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.string :nome
      t.string :cidade
      t.string :ponto_de_referencia

      t.timestamps
    end
  end
end

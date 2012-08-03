class CreateEntrevistadores < ActiveRecord::Migration
  def change
    create_table :entrevistadores do |t|
		t.references :pesquisa, :pessoa

		t.timestamps
    end
  end
end

class CreatePesquisas < ActiveRecord::Migration
  def change
    create_table :pesquisas do |t|
		t.string :nome

		t.timestamps
    end
  end
end

class CreateEntrevistas < ActiveRecord::Migration
  def change
    create_table :entrevistas do |t|
		t.integer :estado_encontrado
		t.string :necessidade_comunidade
		t.string :religiao
		t.integer :frequencia_reunioes
		t.boolean :tem_bilia
		t.boolean :costuma_ler
		t.boolean :necessidade_conhecer_deus
		t.boolean :anteriomente_igreja_evangelica
		t.boolean :estudo_biblico_casa
		t.string :opcao1_horario
		t.string :opcao2_horario
		t.boolean :certeza_vida_eterna_ceu
		t.string :pq_entrar_no_ceu
		t.text :obs
		t.date :data_pesquisa

		t.references :entrevistado
		t.references :pesquisa

      t.timestamps
    end
  end
end

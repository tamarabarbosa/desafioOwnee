class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.string :nome
      t.genero :genero_filme
      t.float :preco_de_locacao

      t.timestamps
    end
  end
end

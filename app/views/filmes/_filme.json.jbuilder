json.extract! filme, :id, :nome, :genero_filme, :preco_de_locacao, :created_at, :updated_at
json.url filme_url(filme, format: :json)

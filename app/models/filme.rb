class Filme < ApplicationRecord
  belongs_to :genero, :foreign_key => :genero_id, class_name: 'Genero'
  validates :nome, :genero, :preco_de_locacao, presence: true
end

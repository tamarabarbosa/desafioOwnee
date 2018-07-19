class Filme < ApplicationRecord
  belongs_to :genero, :foreign_key => :genero_id, class_name: 'Genero'
end

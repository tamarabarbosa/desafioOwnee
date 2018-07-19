class Genero < ApplicationRecord
    include Authority::UserAbilities
  has_many :filme
  resourcify
end

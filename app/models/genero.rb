class Genero < ApplicationRecord
    include Authority::UserAbilities
  has_many :filme, dependent: :destroy
  resourcify
end

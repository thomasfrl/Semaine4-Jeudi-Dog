class Chien < ApplicationRecord
    belongs_to :city
    has_many :table_join_dog_strolls
    has_many :strolls, through: :table_join_dog_strolls
    has_many :dog_sitters, through: :strolls
end

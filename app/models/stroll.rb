class Stroll < ApplicationRecord
    has_many :table_join_dog_strolls 
    has_many :chiens, through: :table_join_dog_strolls
    belongs_to :dog_sitter
end

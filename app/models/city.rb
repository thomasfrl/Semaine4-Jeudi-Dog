class City < ApplicationRecord
    has_many :dog_sitters
    has_many :chiens
end

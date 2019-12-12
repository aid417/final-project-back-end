class Category < ApplicationRecord
    has_many :users, through: :merges
    has_many :merges
end

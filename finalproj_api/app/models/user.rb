class User < ApplicationRecord
    has_many :categories, through: :merges
    has_many :merges
    has_many :articles
end

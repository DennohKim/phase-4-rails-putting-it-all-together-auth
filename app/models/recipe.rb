class Recipe < ApplicationRecord

    # Validations
    validates :title, presence: true
    validates :instructions, presence: true, length: {minimum: 50}

    # Relationship
    belongs_to :user
end

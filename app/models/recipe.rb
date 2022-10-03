class Recipe < ApplicationRecord

    # Validations
    validates :title, presence: true
    validates :instructions, {:length => {:minimum => 50}}

    # Relationship
    belongs_to :user
end
